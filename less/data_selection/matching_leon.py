import argparse
import os

import torch

argparser = argparse.ArgumentParser(
    description='Script for selecting the data for training')
argparser.add_argument('--gradient_path', type=str, default="{} ckpt{}",
                       help='The path to the gradient file')
argparser.add_argument('--target_task_file', type=str,)
argparser.add_argument('--validation_gradient_path', type=str,
                       default="{} ckpt{}", help='The path to the validation gradient file')
argparser.add_argument('--output_path', type=str, default="selected_data",
                       help='The path to the output')
argparser.add_argument('--target_task_name', type=str, default="code")


args = argparser.parse_args()

device = torch.device("cuda" if torch.cuda.is_available() else "cpu")


def calculate_influence_score(training_info: torch.Tensor, validation_info: torch.Tensor):
    """Calculate the influence score.

    Args:
        training_info (torch.Tensor): training info (gradients/representations) stored in a tensor of shape N x N_DIM
        validation_info (torch.Tensor): validation info (gradients/representations) stored in a tensor of shape N_VALID x N_DIM
    """
    # N x N_VALID
    influence_scores = torch.matmul(
        training_info, validation_info.transpose(0, 1))
    return influence_scores

influence_score = 0
if os.path.isdir(args.validation_gradient_path):
    validation_path = os.path.join(args.validation_gradient_path, "all_orig.pt")
validation_info = torch.load(validation_path)

if not torch.is_tensor(validation_info):
    validation_info = torch.tensor(validation_info)
validation_info = validation_info.to(device).float()
print(f"val {validation_info.shape}")

if os.path.isdir(args.gradient_path):
    gradient_path = os.path.join(args.gradient_path, "all_orig.pt")
training_info = torch.load(gradient_path)

if not torch.is_tensor(training_info):
    training_info = torch.tensor(training_info)
training_info = training_info.to(device).float()

influence_score = calculate_influence_score(
        training_info=training_info, validation_info=validation_info)

influence_score = influence_score.reshape(
    influence_score.shape[0], validation_info.shape[0], -1).mean(-1).max(-1)[0]
output_dir = os.path.join(args.output_path, args.target_task_name)
if not os.path.exists(output_dir):
    os.makedirs(output_dir)
output_file = os.path.join(
    args.output_path, args.target_task_name, f"influence_score.pt")
torch.save(influence_score, output_file)
print("Saved influence score to {}".format(output_file))

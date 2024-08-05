source eval_mmlu.sh
source eval_tydiqa.sh
source eval_bbh.sh
source eval.sh
source eval_gsm8k.sh
export n=/mnt/bn/data-tns-live-llm/leon/datasets/

mdir=/mnt/bn/data-tns-live-llm/leon/datasets/llama-3-8b-bnb-4bit
eval_mmlu $mdir
result=$(extract_mmlu $mdir)
echo "Evaluation result: $result"

mdir=/mnt/bn/data-tns-live-llm/leon/datasets/fed/pos_med_20000_fedavg_c10s2_i10_b16a2_l2048_r32a64_f0
eval_mmlu $mdir
result=$(extract_mmlu $mdir)
echo "Evaluation result: $result"

# eval_tydiqa $mdir
# result=$(extract_tydiqa $mdir)
# echo "Evaluation result: $result"

# eval_bbh $mdir
# result=$(extract_bbh $mdir)
# echo "Evaluation result: $result"

# eval_gsm8k $mdir
# result=$(extract_gsm8k $mdir)
# echo "Evaluation result: $result"

mdir=/mnt/bn/data-tns-live-llm/leon/datasets/fed/neg_med_20000_fedavg_c10s2_i10_b16a2_l2048_r32a64_f0
eval_mmlu $mdir
result=$(extract_mmlu $mdir)
echo "Evaluation result: $result"

# eval_tydiqa $mdir
# result=$(extract_tydiqa $mdir)
# echo "Evaluation result: $result"

# eval_bbh $mdir
# result=$(extract_bbh $mdir)
# echo "Evaluation result: $result"

# eval_gsm8k $mdir
# result=$(extract_gsm8k $mdir)
# echo "Evaluation result: $result"

mdir=/mnt/bn/data-tns-live-llm/leon/datasets/fed/random_med_20000_fedavg_c10s2_i10_b16a2_l2048_r32a64_f0
eval_mmlu $mdir
result=$(extract_mmlu $mdir)
echo "Evaluation result: $result"

# eval_tydiqa $mdir
# result=$(extract_tydiqa $mdir)
# echo "Evaluation result: $result"

# eval_bbh $mdir
# result=$(extract_bbh $mdir)
# echo "Evaluation result: $result"

# eval_gsm8k $mdir
# result=$(extract_gsm8k $mdir)
# echo "Evaluation result: $result"

mdir=/mnt/bn/data-tns-live-llm/leon/datasets/fed/iid2niid_med_20000_fedavg_c10s2_i10_b16a2_l2048_r32a64_f0
eval_mmlu $mdir
result=$(extract_mmlu $mdir)
echo "Evaluation result: $result"

# eval_gsm8k $mdir
# result=$(extract_gsm8k $mdir)
# echo "Evaluation result: $result"
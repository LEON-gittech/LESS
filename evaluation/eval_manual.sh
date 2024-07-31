source eval_mmlu.sh
source eval_tydiqa.sh
source eval_bbh.sh
source eval.sh
source eval_gsm8k.sh
export n=/mnt/bn/data-tns-live-llm/leon/datasets/

mdir=/mnt/bn/data-tns-live-llm/leon/datasets/fed/niid_med_0.01_20000_fedavg_c10s2_i20_b16a1_l2048_r128a256_f0
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

mdir=/mnt/bn/data-tns-live-llm/leon/datasets/fed/niid_med_0.1_20000_fedavg_c10s2_i20_b16a1_l2048_r128a256_f0
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

mdir=/mnt/bn/data-tns-live-llm/leon/datasets/fed/niid_med_1_20000_fedavg_c10s2_i20_b16a1_l2048_r128a256_f0
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

mdir=/mnt/bn/data-tns-live-llm/leon/datasets/fed/niid_med_10_20000_fedavg_c10s2_i20_b16a1_l2048_r128a256_f0
eval_mmlu $mdir
result=$(extract_mmlu $mdir)
echo "Evaluation result: $result"

# eval_gsm8k $mdir
# result=$(extract_gsm8k $mdir)
# echo "Evaluation result: $result"
source eval_mmlu.sh
source eval_tydiqa.sh
source eval_bbh.sh
source eval.sh
mdir=/mnt/bn/data-tns-live-llm/leon/datasets/Meta-Llama-3-8B-Instruct/
# eval_mmlu $mdir
# result=$(extract_mmlu $mdir)
# echo "Evaluation result: $result"

# eval_tydiqa $mdir
# result=$(extract_tydiqa $mdir)
# echo "Evaluation result: $result"

eval_bbh $mdir
result=$(extract_bbh $mdir)
echo "Evaluation result: $result"
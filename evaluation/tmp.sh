source eval_mmlu.sh
source eval_tydiqa.sh
source eval_bbh.sh
source eval.sh
source eval_gsm8k.sh
export n=/mnt/bn/data-tns-live-llm/leon/datasets/

mdir=/mnt/bn/data-tns-live-llm/leon/datasets/fed/niid_pos_public_20000_fedavg_c10s2_i10_b16a2_l2048_r16a16
eval_gsm8k $mdir
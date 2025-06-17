#!/usr/bin/env bash
TASKS=(cola sst2 mrpc qqp stsb mnli qnli rte wnli)
for TASK in "${TASKS[@]}"; do
  python train_glue.py --task_name "$TASK" --output_dir "./outputs/${TASK}"
done
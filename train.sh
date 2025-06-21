#!/usr/bin/env bash
TASKS=(cola sst2 mrpc qqp stsb mnli qnli rte wnli)
start=${1:-}        # empty -> run everything
skip=true           # skip until we hit $start
[ -z "$start" ] && skip=false

for task in "${TASKS[@]}"; do
  if $skip; then
    [[ $task == "$start" ]] && skip=false || continue
  fi
  echo "Training $task"
  python train.py --task_name "$task" --output_dir "./outputs/$task"
done

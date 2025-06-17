# BERT-GLUE Fine-Tuning

Fast, reproducible fine-tuning of BERT-family models on the nine core GLUE tasks.

## Installation

```bash
pip install torch transformers datasets evaluate
```

## Single-task run

```bash
python train_glue.py --task_name sst2 --output_dir ./outputs/sst2
```

## All tasks

```bash
bash run_all.sh
```


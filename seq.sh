#!/bin/bash
#SBATCH --job-name=seq
#SBATCH --partition=gpu
#SBATCH --nodelist=gpu-1-6
#SBATCH -N 1
#SBATCH --mail-type=all
#SBATCH --mail-user=2059433635@qq.com
#SBATCH --output=/home/dkjiang/log/seq.out
#SBATCH --error=/home/dkjiang/log/seq.err
#SBATCH --gres=gpu:1
export PYTORCH_CUDA_ALLOC_CONF=expandable_segments:True
python -m casanovo.casanovo sequence -o loop1.mztab -m /home/dkjiang/model1/epoch=0-step=2000.ckpt loong.mgf

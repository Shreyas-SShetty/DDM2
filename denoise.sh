#!/bin/bash
#SBATCH --job-name=denoise_step
#SBATCH --account=cminds_anandi
#SBATCH --partition=cn3_l40s
#SBATCH --gres=gpu:1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=64G
#SBATCH --time=04:00:00
#SBATCH --output=logs/%x_%j.out
#SBATCH --error=logs/%x_%j.err

# 1. Load your conda environment
source ~/miniconda3/etc/profile.d/conda.sh
conda activate ddm2

# 2. Move to your working directory
cd ~/DDM2

# 3. Run the Stage 1 training script
python3 denoise.py -c config/hardi_150.json --save

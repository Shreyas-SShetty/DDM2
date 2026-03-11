#!/bin/bash
#SBATCH --job-name=ddm2_stage3
#SBATCH --account=cminds_anandi
#SBATCH --partition=cn3_l40s
#SBATCH --gres=gpu:1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=128G
#SBATCH --time=05:00:00
#SBATCH --output=logs/%x_%j.out
#SBATCH --error=logs/%x_%j.err

# 1. Load your conda environment
source ~/miniconda3/etc/profile.d/conda.sh
conda activate ddm2

# 2. Move to your working directory
cd ~/DDM2

# 3. Run the Stage 3 training script
##### PLEASE UPDTAE CONFIGURE FILE BEFORE EXCUTING THIS SCRIPT #####
python3 train_diff_model.py -p train -c config/hardi_150.json
##### PLEASE UPDTAE CONFIGURE FILE BEFORE EXCUTING THIS SCRIPT #####

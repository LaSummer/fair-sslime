#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH -t10:00:00
#SBATCH --mem=5GB
#SBATCH --mail-type=END
#SBATCH --mail-user=zl2521@nyu.edu
#SBATCH --job-name=unsupervised
#SBATCH --gres=gpu:1

module purge
source activate ssl-framework

python tools/train.py --config_file extra_scripts/no_unsupervised.yaml
#ipython tools/train.py --config_file extra_scripts/unsupervised_vgg_a_rotation_stl_10.yaml
#python tools/train.py --config_file extra_scripts/eval_vgg_a_rotation_stl_10.yaml


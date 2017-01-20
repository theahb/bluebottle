#!/bin/sh
#
#SBATCH --partition=gpu
#SBATCH --time=0:30:0
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=6
#SBATCH --gres=gpu:1
#SBATCH --job-name=bbtl
#SBATCH --mail-type=ALL
#SBATCH --mail-user=aharve14@jhu.edu
#SBATCH --output=bbtl.out

export LD_LIBRARY_PATH=/home-1/class-2@jhu.edu/deps/cgns/lib:/home-1/class-2@jhu.edu/deps/hdf5/lib:$LD_LIBRARY_PATH

srun ./bluebottle


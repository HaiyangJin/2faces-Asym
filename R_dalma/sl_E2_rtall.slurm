#!/bin/bash
#SBATCH --job-name=cf_asym2
#SBATCH -n 1 # number of tasks
#SBTACH --workdir=/scratch/hj23/cf_asym/
#SBATCH --time=6:00:00
#SBATCH --mail-type=end  # ALL     start,end
#SBATCH --mail-user=haiyang.jin@nyu.edu
#SBATCH -o job.%J.out  

# remove all loaded module
module purge

# use R with Conda
source /scratch/hj23/miniconda3/bin/activate
conda activate R

# run the R script
Rscript lmm_E2_rtall_dalma.R

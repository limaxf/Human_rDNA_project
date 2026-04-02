#!/bin/bash
#SBATCH --job-name=neat
#SBATCH --output=CS.out
#SBATCH --error=CS.err
#SBATCH --verbose
#SBATCH --array=1
#SBATCH --time=40:00:00
#SBATCH --nodes=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=36GB
#SBATCH --mail-type=END
#SBATCH --mail-user=

#module purge
#module load
module purge
#module load samtools/intel/1.14



singularity exec --nv \
            --overlay /scratch/###/pytorch-example/overlay-15GB-500K.ext3:rw \
            /scratch/work/public/singularity/cuda11.6.124-cudnn8.4.0.27-devel-ubuntu20.04.4.sif\
            /bin/bash -c "source /ext3/env.sh;conda activate py27; python neat-genreads/utilities/genSeqErrorModel.py -i /scratch/####/ERR3240249_1.fastq -i2 /scratch/####/ERR3240249_2.fastq -o seq_error.p" 

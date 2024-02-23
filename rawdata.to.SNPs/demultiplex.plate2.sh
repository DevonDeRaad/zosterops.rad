#!/bin/sh
#
#SBATCH --job-name=process.radtags            # Job Name
#SBATCH --nodes=1              #nodes
#SBATCH --ntasks-per-node=1             #CPU allocation per Task
#SBATCH --partition=bi          # Name of the Slurm partition used
#SBATCH --chdir=/home/d669d153/work/zosterops.rad/      # Set working d$
#SBATCH --mem-per-cpu=5gb            # memory requested
#SBATCH --time=1000             #time requested in minutes

#-p specifies the input folder where the raw data is
#-o specifies the output data to write individual sample fastq files to
#-b specifies sample barcodes
#-e specifies the enzyme used, so that process_radtags can look for the correct RAD cutsite
#-c,--clean — clean data, remove any read with an uncalled base.
#-q,--quality — discard reads with low quality scores.
#-r,--rescue — rescue barcodes and RAD-Tag cut sites.
/home/d669d153/work/stacks-2.3b/process_radtags -p plate2 -o fastq -b plate2.barcodes.txt -e ndeI -r -c -q

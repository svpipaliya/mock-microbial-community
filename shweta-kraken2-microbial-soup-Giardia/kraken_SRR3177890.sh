#!/bin/bash
#SBATCH --comment=kraken-test
#SBATCH --time=01:00:00
#SBATCH --account=def-dacks
#SBATCH --nodes=1 ### Must be 1
#SBATCH --ntasks-per-node=16
#SBATCH --mem-per-cpu=5000M
#SBATCH --output=output.%j.kraken-SRR3177890
#SBATCH --mail-user=pipaliya@ualberta.ca

module load gcc/7.3.0
module load nixpkgs/16.09
module load kraken2/2.0.8-beta

kraken2 -db kraken2-microbial-soup-giardia --threads 16 --report SRR3177890.fastq.report --unclassified-out SRR3177890.fastqunclassified#.fq --classified-out SRR3177890.fastq.fastqclassified#.fq --paired /home/pip17/scratch/giardia_pop_genomics/paired_reads_all_projects/SRR3177890/SRR3177890_1.fastq /home/pip17/scratch/giardia_pop_genomics/paired_reads_all_projects/SRR3177890/SRR3177890_2.fastq > SRR3177890.fastq.Kraken.out
#end
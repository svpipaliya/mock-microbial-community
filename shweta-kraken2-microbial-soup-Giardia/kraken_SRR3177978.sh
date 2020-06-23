#!/bin/bash
#SBATCH --comment=kraken-test
#SBATCH --time=01:00:00
#SBATCH --account=def-dacks
#SBATCH --nodes=1 ### Must be 1
#SBATCH --ntasks-per-node=16
#SBATCH --mem-per-cpu=5000M
#SBATCH --output=output.%j.kraken-SRR3177978
#SBATCH --mail-user=pipaliya@ualberta.ca

module load gcc/7.3.0
module load nixpkgs/16.09
module load kraken2/2.0.8-beta

kraken2 -db kraken2-microbial-soup-giardia --threads 16 --report SRR3177978.fastq.report --unclassified-out SRR3177978.fastqunclassified#.fq --classified-out SRR3177978.fastq.fastqclassified#.fq --paired /home/pip17/scratch/giardia_pop_genomics/paired_reads_all_projects/SRR3177978/SRR3177978_1.fastq /home/pip17/scratch/giardia_pop_genomics/paired_reads_all_projects/SRR3177978/SRR3177978_2.fastq > SRR3177978.fastq.Kraken.out
#end
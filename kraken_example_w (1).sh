#!/bin/bash
#SBATCH --comment=kraken-test
#SBATCH --time=01:00:00
#SBATCH --account=def-dacks
#SBATCH --nodes=1 ### Must be 1
#SBATCH --ntasks-per-node=16
#SBATCH --mem-per-cpu=20000M
#SBATCH --output=output.%j.kraken-test
#SBATCH --mail-user=pipaliya@ualberta.ca

module load gcc/7.3.0
module load nixpkgs/16.09
module load kraken2/2.0.7-beta

kraken2 -db kraken2-microbial-fatfree --threads 16 --report SRR3178018.fastq.report --unclassified-out SRR3178018.fastqunclassified#.fq --classified-out SRR3178018.fastq.fastqclassified#.fq --paired SRR3178018_1.fastq SRR3178018_2.fastq > SRR3178018.fastq.Kraken.out
#end
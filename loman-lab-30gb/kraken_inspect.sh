#!/bin/bash
#SBATCH --comment=kraken-test
#SBATCH --time=01:00:00
#SBATCH --account=def-dacks
#SBATCH --nodes=1 ### Must be 1
#SBATCH --cpus-per-task=16
#SBATCH --mem-per-cpu=10000M
#SBATCH --output=output.%j.kraken-test
#SBATCH --mail-user=pipaliya@ualberta.ca

module load gcc/7.3.0
module load nixpkgs/16.09
module load openmpi/3.1.2
module load kraken2/2.0.7-beta

kraken2-inspect -db kraken2-microbial-fatfree 

#end
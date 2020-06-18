#!/bin/bash
#SBATCH --comment=kraken-test
#SBATCH --time=1:00:00
#SBATCH --account=def-dacks
#SBATCH --nodes=1 ### Must be 1
#SBATCH --ntasks-per-node=16
#SBATCH --mem-per-cpu=20000M
#SBATCH --output=output.%j.kraken-test
#SBATCH --mail-user=pipaliya@ualberta.ca

module load gcc/7.3.0
module load nixpkgs/16.09
module load kraken2/2.0.8-beta

kraken2-build --build --db kraken2-microbial-soup-giardia --clean

#end
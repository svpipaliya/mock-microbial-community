#!/bin/bash
#SBATCH --comment=kraken-test
#SBATCH --time=30:00:00
#SBATCH --account=def-dacks
#SBATCH --nodes=1 ### Must be 1
#SBATCH --ntasks-per-node=16
#SBATCH --mem-per-cpu=20000M
#SBATCH --output=output.%j.kraken-test
#SBATCH --mail-user=pipaliya@ualberta.ca

module load gcc/7.3.0
module load nixpkgs/16.09
module load kraken2/2.0.8-beta

kraken2-build --download-library bacteria --db kraken2-microbial-soup-giardia --use-ftp
kraken2-build --download-library human --db kraken2-microbial-soup-giardia --use-ftp
kraken2-build --download-library fungi --db kraken2-microbial-soup-giardia --use-ftp
kraken2-build --download-library protozoa --db kraken2-microbial-soup-giardia --use-ftp
kraken2-build --download-library UniVec_Core --db kraken2-microbial-soup-giardia --use-ftp
kraken2-build --add-to-library Gmuris_unplaced.scaf.fa --db kraken2-microbial-soup-giardia
kraken2-build --add-to-library Gmuris_chr5.fa --db kraken2-microbial-soup-giardia
kraken2-build --add-to-library Gmuris_chr4.fa --db kraken2-microbial-soup-giardia
kraken2-build --add-to-library Gmuris_chr3.fa --db kraken2-microbial-soup-giardia
kraken2-build --add-to-library Gmuris_chr2.fa --db kraken2-microbial-soup-giardia
kraken2-build --add-to-library Gmuris_chr1.fa --db kraken2-microbial-soup-giardia
kraken2-build --add-to-library GLP15_GCA_000182665.1_ASM18266v1_genomic.fa --db kraken2-microbial-soup-giardia
kraken2-build --add-to-library GCA_001543975.1_G_duodenalis_AssB_BAH15c1_genomic.fa --db kraken2-microbial-soup-giardia
kraken2-build --add-to-library GCA_001493575.1_GIAS175_genomic.fa --db kraken2-microbial-soup-giardia
kraken2-build --add-to-library GL_GSM_INSDC_GCA_000182405.1_ASM18240v1_genomic.fa --db kraken2-microbial-soup-giardia
kraken2-build --add-to-library GCA_000498735.1_ASM49873v1_genomic.fa --db kraken2-microbial-soup-giardia
kraken2-build --add-to-library GLISS17_GCA_009192805.1_ASM919280v1_genomic.fa --db kraken2-microbial-soup-giardia
kraken2-build --add-to-library GL_ZX15GCA_009192825.1_ASM919282v1_genomic.fa --db kraken2-microbial-soup-giardia
kraken2-build --add-to-library GL_WB_2020_GCA_011634545.1_ASM1163454v1_genomic.fa --db kraken2-microbial-soup-giardia
kraken2-build --add-to-library GCA_011634595.1_ASM1163459v1_genomic.fa --db kraken2-microbial-soup-giardia
kraken2-build --add-to-library GL2_ref_2019_unplaced.scaf.fa --db kraken2-microbial-soup-giardia
kraken2-build --add-to-library GL2_ref_2019_chr5.fa --db kraken2-microbial-soup-giardia
kraken2-build --add-to-library GL2_ref_2019_chr4.fa --db kraken2-microbial-soup-giardia
kraken2-build --add-to-library GL2_ref_2019_chr3.fa --db kraken2-microbial-soup-giardia
kraken2-build --add-to-library GL2_ref_2019_chr2.fa --db kraken2-microbial-soup-giardia
kraken2-build --add-to-library GL2_ref_2019_chr1.fa --db kraken2-microbial-soup-giardia
kraken2-build --build --db kraken2-microbial-soup-giardia

#end
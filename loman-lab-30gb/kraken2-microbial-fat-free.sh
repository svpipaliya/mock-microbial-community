#!/usr/bin/env bash

# bash script to install Loman-Lab 30gb Refseq microbial community dataset - updated September 2018 (see : https://lomanlab.github.io/mockcommunity/mc_databases.html)
# IMPORTANT BEFORE YOU PULL - inspect the 'kraken2-inspect-fat-free.csv' first to examine whether your species is represented in the dataset
# May need to download the maxi-kraken dataset (140gb) instead (see below) or worse, build your own (not hard but not trivial, will upload instructions soon)

mkdir kraken2-microbial-fatfree/
cd kraken2-microbial-fatfree/
wget -c https://refdb.s3.climb.ac.uk/kraken2-microbial/hash.k2d
wget https://refdb.s3.climb.ac.uk/kraken2-microbial/opts.k2d
wget https://refdb.s3.climb.ac.uk/kraken2-microbial/taxo.k2d

# build maxi-kraken database (if not needed, add hash before all lines)

mkdir maxikraken2_1903_140GB/
cd maxikraken2_1903_140GB/
wget -c https://refdb.s3.climb.ac.uk/maxikraken2_1903_140GB/hash.k2d
wget https://refdb.s3.climb.ac.uk/maxikraken2_1903_140GB/opts.k2d
wget https://refdb.s3.climb.ac.uk/maxikraken2_1903_140GB/taxo.k2d

#end
#!/bin/bash

#SBATCH --mem=32G
#SBATCH --time=8:00:00


# run with scRNA_env activated

RANK_PVAL_FILENAME="../data/ranked_genes"

# produces ranked gene .h5ad
python 0.constructPPI.py \
	-rank True \
	-rank_pval_filename $RANK_PVAL_FILENAME


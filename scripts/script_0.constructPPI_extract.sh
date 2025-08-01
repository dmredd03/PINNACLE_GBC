#!/bin/bash

#SBATCH --mem=32G
#SBATCH --time=8:00:00


# run with scRNA_env activated

RANK_PVAL_FILENAME="../data/ranked_genes"
CELLTYPE_PPI_FILENAME=$(python -c "import data_config; print(data_config.PPI_DIR)")
ANNOTATION_COL="full_clustering"

# produces ranked gene .h5ad
python 0.constructPPI.py \
	-rank False \
	-rank_pval_filename "$RANK_PVAL_FILENAME" \
	-celltype_ppi_filename "$CELLTYPE_PPI_FILENAME"



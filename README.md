### Scripts for reproducing TLR4 zebrafish analysis

#### Results of analysis reported in:
Loes AN, Hinman MN, Farnsworth DR, Miller AC, Guillemin K, Harms MJ
**Identification and characterization of zebrafish Tlr4 co-receptor Md-2**
https://www.biorxiv.org/content/10.1101/817528v1

#### Prerequisites: 
+ binaries
    + makeblastdb 
+ python libraries
    + numpy
    + scipy
    + pandas
    + jupyter
    + phylopandas
    + phylogenetics
    + descartes
    + shapely

#### Run in the following order
+ `00_run-me.sh`: download relevant genomes from NCBI and convert to blast databases.
+ `01_blast-genomes.ipynb`: BLAST all genomes with regions surrounding human and zebraafish TLR4
+ `02_characterize-genomic-context.ipynb`: Generate plots of hit vs. genome position

#### Files related to analysis:
+ `files/md1-and-md2.csv`: Spreadsheet containing accession numbers and aligned sequences for Md-1 and Md-2 phylogenetics.
+ `files/cd180-and-tlr4.csv`: Spreadsheet containing accession numbers and aligned sequences for CD180 and TLR4 phylogenetics.
+ `files/ly96-gene-locations.xlsx`: Gene locations for ly96 synteny analysis 
+ `files/genomes-for-tlr4-synteny.xlsx`: Genomes used for tlr4 synteny analysis
+ `files/human-and-tlr4-genes.xlsx`: Genes used to BLAST for human vs. zebrafish Tlr4 genomic context
+ `synteny-results/`: PDF files showing running average of e-value along genomes

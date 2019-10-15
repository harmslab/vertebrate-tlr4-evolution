#!/bin/bash

# Download reference sequences
mkdir reference
cd reference
wget ftp://ftp.ensembl.org/pub/release-97/fasta/homo_sapiens/pep/Homo_sapiens.GRCh38.pep.all.fa.gz
gunzip Homo_sapiens.GRCh38.pep.all.fa.gz
wget ftp://ftp.ensembl.org/pub/release-97/fasta/danio_rerio/pep/Danio_rerio.GRCz11.pep.all.fa.gz
gunzip Danio_rerio.GRCz11.pep.all.fa.gz
cd ..

# Download individual genomes and make blast databases
bash _download-and-makeblastdb.sh bambooshark GCA_004010195.1_ASM401019v1 004/010/195 
bash _download-and-makeblastdb.sh homo GCA_000001405.28_GRCh38.p13 000/001/405
bash _download-and-makeblastdb.shgallus GCA_000002315.5_GRCg6a 000/002/315
bash _download-and-makeblastdb.shxenopus GCA_000004195.3_Xenopus_tropicalis_v9.1 000/004/195
bash _download-and-makeblastdb.shlepisosteus GCA_000242695.1_LepOcu1 000/242/695
bash _download-and-makeblastdb.shbonytongue GCA_900964775.1_fSclFor1.1 900/964/775 
bash _download-and-makeblastdb.shictalurus GCA_001660625.1_IpCoco_1.2 001/660/625
bash _download-and-makeblastdb.shdanio GCA_000002035.4_GRCz11 000/002/035
bash _download-and-makeblastdb.shesox GCA_004634155.1_Eluc_v4 004/634/155
bash _download-and-makeblastdb.shgadus GCA_902167405.1_gadMor3.0 902/167/405
bash _download-and-makeblastdb.shtakifugu GCA_901000725.2_fTakRub1.2 901/000/725

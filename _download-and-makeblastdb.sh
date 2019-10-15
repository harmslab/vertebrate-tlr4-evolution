
# Download reference sequences
mkdir reference
cd reference
wget ftp://ftp.ensembl.org/pub/release-97/fasta/homo_sapiens/pep/Homo_sapiens.GRCh38.pep.all.fa.gz
gunzip Homo_sapiens.GRCh38.pep.all.fa.gz
wget ftp://ftp.ensembl.org/pub/release-97/fasta/danio_rerio/pep/Danio_rerio.GRCz11.pep.all.fa.gz
gunzip Danio_rerio.GRCz11.pep.all.fa.gz
cd ..

bash download-and-makeblastdb.sh bambooshark GCA_004010195.1_ASM401019v1 004/010/195 
bash download-and-makeblastdb.sh homo GCA_000001405.28_GRCh38.p13 000/001/405



common=${1}
base=${2}
url_base=${3}
 
mkdir ${common}
cd ${common}
wget ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/000/001/405/${base}_assembly_report.txt
wget ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/000/001/405/${base}_genomic.fna.gz
gunzip *.gz
makeblastdb -in ${base}_genomic.fna -input_type nucl -out ${common}
cd ..

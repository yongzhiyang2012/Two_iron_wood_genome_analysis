## In this example, we assume the species is Ore. The corresponding protein, CDS and gff are Ore.pep, Ore.cds and Ore.gff. Running command as following:

makeblastdb -dbtype prot -in Ore.pep
blastp -db Ore.pep -query Ore.pep -evalue 1e-5 -num_threads 30 -out Ore.blast -outfmt 6
MCScanX Ore
add_ka_and_ks_to_collinearity.pl -i Ore.collinearity -d Ore.cds -o Ore.collinearity.kaks

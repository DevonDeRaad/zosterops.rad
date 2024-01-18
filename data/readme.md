# This folder contains the data needed to reproduce the results from this manuscript.
### Genetic data
* The file called 'zost.unfiltered.snps.vcf.bz2' contains all unfiltered SNPs. The file had to be 'bzipped' for additional compression in order to get it under GitHub's 100Mb file size limit. It can be decompressed with the command 'bzip2 -d zost.unfiltered.snps.vcf.bz2'.
* The file called 'filtered.snps.vcf.gz' contains the filtered SNP dataset in standard gzip form (i.e., can be unzipped via 'gunzip filtered.snps.vcf.gz')
* The file called 'filtered.unlinked.snps.vcf.gz' contains the filtered, unlinked SNP dataset.
### Sample info
* The file called 'retained.samples.csv' contains sampling information including a lat/long for each sample that passed filtering protocols and is included in analyses presented in the manuscript.
### Genetic diversity data
* The file called 'singlesample.populations.sumstats_summary.tsv' contains the genetic diversity information per sample.
* The file called 'locs.populations.sumstats_summary.tsv' contains the genetic diversity information per sampling locality.

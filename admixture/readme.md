# ADMIXTURE details
* Each of the folders in this repository holds all input and output files for a unique ADMIXTURE run.
### all.samps
* The folder 'all.samps' holds the run presented in the manuscript that includes all samples and SNPs that passed filtering protocols. The file 'filtered.unlinked.snps.vcf.gz' is the input file used for this run, and the file 'run.admixture.all.samps.sh' is the bash script used to execute this run on the KUHPCC. All other files are output by the program ADMIXTURE and detail the results of each run (K = 1-10).
### mac2
* The folder 'mac2' holds a run including all samples that passed filtering protocols, and all filtered SNPs *with singletons removed*. The file 'nosingletons.vcf.gz' is the input file used for this run, and the file 'run.admixture.nosingletons.sh' is the bash script used to execute this run on the KUHPCC. All other files are output by the program ADMIXTURE and detail the results of each run (K = 1-10). We determined that this run was essentially identical to the run using all SNPs, so we chose to present the all SNPs run in the manuscript.
### ev.ni
* The folder 'ev.ni' holds the subset run of only *Z. nigrorum* and *Z. everetti* samples, which could not be differentiated in the larger dataset due to hierarchical structure. The file 'ev.ni.vcf.gz' is the input file used and the file 'run.admixture.sh' is the bash script used to execute this run on the KUHPCC. All other files are ADMIXTURE output files for runs K = 1-10.
### Detailed walkthrough
* A vignette style walkthrough showing all of the code used to generate these results, visualizations of the K optimization process, and visualizations of the results of each K value are available at: [https://devonderaad.github.io/zosterops.rad/admixture/zosterops.admixture.html](https://devonderaad.github.io/zosterops.rad/admixture/zosterops.admixture.html).

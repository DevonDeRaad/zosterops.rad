#!/bin/sh
#
#SBATCH --job-name=radseq.zost              # Job Name
#SBATCH --nodes=1             # 40 nodes
#SBATCH --ntasks-per-node=20             # 10 CPU allocation per Task
#SBATCH --partition=bi            # Name of the Slurm partition used
#SBATCH --chdir=/home/d669d153/work/zosterops.rad  # Set working d$
#SBATCH --mem-per-cpu=2gb            # memory requested
#SBATCH --time=3000

files="ZJlo002
ZJlo006
ZJlo010
ZJlo012
ZJlo015
ZJlo016
ZJlo017
ZJlo021
ZJlo022
ZJlo024
ZJlo025
ZJlo031
ZJlo045
ZJlo046
ZJlo050
ZJlo052
ZJlo055
ZJja001
ZJja002
ZJja003
ZJja004
ZJja005
ZJja009
ZJja010
ZJja011
ZJja012
ZJja013
ZJja014
ZJja016
ZJja030
ZJal003
Zjal004
ZJal005
ZJal010
ZJal011
ZJal012
ZJal016
ZJal017
ZJal020
ZJst007
ZJst009
ZJst010
ZJst012
ZJst014
ZJst015
ZJst019
ZJin001
ZJin003
ZJsi002
ZJsi003
ZJsi017
ZJsi032
ZJsi020
ZJsi021
ZJsi022
ZJsi023
ZJsi024
ZJsi025
ZJsi027
ZJsi028
ZJsi029
ZJsi030
ZJsi031
ZPxx001
ZPxx002
ZMxx002
ZMxx003
ZMxx004
ZMxx005
ZMxx006
ZMOxx001
ZMOxx002
ZMOxx003
ZMOxx004
ZMOxx005
ZMOha001
ZMOwh002
ZMOwh003
ZMOwh004
ZMOwh005
ZMOwh006
ZMOvu001
ZMOvu002
ZMOvu003
ZMOvu004
ZMOvu005
ZMOmo001
ZMOpa001
ZMOpa002
ZEba001
ZNni001
ZAsu001
ZAsu002
ZAsu003
ZAsu004
ZERxx002
ZERxx003
ZERxx004
ZERxx005
Zsim23473
Zsim23588
Zsim28142
Zsim30897
Zpal23498
Zpal23522
Zmon20893
Zmon20892
Zmon20891
Zmon20902
Zmon20909
Zmon27152
Zmon27153
Zsim31166
Zsim31171
Zsim31159
Zem17804
Zem17802
Zmey17876
Zmey17877
Zmey17852
Zmey17853
Zmey17922
Zmey17920
Zmey17925
Zmey17923
Zery28090
Zery28091
Zery28087
Zery28088
Zni10863
Zni14341
Zni19650
Zni17984
ZpalDOT-5746
ZjaDOT-10981
ZjaDOT-5235
Z_LA_122866_2
Z_LA_122577_2
Z_LA_122188_2
Zsim6741
Zsim13809
Zsim13773
Zsim6797
Zsim10336
Zsim11362
Zsim11102
Zsim11220
Zmon20899
Zmon28375
Zev13949
Zev31650
Zev28451
Z_HI_BRY431
Z_HI_BRY362
Z_HI_NAN290
Z_HI_NAN440
Z_HI_WAI087
Z_HI_WAI078
Z_HI_SOL783
Z_HI_SOL333
Z_HI_CJR412"

#index ref
#/panfs/pfs.local/work/bi/bin/bwa/bwa index JAWE_1.0_genomic.fna

#Align paired-end data with BWA, convert to BAM and SORT.
#for sample in $files
#do 
#    /panfs/pfs.local/work/bi/bin/bwa/bwa mem -t 20 JAWE_1.0_genomic.fna fastq/${sample}.fq.gz |
#      /panfs/pfs.local/work/bi/bin/samtools-1.3.1/bin/samtools view -b |
#      /panfs/pfs.local/work/bi/bin/samtools-1.3.1/bin/samtools sort > fastq/${sample}.bam
#done

#Run gstacks to build loci from the aligned paired-end data.
#We have instructed gstacks to remove any PCR duplicates that it finds.
/home/d669d153/work/stacks-2.41/gstacks -I ./fastq -M zosterops.popmap.txt -O ./fastq -t 20

#Run populations and export a vcf. Do no filtering steps on the output vcf.
/home/d669d153/work/stacks-2.41/populations -P ./fastq -M zosterops.popmap.txt -O . --vcf -t 20


### Code from the manuscript:
# On the brink of explosion? Identifying the source and potential spread of introduced Zosterops white-eyes in North America
* **Authors**: Devon A. DeRaad, Marlon E. Cobos, Natalie R. Hofmeister, Lucas H. DeCicco, Madhvi X. Venkatraman, Isao Nishiumi, Bailey McKay, Fa-Sheng Zou, Kazuto Kawakami, Chang-Hoe Kim, Ruey-Shing Lin, Cheng-Te Yao, Kimball L. Garrett, Stepfanie M. Aguillon, John E. McCormack, Herman L. Mays Jr., A. Townsend Peterson, Robert G. Moyle, and Allison J. Shultz
* **Corresponding author**: Devon A. DeRaad (devonderaad@gmail.com)

## Background

### Data availability
*    All SNP datasets used in this manuscript can be found in the folder called [data](https://github.com/DevonDeRaad/zosterops.rad/tree/main/data).
*    The raw sequence data for each sample passing filtering protocols (i.e., included in the analyses for this manuscript) is available via NCBI's Sequence Read Archive, at the BioProject PRJNA1079333, which can be found at: [http://www.ncbi.nlm.nih.gov/bioproject/1079333](http://www.ncbi.nlm.nih.gov/bioproject/1079333).

### Quality filtering raw, unfiltered SNPs
*   The entire SNP filtering process, facilitated by the R packages [vcfR](https://doi.org/10.1111/1755-0998.12549) and [SNPfiltR](https://doi.org/10.1111/1755-0998.13618) is available to view here:
    > <https://devonderaad.github.io/zosterops.rad/zost.radseq.filtering.html>

### Distribution and sampling mapping
*   The process of generating maps of the sampling and general distribution for each species can be viewed here:
    > <https://devonderaad.github.io/zosterops.rad/zosterops.mapping.html>

## Popgen analyses

### Phylogenetic network
*   The process of generating a phylogenetic network can be viewed and recreated here:
    > <https://devonderaad.github.io/zosterops.rad/splitstree.html>

### ADMIXTURE
*   All input and output files from ADMIXTURE runs for this project can be found in the folder called [admixture](https://github.com/DevonDeRaad/zosterops.rad/tree/main/admixture).
*   The resulting K optimization process and the output for each K value can be viewed here in a commprehensive, vignette-style walkthrough:
    > <https://devonderaad.github.io/zosterops.rad/admixture/zosterops.admixture.html>

### Calculate Fst
*   The process of calculating pairwise Fst among and within species is viewable here:
    > <https://devonderaad.github.io/zosterops.rad/zosterops.pairwise.fst.html>

### Triangle plots
*   The process of creating triangle plots for hybrid samples is viewable here:
    > <https://devonderaad.github.io/zosterops.rad/zosterops.triangle.plots.html>
*    Please note that this analysis was subsequently dropped from the manuscript during the editing stage.

### Investigate introduced population ancestry and diversity
*   The process of investigating the ancestry and genetic diversity of introduced pops is viewable here:
    > <https://devonderaad.github.io/zosterops.rad/investigate.introductions.html>

## Ecological niche modeling analyses
*   Quantifying the ecological niche of the native distribution of *Z. simplex* and projecting across North America can be viewed here:
    > <https://devonderaad.github.io/zosterops.rad/zosterops_ENM.html>

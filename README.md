
# Evidence for strong purifying selection of human 47S ribosomal RNA genes

## Badges
[![bioRxiv](https://img.shields.io/badge/bioRxiv-10.1101/2025.10.28.685169v2-b31b1b.svg)](https://www.biorxiv.org/content/10.1101/2025.10.28.685169v2)
[![DOI](https://zenodo.org/badge/681301375.svg)](https://doi.org/10.5281/zenodo.19382935)

This is the official repository of our paper: **"Evidence for strong purifying selection of human 47S ribosomal RNA genes"**.

### Authors
Xufan Ma, Fiona Chow, Buz Galbraith, Daniel Sultanov, Eli K. Behar, and Andreas Hochwagen.  

---

## 🔬 Overview
This repository contains the variant calling pipeline and statistical analysis used to identify purifying selection patterns in human 47S rRNA genes. 

## 🚀 Getting Started


### Problem: Little research have been done to associate known diseases to the Human rDNA due to it's unique characteristics. Our study starts with evidence for strong purifying selection of human 47S ribosomal RNA genes, and expand deeper into associations.
## 1.Build a detailed sound profile of the Human rDNA (1000 Genome Project)
### Reference index
```sh
bowtie2-build -f .fna GRCh38.p14
```
### Pipeline Wrapper(download, alignment, index, sort, variant calling)
```sh
bash runthis.sh
```
### Synthetic data generation
```sh
NEAT_modelgen.sh
50000Xp01.sh
```
## 📊 Citation
If you find this work or code useful, please cite our PNAS paper (or the bioRxiv preprint):

> Ma, X., Chow, F., Galbraith, B., Sultanov, D., Behar, E. K., & Hochwagen, A. (2026). Evidence for strong purifying selection of human 47S ribosomal RNA genes. *Proceedings of the National Academy of Sciences (PNAS)*. doi:10.1101/2025.10.28.685169
> 
## 2. Apply what we learned about the Human rDNA profile into Patient EHR, Physical Assessment and Survey Data(All of Us)
** recreating the pipeline in All of Us use example.sh
```sh
example.sh
```

---

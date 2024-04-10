###make-data.R

##All source datasets are publicly available on the gene expression omnibus (https://www.ncbi.nlm.nih.gov/geo/).
##The GSE numbers are shown below.

# 1) d1_ab (Saliva) GSE92767
# 2) d2_ab (Lymphoma) GSE42372
# 3) d3_ab (Placenta) GSE62733
# 4) d4_ab (Liver) GSE61258
# 5) d5_ab (Colon) GSE77718
# 6) d6_ab (Blood, Adults) GSE42861
# 7) d7_ab (Blood, 5 year olds) GSE83334
# 8) d8_ab (Blood, newborns) GSE82273
# 9) d9_ab (Cord-blood, Whole) GSE69176
# 10) d10_ab (Cord-blood, PBMC) GSE110128
# 11) d11_ab (Adult, PBMC) GSE67170
# 12) d12_ab (Sperm) GSE114753

# Once downloaded,  parameters for a beta distribution (a_hat, b_hat) are estimated for each CpG site using
# a method of moments approach. Specifically, beta values are calculated for each CpG site/participant combination.
#Next, mean and variances are calculated at every CpG site.
#Finally, method of moments is used to find a_hat and b_hat (function shown below).

get_ab <- Vectorize(function(mu, var){
  a <- mu^2*(1-mu)/var - mu
  b <- a*(1-mu)/mu
  c(a,b)
}, vectorize.args = c("mu","var"))

# These are stored in a 2xN matrix, where N is the total number of CpG sites.

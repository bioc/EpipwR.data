df = data.frame("Title" = NA,
                "Description" = NA,
                "BiocVersion" = NA,
                "Genome" = NA,
                "SourceType" = NA,
                "SourceUrl" = NA,
                "SourceVersion" = NA,
                "Species" = NA,
                "TaxonomyId" = NA,
                "Coordinate_1_based" = NA,
                "DataProvider" = NA,
                "Maintainer" = NA,
                "RDataClass" = NA,
                "DispatchClass" = NA,
                "RDataPath" = NA,
                "Tags" = NA)


df[1:12,] = matrix(c("Saliva", "Lymphoma", "Placenta", "Liver", "Colon", "Blood (Adults) - Peripheral Leukocytes", "Blood 5 year olds", "Blood newborns", "Cord-blood (whole blood)", "Cord-blood (PBMC)", "Adult (PBMC)", "Sperm",
                     paste("CpG-specific beta distribution parameter estimates for EWAS of ", c("Saliva", "Lymphoma", "Placenta", "Liver", "Colon", "Blood (Adults) - Peripheral Leukocytes", "Blood 5 year olds", "Blood newborns", "Cord-blood (whole blood)", "Cord-blood (PBMC)", "Adult (PBMC)", "Sperm"), " tissues", sep = ""),
                     rep("3.20", 12),
                     rep(NA,12),
                     rep("TXT",12),
                     paste("https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=", c("GSE92767", "GSE42372", "GSE62733", "GSE61258", "GSE77718", "GSE42861", "GSE83334", "GSE82273", "GSE69176", "GSE110128", "GSE67170", "GSE114753"), sep = ""),
                     rep(NA,12), # rep(format(Sys.time(), "%b %d %Y"),12),
                     rep("Homo sapiens",12),
                     rep(9606,12),
                     rep(NA,12),
                     rep("GEO",12),
                     rep("Jackson Barth <Jackson_Barth@Baylor.edu>",12),
                     rep("matrix",12),
                     rep("Rda",12),
                     paste("EpipwR.data/", c("ds1_ab.rdata", "ds2_ab.rdata", "ds3_ab.rdata", "ds4_ab.rdata", "ds5_ab.rdata", "ds6_ab.rdata", "ds7_ab.rdata", "ds8_ab.rdata", "ds9_ab.rdata", "ds10_ab.rdata", "ds11_ab.rdata", "ds12_ab.rdata"), sep = "")),

                   nrow = 12, ncol = 16, byrow = FALSE
)

write.csv(df, file = "/inst/extdata/metadata.csv", row.names=FALSE)

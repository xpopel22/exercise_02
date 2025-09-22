
if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install()

BiocManager::install("Biostrings")
BiocManager::install("seqinr")
BiocManager::install("pwalign")

library(Biostrings)
library(seqinr)

file <- "fishes.fna.gz"
dnaSet <- readDNAStringSet(file)
print(dnaSet)
fasta <- read.fasta(file)
print(fasta)
length(dnaSet)
width(dnaSet[1])
print(dnaSet[1])
names(dnaSet)
seq1 <- (dnaSet[1])
seq1_sequence <- (dnaSet[[1]])
seq1_string <- toString(dnaSet[1])
help(XStringSet)



seq1 <- (dnaSet[1])
seq2 <- (dnaSet[2])
data("BLOSUM62")
seqAlignment <- pairwiseAlignment(seq1, seq2, type="global", substitutionMatrix=BLOSUM62, gapOpening=-1, gapExtension=1)
print(seqAlignment)
pairwiseAlignment(seq1, seq2, type="global", substitutionMatrix=BLOSUM62, gapOpening=-1, gapExtension=1)

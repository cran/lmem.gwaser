% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gwas.cross.R
\name{gwas.cross}
\alias{gwas.cross}
\title{Read genomic data to perform GWAS analyses.}
\usage{
gwas.cross(P.data = NULL, G.data, map.data, cross = "gwas",
  heterozygotes = TRUE, sep = "\\t")
}
\arguments{
\item{P.data}{Name of the file containing phenotypic information.
Each row represents the individuals while each column represents
the phenotypic traits. The first column should be labeled as 'genotype'
and should contain identification name for each individual.
The name of each trait should also be included.}

\item{G.data}{Name of the file containing genotypic (marker scores)
information. Each row represents the individuals
while each column represents the markers. Headers for markers should be
included, but not for genotypes.
The first column contains the names of the genotypes.
The first row contains the names of the markers.
The marker genotypes are coded by two characters corresponding
to the alleles using a separator between alleles (by default a slash /).
If a single character is given, the genotype is assumed to be homozygous.
Missing values are indicated by default with '-'.
In the example below, the two alleles have been called 1 and 2 because it
is useful to link alleles to their origin, i.e. parent 1 or parent 2.
Therefore, 1 corresponds to homozygous for allele 1 (synonymous to 1/1),
1/2 corresponds to heterozygous, and 2 corresponds to homozygous
for allele 2 (synonymous to 2/2).
In the case of partially informative markers (e.g. dominant markers)
genotypes are coded as 1/- or 2/-, depending on whether the dominant
allele originated from parent 1 or parent 2.}

\item{map.data}{Name of the file containing marker map information (
i.e. linkage group and position within linkage group).
The file is a text tab delimited file. Each row represents markers.
The file consists of three columns.
Column 1 gives the marker names,
column 2 the chromosome on which the marker has been mapped,
and column 3 indicates the position of the marker within the chromosome.}

\item{cross}{The type of population studied. gwas is set as default
Diverse population panel for GWAS.}

\item{heterozygotes}{It indicates whether there are heterozygotes or
not in the association mapping population. TRUE is set as default.}

\item{sep}{To define the espace between the data.}
}
\value{
Creates an object of class cross to be used in GWAS analysis. The component
are  the same as r/qtl (Broman and Sen, 2009): geno
}
\description{
This function reads genomic data and is similar to the read.cross
function from r/qtl package (Broman and Sen, 2009) but allows
importing data from a flapjack format (Milne et al., 2010).
Additionally, it loads diverse populations for GWAS analysis
into r/qtl format. The files required include a file containing phenotypic
information (P.data), a file containing genotypic information (G.data),
and a file containing map information (map.data) for all markers.
}
\details{
The function creates an intermediate file called 'temp.csv' and
then uses the read.cross from r/qtl to read it.
The output object is an object of class=cross, the same as the
one produced by the function read.cross in r/qtl (Broman and Sen, 2009)
}
\note{
All functions in this package uses cross data style.
}
\examples{
data (QA_geno)
data (QA_map)
data (QA_pheno)

P.data <- QA_pheno
G.data <- QA_geno
map.data <- QA_map

cross.data <- gwas.cross (P.data, G.data, map.data,
cross='gwas', heterozygotes=FALSE)

summary (cross.data)

}
\author{
Lucia Gutierrez, Gaston Quero.
}
\references{
Broman KW, Sen S (2009) A Guide to QTL Mapping with R/qtl.
            Springer, NewYork
            Comadran J, Thomas W, van Eeuwijk F, Ceccarelli S, Grando S, Stanca A,
            Pecchioni N, Akar T, Al-Yassin A, Benbelkacem A, Ouabbou H, Bort J,
            Romagosa I, Hackett C, Russell J (2009) Patterns of genetic diversity
            and linkage disequilibrium in a highly structured Hordeum vulgare
            association-mapping population for the Mediterranean basin.
            Theor Appl Genet 119:175-187
            Milne et al., (2010) Flapjack - graphical genotype visualization.
            Bioinformatics 26(24), 3133-3134.
}
\seealso{
gwas.analysis
}


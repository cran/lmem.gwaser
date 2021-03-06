% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/exploratory_gwas_functions.R
\name{pca.analysis}
\alias{pca.analysis}
\title{Principal Component Analysis.}
\usage{
pca.analysis(crossobj, p.val)
}
\arguments{
\item{crossobj}{An object of class = cross obtained from the gwas.cross
function from this package, or the read.cross
function from r/qtl package (Broman and Sen, 2009).
This file contains phenotypic means, genotypic marker score, and genetic map.}

\item{p.val}{Alpha level (a number) to identify the number of significant axis}
}
\value{
A PCA plot with two principal components and a scree
plot for all significant axes indicating the proportion of
the variance explained by each marker.
}
\description{
Performs Principal Component Analysis of marker data from
an object of cross class created by the gwas.cross function.
}
\details{
Performs two plots.
}
\note{
In gwas.memq function, the pca.anlysis function is already included.
}
\examples{
\dontrun{
data (QA_geno)
data (QA_map)
data (QA_pheno)

P.data <- QA_pheno
G.data <- QA_geno
map.data <- QA_map

cross.data <- gwas.cross (P.data, G.data, map.data,
cross='gwas', heterozygotes=FALSE)
summary (cross.data)

pca <- pca.analysis(crossobj=cross.data, p.val=0.05)

}
}
\author{
Lucia Gutierrez
}
\references{
Comadran J, Thomas W, van Eeuwijk F, Ceccarelli S, Grando S,
            Stanca A, Pecchioni N, Akar T, Al-Yassin A,
            Benbelkacem A, Ouabbou H, Bort J, Romagosa I,
            Hackett C, Russell J (2009) Patterns of genetic diversity
            and linkage disequilibrium in a highly structured
            Hordeum vulgare association-mapping population for
            the Mediterranean basin. Theor Appl Genet 119:175-187

            Becker, R. A., Chambers, J. M. and Wilks, A. R. (1988) The New S
            Language. Wadsworth & Brooks/Cole.

            Mardia, K. V., J. T. Kent, and J. M. Bibby (1979) Multivariate
            Analysis, London: Academic Press.

            Venables, W. N. and B. D. Ripley (2002) Modern Applied Statistics
            with S, Springer-Verlag.
}
\seealso{
gwas.analysis
}


\name{BSgenome.Dmelanogaster.flybase.dm3}
\docType{package}

\alias{BSgenome.Dmelanogaster.flybase.dm3-package}
\alias{BSgenome.Dmelanogaster.flybase.dm3}
\alias{Dmelanogaster}

\title{Full genome sequences for Drosophila melanogaster (flybase version dm3)}

\description{
  Full genome sequences for Drosophila melanogaster (Fly) as provided by flybase (dm3, Apr. 2006) and stored in Biostrings objects.
}

\details{
  
}

\note{
  This BSgenome data package was made from the following source data files:
  \preformatted{
-- information not available --
  }

  See \code{?\link[BSgenome]{BSgenomeForge}} and the BSgenomeForge
  vignette (\code{vignette("BSgenomeForge")}) in the \pkg{BSgenome}
  software package for how to make a BSgenome data package.
}

\author{The Bioconductor Dev Team}

\seealso{
  \itemize{
    \item \link[BSgenome]{BSgenome} objects and the
          \code{\link[BSgenome]{available.genomes}} function
          in the \pkg{BSgenome} software package.
    \item \link[Biostrings]{DNAString} objects in the \pkg{Biostrings}
          package.
    \item The BSgenomeForge vignette (\code{vignette("BSgenomeForge")})
          in the \pkg{BSgenome} software package for how to make a BSgenome
          data package.
  }
}

\examples{
BSgenome.Dmelanogaster.flybase.dm3
genome <- BSgenome.Dmelanogaster.flybase.dm3
head(seqlengths(genome))
genome$U

## ---------------------------------------------------------------------
## Genome-wide motif searching
## ---------------------------------------------------------------------
## See the GenomeSearching vignette in the BSgenome software
## package for some examples of genome-wide motif searching using
## Biostrings and the BSgenome data packages:
if (interactive())
    vignette("GenomeSearching", package="BSgenome")
}

\keyword{package}
\keyword{data}

###
###

.pkgname <- "BSgenome.Dmelanogaster.flybase.dm3"

.seqnames <- c("2L", "2LHet", "2R", "2RHet", "3L", "3LHet", "3R", "3RHet", "4", "Uextra", "U", "X", "XHet")

.circ_seqs <- "dmel_mitochondrion_genome"

.mseqnames <- NULL

.onLoad <- function(libname, pkgname)
{
    if (pkgname != .pkgname)
        stop("package name (", pkgname, ") is not ",
             "the expected name (", .pkgname, ")")
    extdata_dirpath <- system.file("extdata", package=pkgname,
                                   lib.loc=libname, mustWork=TRUE)

    ## Make and export BSgenome object.
    bsgenome <- BSgenome(
        organism="Drosophila melanogaster",
        common_name="Fly",
        provider="flybase",
        provider_version="dm3",
        release_date="Apr. 2006",
        release_name="BDGP Release 5",
        source_url="-",
        seqnames=.seqnames,
        circ_seqs=.circ_seqs,
        mseqnames=.mseqnames,
        seqs_pkgname=pkgname,
        seqs_dirpath=extdata_dirpath
    )

    ns <- asNamespace(pkgname)

    objname <- pkgname
    assign(objname, bsgenome, envir=ns)
    namespaceExport(ns, objname)

    old_objname <- "Dmelanogaster"
    assign(old_objname, bsgenome, envir=ns)
    namespaceExport(ns, old_objname)
}


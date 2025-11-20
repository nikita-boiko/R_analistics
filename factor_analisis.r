options(digits=2)
covariances <- ability.cov$cov
correlations <- cov2cor(covariances)
correlations

library(psych)
covariances <- ability.cov$cov
correlations <- cov2cor(covariances)
fa.parallel(correlations, n.obs=112, fa="both", n.iter=100,
            main="Диаграммы собственных значений с параллельным анализом")

fa <- fa(correlations, nfactors=2, rotate="none", fm="pa")
fa

fa.varimax <- fa(correlations, nfactors=2, rotate="varimax", fm="pa")
fa.varimax

fa.promax <- fa(correlations, nfactors=2, rotate="varimax", fm="pa")
fa.promax

fsm <- function(oblique) {
  if (class(oblique)[2]=="fa" & is.null(oblique$Phi)) {
    warning("Объект не похож на результат наклонного вращения факторов"      
  } else { 
    P <- unclass(oblique$loading)
    F <- P %*% oblique$Phi
    colnames(F) <- c("PA1", "PA2")
    return(F) 
  }
}
fsm(fa.promax)

factor.plot(fa.promax, labels=rownames(fa.promax$loadings))

fa.diagram(fa.promax, simple=FALSE)

library(psych)
fa.24tests <- fa(Harman74.cor$cov, nfactors=4, rotate="promax")

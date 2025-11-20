library(pwr)
pwr.t.test(d=.8, sig.level=.05, power=.9, type="two.sample", 
           alternative="two.sided")

pwr.t.test(n=20, d=.5, sig.level=.01, type="two.sample", 
           alternative="two.sided")

pwr.anova.test(k=5, f=.25, sig.level=.05, power=.8)

pwr.r.test(r=.25, sig.level=.05, power=.90, alternative="greater")

pwr.f2.test(u=3, f2=0.0769, sig.level=0.05, power=0.90)


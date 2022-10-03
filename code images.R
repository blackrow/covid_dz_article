### Figure 01.

tiff("fig1.tiff", units="in", width=6, height=5, res=500)
plot(fullsp,border="grey60")
plot(W,coordinates(dz), pch = 19,cex = 0.6, col = "blue", add = TRUE)
dev.off()


### Figure 02
tiff("fig2.tiff", units="in", width=6, height=5, res=500)
moran.plot(fullsp@data$Y, listw = W,pch =16, col= "black",
           cex = .5, quiet = F,
           label = as.character(fullsp@data$Wilaya),
           xlab = "Observed", ylab = "Spatially Lagged Observed")
dev.off()


### Figure 03

tiff("fig3.tiff", units="in", width=6, height=5, res=500)
ggplot(data = full) +
  geom_sf(aes(fill = zscoremoran))+
  scale_fill_gradient2(midpoint = 0, low = "red", mid = "white", high =
                         "green")+
  labs(x = "Eastings", y = "Northings", fill = "Locan Moran Z-score") +
  theme_bw()
dev.off()


### Figure 04

tiff("fig4.tiff", units="in", width=6, height=5, res=500)
ggplot(data = full) +
  geom_sf(aes(fill = locg))+
  scale_fill_gradient2(midpoint = 0, low = "red", mid = "white", high =
                         "green")+
  labs(x = "Eastings", y = "Northings", fill = "Local Getis Ord") +
  theme_bw()
dev.off()


### Figure 05

tiff("fig5.tiff", units="in", width=6, height=5, res=500)
ggplot(data = full) +
  geom_sf(aes(fill = factor(lmqme)))+
  scale_fill_brewer(palette = "Paired")+
  labs(x = "Eastings", y = "Northings", fill = "Moran Local") +
  theme_bw()
dev.off()


### Figure 06

tiff("fig6.tiff", units="in", width=6, height=5, res=500)
plot(tau2.samples)
dev.off()


### Figure 07

tiff("fig7.tiff", units="in", width=6, height=5, res=500)
gelman.plot(tau2.samples)
dev.off()


### Figure 08.1

tiff("fig8.tiff", units="in", width=6, height=5, res=500)
ggplot(data = full) +
  geom_sf(aes(fill = risk))+
  scale_fill_gradient(low = "green", high ="red")+
  labs(x = "Eastings", y = "Northings", fill =  "Relative risk") +
  theme_bw()
dev.off()

### Figure 08.2

tiff("fig9.tiff", units="in", width=6, height=5, res=500)
ggplot(data = full) +
  geom_sf(aes(fill = pep))+
  scale_fill_gradient(low = "blue", high ="red")+
  labs(x = "Eastings", y = "Northings", fill = "Posterior probability") +
  theme_bw()
dev.off()

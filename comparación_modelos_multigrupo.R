                   ### objetos usados en este codigo ###

# fitL = lista de modelos ajustados
# compL = lista de comparaciones (compareFit)




                     ### Comparación de modelos ###   

# library(semTools)

# Crear objetos con las comparaciones

comp1 <- compareFit(fitL$m0, fitL$m1, nested = TRUE)
comp2 <-  compareFit(fitL$m0, fitL$m2, nested = TRUE)
comp3 <- compareFit(fitL$m0, fitL$m3, nested = TRUE)
comp4 <- compareFit(fitL$m0, fitL$m4, nested = TRUE)
comp5 <- compareFit(fitL$m0, fitL$m5, nested = TRUE)
comp6 <- compareFit(fitL$m0, fitL$m6, nested = TRUE)
comp7 <- compareFit(fitL$m0, fitL$m7, nested = TRUE)
comp8 <- compareFit(fitL$m0, fitL$m8, nested = TRUE)
comp9 <- compareFit(fitL$m0, fitL$m9, nested = TRUE)
comp10 <- compareFit(fitL$m0, fitL$m10, nested = TRUE)
comp11 <- compareFit(fitL$m0, fitL$m11, nested = TRUE)
comp12 <- compareFit(fitL$m0, fitL$m12, nested = TRUE)
comp13 <- compareFit(fitL$m0, fitL$m13, nested = TRUE)


              ### Lista para guardar las comparaciones ###
# nombre indica los numeros de los modelos comparados 
  ## ejemplo: 'm01' -> comparacion modelo base con modelo 1
# m0 = modelo base (todos los parámetros son diferentes salvo medias)

compL <- list()
compL$m01 <- comp1
compL$m02 <- comp2
compL$m03 <- comp3
compL$m04 <- comp4
compL$m05 <- comp5
compL$m06 <- comp6
compL$m07 <- comp7
compL$m08 <- comp8
compL$m09 <- comp9
compL$m010 <- comp10
compL$m011 <- comp11
compL$m012 <- comp12
compL$m013 <- comp13





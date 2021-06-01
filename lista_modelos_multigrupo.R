
# # guardar modelos en listas # #

modelL <- list()
modelL$m0 <- RICLPM0
modelL$m1 <- RICLPM1
modelL$m2 <- RICLPM2
modelL$m3 <- RICLPM3
modelL$m4 <- RICLPM4
modelL$m5 <- RICLPM5
modelL$m6 <- RICLPM6 
modelL$m7 <- RICLPM7
modelL$m8 <- RICLPM8
modelL$m9 <- RICLPM9
modelL$m10 <- RICLPM10 
modelL$m11 <- RICLPM11
modelL$m12 <- RICLPM12
modelL$m13 <- RICLPM13

fitL <- list ()
fitL$m0 <- RICLPM0.fit
fitL$m1 <- RICLPM1.fit
fitL$m2 <- RICLPM2.fit
fitL$m3 <- RICLPM3.fit
fitL$m4 <- RICLPM4.fit
fitL$m5 <- RICLPM5.fit
fitL$m6 <- RICLPM6.fit
fitL$m7 <- RICLPM7.fit
fitL$m8 <- RICLPM8.fit
fitL$m9 <- RICLPM9.fit
fitL$m10 <- RICLPM10.fit
fitL$m11 <- RICLPM11.fit
fitL$m12 <- RICLPM12.fit
fitL$m13 <- RICLPM13.fit




sumL <- list()
sumL$m0 <- RICLPM0.sum
sumL$m1 <- RICLPM1.sum
sumL$m2 <- RICLPM2.sum
sumL$m3 <- RICLPM3.sum
sumL$m4 <- RICLPM4.sum
sumL$m5 <- RICLPM5.sum
sumL$m6 <- RICLPM6.sum
sumL$m7 <- RICLPM7.sum
sumL$m8 <- RICLPM8.sum
sumL$m9 <- RICLPM9.sum
sumL$m10 <- RICLPM10.sum
sumL$m11 <- RICLPM11.sum
sumL$m12 <- RICLPM12.sum
sumL$m13 <- RICLPM13.sum


paramsL <- list()
paramsL$m0 <- params0
paramsL$m1 <- params1
paramsL$m2 <- params2
paramsL$m3  <- params3
paramsL$m4  <- params4
paramsL$m5  <- params5
paramsL$m6  <- params6
paramsL$m7  <- params7
paramsL$m8  <- params8
paramsL$m9  <- params9
paramsL$m10  <- params10
paramsL$m11  <- params11
paramsL$m12  <- params12
paramsL$m13  <- params13


fitmeasL <- list()
fitmeasL$m0 <- fitmeas0
fitmeasL$m1 <- fitmeas1
fitmeasL$m2 <- fitmeas2
fitmeasL$m3 <- fitmeas3
fitmeasL$m4 <- fitmeas4
fitmeasL$m5 <- fitmeas5
fitmeasL$m6 <- fitmeas6
fitmeasL$m7 <- fitmeas7
fitmeasL$m8 <- fitmeas8
fitmeasL$m9 <- fitmeas9
fitmeasL$m10 <- fitmeas10
fitmeasL$m11 <- fitmeas11
fitmeasL$m12 <- fitmeas12
fitmeasL$m13 <- fitmeas13


fitmeasT <- cbind(fitmeasL$m0, fitmeasL$m1, fitmeasL$m2, fitmeasL$m3, fitmeasL$m4,
                  fitmeasL$m5, fitmeasL$m6, fitmeasL$m7, fitmeasL$m8, fitmeasL$m9,
                 fitmeasL$m10, fitmeasL$m11, fitmeasL$m12, fitmeasL$m13, fitmeasL$m14)



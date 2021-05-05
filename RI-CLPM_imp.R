                ## Modelo 16MR (días impares) estimado con lavaan ##

# dataframe: academic.tfg

#library(lavaan)

RICLPM <- '
# Create between components (random intercepts) 
RIx =~ 1*ox1 +1*ox3 +  1*ox5 + 1*ox7 + 1*ox9 +  
       1*ox11 + 1*ox13 + 1*ox15 + 1*ox17 + 1*ox19 + 
       1*ox21 + 1*ox23 + 1*ox25 + 1*ox27 + 1*ox29 + 
       1*ox31 


RIy =~ 1*oy1 + 1*oy3 + 1*oy5 + 1*oy7 +
       1*oy9 + 1*oy11 + 1*oy13 + 1*oy15 +
       1*oy17 + 1*oy19 + 1*oy21 + 1*oy23 + 1*oy25 +
        1*oy27 +  1*oy29 + 1*oy31 

# Mean structure

oy1 ~ 1
oy3 ~ 1
oy5 ~ 1
oy7 ~ 1
oy9 ~ 1
oy11 ~ 1
oy13 ~ 1
oy15 ~ 1
oy17 ~ 1
oy19 ~ 1
oy21 ~ 1
oy23 ~ 1
oy25 ~ 1
oy27 ~ 1
oy29 ~ 1
oy31 ~ 1

ox1 ~ 1
ox3 ~ 1
ox5 ~ 1
ox7 ~ 1
ox9 ~ 1
ox11 ~ 1
ox13 ~ 1
ox15 ~ 1
ox17 ~ 1
ox19 ~ 1
ox21 ~ 1
ox23 ~ 1
ox25 ~ 1
ox27 ~ 1
ox29 ~ 1
ox31 ~ 1

# Create within-person centered variables
wx1 =~ 1*ox1
wx3 =~ 1*ox3 
wx5 =~ 1*ox5
wx7 =~ 1*ox7
wx9 =~ 1*ox9
wx11 =~ 1*ox11
wx13 =~ 1*ox13 
wx15 =~ 1*ox15
wx17 =~ 1*ox17
wx19 =~ 1*ox19
wx21 =~ 1*ox21
wx23 =~ 1*ox23
wx25 =~ 1*ox25
wx27 =~ 1*ox27
wx29 =~ 1*ox29
wx31 =~ 1*ox31


wy1 =~ 1*oy1
wy3 =~ 1*oy3
wy5 =~ 1*oy5
wy7 =~ 1*oy7
wy9 =~ 1*oy9
wy11 =~ 1*oy11
wy13 =~ 1*oy13 
wy15 =~ 1*oy15
wy17 =~ 1*oy17
wy19 =~ 1*oy19
wy21 =~ 1*oy21
wy23 =~ 1*oy23
wy25 =~ 1*oy25
wy27 =~ 1*oy27
wy29 =~ 1*oy29
wy31 =~ 1*oy31

# Estimate the lagged effects between the within-person centered variables.
wy3 ~ (b_y)*wy1
wy5 ~ (b_y)*wy3
wy7 ~ (b_y)*wy5
wy9 ~ (b_y)*wy7
wy11 ~ (b_y)*wy9
wy13 ~ (b_y)*wy11
wy15 ~ (b_y)*wy13
wy17 ~ (b_y)*wy15
wy19 ~ (b_y)*wy17
wy21 ~ (b_y)*wy19
wy23 ~ (b_y)*wy21
wy25 ~ (b_y)*wy23
wy27 ~ (b_y)*wy25
wy29 ~ (b_y)*wy27
wy31 ~ (b_y)*wy29

wx3 ~ (b_x)*wx1
wx5 ~ (b_x)*wx3
wx7 ~ (b_x)*wx5
wx9 ~ (b_x)*wx7
wx11 ~ (b_x)*wx9
wx13 ~ (b_x)*wx11
wx15 ~ (b_x)*wx13
wx17 ~ (b_x)*wx15
wx19 ~ (b_x)*wx17
wx21 ~ (b_x)*wx19
wx23 ~ (b_x)*wx21
wx25 ~ (b_x)*wx23
wx27 ~ (b_x)*wx25
wx29 ~ (b_x)*wx27
wx31 ~ (b_x)*wx29





# Estimate the cross-lagged effects between the within-person centered variables.

wy3 ~ (g_y)*wx1
wy5 ~ (g_y)*wx3
wy7 ~ (g_y)*wx5
wy9 ~ (g_y)*wx7
wy11 ~ (g_y)*wx9
wy13 ~ (g_y)*wx11
wy15 ~ (g_y)*wx13
wy17 ~ (g_y)*wx15
wy19 ~ (g_y)*wx17
wy21 ~ (g_y)*wx19
wy23 ~ (g_y)*wx21
wy25 ~ (g_y)*wx23
wy27 ~ (g_y)*wx25
wy29 ~ (g_y)*wx27
wy31 ~ (g_y)*wx29



wx3 ~ (g_x)*wy1
wx5 ~ (g_x)*wy3
wx7 ~ (g_x)*wy5
wx9 ~ (g_x)*wy7
wx11 ~ (g_x)*wy9
wx13 ~ (g_x)*wy11
wx15 ~ (g_x)*wy13
wx17 ~ (g_x)*wy15
wx19 ~ (g_x)*wy17
wx21 ~ (g_x)*wy19
wx23 ~ (g_x)*wy21
wx25 ~ (g_x)*wy23
wx27 ~ (g_x)*wy25
wx29 ~ (g_x)*wy27
wx31 ~ (g_x)*wy29



# Estimate the covariances between the residuals of the within-person centered variables. Centradas?*
wx3 ~~ (CvDer) * wy3
wx5 ~~ (CvDer) * wy5
wx7 ~~ (CvDer) * wy7
wx9 ~~ (CvDer) * wy9
wx11 ~~ (CvDer) * wy11
wx13 ~~ (CvDer) * wy13
wx15 ~~ (CvDer) * wy15
wx17 ~~ (CvDer) * wy17
wx19 ~~ (CvDer) * wy19
wx21 ~~ (CvDer) * wy21
wx23 ~~ (CvDer) * wy23
wx25 ~~ (CvDer) * wy25
wx27 ~~ (CvDer) * wy27
wx29 ~~ (CvDer) * wy29
wx31 ~~ (CvDer) * wy31

# Estimate the variance and covariance of the random intercepts. 
RIx ~~ RIx
RIy ~~ RIy

RIx ~~ RIy

# Estimate the (residual) variance of the within-person centered variables.
wx1 ~~ wx1 # Variances
wy1 ~~ wy1 

wx1 ~~ wy1 # Covariance 

wx3 ~~ (DerX) * wx3 
wx5 ~~ (DerX) * wx5
wx7 ~~ (DerX) * wx7 
wx9 ~~ (DerX) * wx9
wx11 ~~ (DerX) * wx11 
wx13 ~~ (DerX) * wx13
wx15 ~~ (DerX) * wx15
wx17 ~~ (DerX) * wx17
wx19 ~~ (DerX) * wx19
wx21 ~~ (DerX) * wx21
wx23 ~~ (DerX) * wx23 
wx25 ~~ (DerX) * wx25
wx27 ~~ (DerX) * wx27 
wx29 ~~ (DerX) * wx29
wx31 ~~ (DerX) * wx31 


wy3  ~~ (DerY) * wy3 
wy5  ~~ (DerY) * wy5
wy7  ~~ (DerY) * wy7 
wy9  ~~ (DerY) * wy9
wy11 ~~ (DerY) * wy11 
wy13 ~~ (DerY) * wy13
wy15 ~~ (DerY) * wy15 
wy17 ~~ (DerY) * wy17
wy19 ~~ (DerY) * wy19 
wy21 ~~ (DerY) * wy21
wy23 ~~ (DerY) * wy23 
wy25 ~~ (DerY) * wy25
wy27 ~~ (DerY) * wy27 
wy29 ~~ (DerY) * wy29
wy31 ~~ (DerY) * wy31 



# Measurement error variance 

oy1  ~~  0 * oy1 
oy3  ~~  0 * oy3 
oy5  ~~  0 * oy5
oy7  ~~  0 * oy7 
oy9  ~~  0 * oy9 
oy11 ~~  0 * oy11 
oy13 ~~  0 * oy13 
oy15 ~~  0 * oy15
oy17 ~~  0 * oy17
oy19 ~~  0 * oy19 
oy21 ~~  0 * oy21 
oy23 ~~  0 * oy23 
oy25 ~~  0 * oy25
oy27 ~~  0 * oy27
oy29 ~~  0 * oy29 
oy31 ~~  0 * oy31 


ox1  ~~ 0* ox1 
ox3  ~~ 0* ox3 
ox5  ~~ 0* ox5
ox7  ~~ 0* ox7 
ox9  ~~ 0* ox9 
ox11 ~~ 0* ox11
ox13 ~~ 0* ox13 
ox15 ~~ 0* ox15
ox17 ~~ 0* ox17
ox19 ~~ 0* ox19
ox21 ~~ 0 * ox21 
ox23 ~~ 0 * ox23 
ox25 ~~ 0 * ox25
ox27 ~~ 0 * ox27 
ox29 ~~ 0 * ox29 
ox31 ~~ 0 * ox31 

# Covariance between measurements error(CvMesYX)
oy1  ~~ 0* ox1 
oy3  ~~ 0* ox3 
oy5  ~~ 0* ox5
oy7  ~~ 0* ox7 
oy9  ~~ 0* ox9 
oy11 ~~ 0* ox11
oy13 ~~ 0* ox13 
oy15 ~~ 0* ox15
oy17 ~~ 0* ox17
oy19 ~~ 0* ox19
oy21 ~~ 0* ox21 
oy23 ~~ 0* ox23 
oy25 ~~ 0* ox25
oy27 ~~ 0* ox27 
oy29 ~~ 0* ox29 
oy31 ~~ 0* ox31 

'

RICLPM.fit <- lavaan (RICLPM, data = academic.tfg, missing = 'ML',
                      meanstructure = T, int.ov.free = T)

RICLPM.sum <- summary(RICLPM.fit, standardized = T, fit=TRUE)

RICLPM.pars <- RICLPM.sum$PE
RICLPM.pars <- RICLPM.pars[!is.na(RICLPM.pars$z),]
RICLPM.pars <- RICLPM.pars[!duplicated(round(RICLPM.pars$est,6)),]


params <- cbind(RICLPM.pars[c("lhs", "op", "rhs", "label")],
                round(RICLPM.pars[c("est", "se", "pvalue")],3) )
fitmeas <- fitmeasures(RICLPM.fit, fit.measures = c("npar","logl","aic",
                                                    "chisq", "df", "pvalue",
                                                    "rmsea", "cfi", "srmr"))
params






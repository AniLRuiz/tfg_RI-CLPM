#Análisis multigrupo 

#  modelo 6 (estima todo diferente para ambos grupos, 
#               salvo medias y varianza de RIy [calidad del sueño])


# grupo 1 = aprobados [1], grupo 2 = no aprobados [0]

RICLPM6 <- '
# Crear componente entre sujetos (intersecciones aleatorias)  
RIx =~ 1*ox1 +  1*ox3 +  1*ox5 + 1*ox7 +  1*ox9 +  
       1*ox11 +  1*ox13 +  1*ox15 + 1*ox17 + 1*ox19 + 
       1*ox21 +  1*ox23 +  1*ox25 + 1*ox27 +  1*ox29 + 
       1*ox31 


RIy =~ 1*oy1 +  1*oy3 + 1*oy5 + 1*oy7 +  1*oy9 + 
       1*oy11 +  1*oy13 +  1*oy15 +  1*oy17 +  1*oy19 + 
       1*oy21 +  1*oy23 +  1*oy25 + 1*oy27 + 1*oy29 + 
       1*oy31 

# Estructura de medias
RIy ~ 0*1
RIx ~ 0*1

oy1 ~ (mediaY1)*1
oy3 ~ (mediaY3)*1
oy5 ~ (mediaY5)*1
oy7 ~ (mediaY7)*1
oy9 ~ (mediaY9)*1
oy11 ~ (mediaY11)*1
oy13 ~ (mediaY13)*1
oy15 ~ (mediaY15)*1
oy17 ~ (mediaY17)*1
oy19 ~ (mediaY19)*1
oy21 ~ (mediaY21)*1
oy23 ~ (mediaY23)*1
oy25 ~ (mediaY25)*1
oy27 ~ (mediaY27)*1
oy29 ~ (mediaY29)*1
oy31 ~ (mediaY31)*1

ox1 ~ (mediaX1)*1
ox3 ~ (mediaX3)*1
ox5 ~ (mediaX5)*1
ox7 ~ (mediaX7)*1
ox9 ~ (mediaX9)*1
ox11 ~ (mediaX11)*1
ox13 ~ (mediaX13)*1
ox15 ~ (mediaX15)*1
ox17 ~ (mediaX17)*1
ox19 ~ (mediaX19)*1
ox21 ~ (mediaX21)*1
ox23 ~ (mediaX23)*1
ox25 ~ (mediaX25)*1
ox27 ~ (mediaX27)*1
ox29 ~ (mediaX29)*1
ox31 ~ (mediaX31)*1

# Crear variables intrasujeto (latentes)
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

# Estimar los coeficientes autorregresivos en las variables intrasujetos (latentes)
wy3 ~ c(b_y1, b_y2)*wy1
wy5 ~ c(b_y1, b_y2)*wy3
wy7 ~ c(b_y1, b_y2)*wy5
wy9 ~ c(b_y1, b_y2)*wy7
wy11 ~ c(b_y1, b_y2)*wy9
wy13 ~ c(b_y1, b_y2)*wy11
wy15 ~ c(b_y1, b_y2)*wy13
wy17 ~ c(b_y1, b_y2)*wy15
wy19 ~ c(b_y1, b_y2)*wy17
wy21 ~ c(b_y1, b_y2)*wy19
wy23 ~ c(b_y1, b_y2)*wy21
wy25 ~ c(b_y1, b_y2)*wy23
wy27 ~ c(b_y1, b_y2)*wy25
wy29 ~ c(b_y1, b_y2)*wy27
wy31 ~ c(b_y1, b_y2)*wy29


wx3 ~ c(b_x1, b_x2)*wx1
wx5 ~ c(b_x1, b_x2)*wx3
wx7 ~ c(b_x1, b_x2)*wx5
wx9 ~ c(b_x1, b_x2)*wx7
wx11 ~ c(b_x1, b_x2)*wx9
wx13 ~ c(b_x1, b_x2)*wx11
wx15 ~ c(b_x1, b_x2)*wx13
wx17 ~ c(b_x1, b_x2)*wx15
wx19 ~ c(b_x1, b_x2)*wx17
wx21 ~ c(b_x1, b_x2)*wx19
wx23 ~ c(b_x1, b_x2)*wx21
wx25 ~ c(b_x1, b_x2)*wx23
wx27 ~ c(b_x1, b_x2)*wx25
wx29 ~ c(b_x1, b_x2)*wx27
wx31 ~ c(b_x1, b_x2)*wx29


# Estimar los efectos cruzados en las variables intrasujeto (latentes)
wy3 ~ c(g_y1, g_y2)*wx1
wy5 ~ c(g_y1, g_y2)*wx3
wy7 ~ c(g_y1, g_y2)*wx5
wy9 ~ c(g_y1, g_y2)*wx7
wy11 ~ c(g_y1, g_y2)*wx9
wy13 ~ c(g_y1, g_y2)*wx11
wy15 ~ c(g_y1, g_y2)*wx13
wy17 ~ c(g_y1, g_y2)*wx15
wy19 ~ c(g_y1, g_y2) *wx17
wy21 ~ c(g_y1, g_y2) *wx19
wy23 ~ c(g_y1, g_y2) *wx21
wy25 ~ c(g_y1, g_y2) *wx23
wy27 ~ c(g_y1, g_y2) *wx25
wy29 ~ c(g_y1, g_y2) *wx27
wy31 ~ c(g_y1, g_y2) *wx29

wx3 ~ c(g_x1, g_x2)*wy1
wx5 ~ c(g_x1, g_x2)*wy3
wx7 ~ c(g_x1, g_x2)*wy5
wx9 ~ c(g_x1, g_x2)*wy7
wx11 ~ c(g_x1, g_x2)*wy9
wx13 ~ c(g_x1, g_x2)*wy11
wx15 ~ c(g_x1, g_x2)*wy13
wx17 ~ c(g_x1, g_x2)*wy15
wx19 ~ c(g_x1, g_x2) *wy17
wx21 ~ c(g_x1, g_x2) *wy19
wx23 ~ c(g_x1, g_x2) *wy21
wx25 ~ c(g_x1, g_x2) *wy23
wx27 ~ c(g_x1, g_x2) *wy25
wx29 ~ c(g_x1, g_x2) *wy27
wx31 ~ c(g_x1, g_x2) *wy29


# Estimar las covarianzas de los errores dinamicos 

wx3 ~~ c(CvDer1, CvDer2) * wy3
wx5 ~~ c(CvDer1, CvDer2) * wy5
wx7 ~~ c(CvDer1, CvDer2) * wy7
wx9 ~~ c(CvDer1, CvDer2) * wy9
wx11 ~~ c(CvDer1, CvDer2) * wy11
wx13 ~~ c(CvDer1, CvDer2) * wy13
wx15 ~~ c(CvDer1, CvDer2) * wy15
wx17 ~~ c(CvDer1, CvDer2) * wy17
wx19 ~~ c(CvDer1, CvDer2) * wy19
wx21 ~~ c(CvDer1, CvDer2) * wy21
wx23 ~~ c(CvDer1, CvDer2) * wy23
wx25 ~~ c(CvDer1, CvDer2) * wy25
wx27 ~~ c(CvDer1, CvDer2) * wy27
wx29 ~~ c(CvDer1, CvDer2) * wy29
wx31 ~~ c(CvDer1, CvDer2) * wy31

# Estimar las varianzas y covarianza de las intersecciones aleatorias. 
RIx ~~ c(RIxV1, RIxV2)*RIx
RIy ~~ (RIyV)*RIy

RIx ~~ c(CvRIxRIy1, CvRIxRIy2)*RIy

# Estimar la varianza del tiempo 1 en las variables intrasujeto (latentes) 
wx1 ~~ c(wxV1, wxV2)*wx1 # Varianzas
wy1 ~~ c(wyV1, wyV2)*wy1 

wx1 ~~ c(CVwxy1, CVwxy2)*wy1 # Covarianza

# Estimar el error dinámico 


wx3 ~~ c(DerX1, DerX2) * wx3 
wx5 ~~ c(DerX1, DerX2) * wx5
wx7 ~~ c(DerX1, DerX2) * wx7 
wx9 ~~ c(DerX1, DerX2) * wx9
wx11 ~~ c(DerX1, DerX2) * wx11 
wx13 ~~ c(DerX1, DerX2) * wx13
wx15 ~~ c(DerX1, DerX2) * wx15
wx17 ~~ c(DerX1, DerX2) * wx17
wx19 ~~ c(DerX1, DerX2) * wx19
wx21 ~~ c(DerX1, DerX2) * wx21
wx23 ~~ c(DerX1, DerX2) * wx23 
wx25 ~~ c(DerX1, DerX2) * wx25
wx27 ~~ c(DerX1, DerX2) * wx27 
wx29 ~~ c(DerX1, DerX2) * wx29
wx31 ~~ c(DerX1, DerX2) * wx31 


wy3  ~~ c(DerY1, DerY2) * wy3 
wy5  ~~ c(DerY1, DerY2) * wy5
wy7  ~~ c(DerY1, DerY2) * wy7 
wy9  ~~ c(DerY1, DerY2) * wy9
wy11 ~~ c(DerY1, DerY2) * wy11 
wy13 ~~ c(DerY1, DerY2) * wy13
wy15 ~~ c(DerY1, DerY2) * wy15 
wy17 ~~ c(DerY1, DerY2) * wy17
wy19 ~~ c(DerY1, DerY2) * wy19 
wy21 ~~ c(DerY1, DerY2) * wy21
wy23 ~~ c(DerY1, DerY2) * wy23 
wy25 ~~ c(DerY1, DerY2) * wy25
wy27 ~~ c(DerY1, DerY2) * wy27 
wy29 ~~ c(DerY1, DerY2) * wy29
wy31 ~~ c(DerY1, DerY2) * wy31 


# Error de medida (fijado a 0)

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

ox1  ~~ 0 * ox1 
ox3  ~~ 0 * ox3 
ox5  ~~ 0 * ox5
ox7  ~~ 0 * ox7 
ox9  ~~ 0 * ox9 
ox11 ~~ 0 * ox11
ox13 ~~ 0 * ox13 
ox15 ~~ 0 * ox15
ox17 ~~ 0 * ox17
ox19 ~~ 0 * ox19
ox21 ~~ 0 * ox21 
ox23 ~~ 0 * ox23 
ox25 ~~ 0 * ox25
ox27 ~~ 0 * ox27 
ox29 ~~ 0 * ox29 
ox31 ~~ 0 * ox31 

# Covarianza del error de medida (fijado a 0)

oy1  ~~ 0 * ox1 
oy3  ~~ 0 * ox3 
oy5  ~~ 0 * ox5
oy7  ~~ 0 * ox7 
oy9  ~~ 0 * ox9 
oy11 ~~ 0 * ox11
oy13 ~~ 0 * ox13 
oy15 ~~ 0 * ox15
oy17 ~~ 0 * ox17
oy19 ~~ 0 * ox19
oy21 ~~ 0 * ox21 
oy23 ~~ 0 * ox23 
oy25 ~~ 0 * ox25
oy27 ~~ 0 * ox27 
oy29 ~~ 0 * ox29 
oy31 ~~ 0 * ox31 

'

RICLPM6.fit <- lavaan (RICLPM6, data= academic.tfg, group = "Exam", missing = 'ML',
                       meanstructure = T, int.ov.free = T)

RICLPM6.sum <- summary(RICLPM6.fit, standardized = T, fit=TRUE)

RICLPM6.pars <- RICLPM6.sum$PE
RICLPM6.pars <- RICLPM6.pars[!is.na(RICLPM6.pars$z),]
RICLPM6.pars <- RICLPM6.pars[!duplicated(round(RICLPM6.pars$est,6)),]

RICLPM6.sum

params6 <- cbind(RICLPM6.pars[c("lhs", "op", "rhs", "label","group")],
                 round(RICLPM6.pars[c("est", "se", "pvalue")],3) )
fitmeas6 <- fitmeasures(RICLPM6.fit, fit.measures = c("npar","logl","aic",
                                                      "chisq", "df", "pvalue",
                                                      "rmsea", "cfi", "srmr"))





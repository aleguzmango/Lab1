####################
#                  #
# Copiar todo esto #
#                  #
####################
# Hecho con gusto por _______________________________________

# Laboratorio - An?lisis de redes en R - Algebra matricial

# Objetivo: Explorar las funciones de algebra lineal con un caso hipot?tico
# ------------------------------------------------------------------------------------------------------
# En este ejercicio vamos a:
# 1. Cargar nuestra matriz hipot?tica de datos
# 2. Hacer diversas operaciones matriciales
# 3. Comprender el algoritmo base de las recomendaciones de AMAZON


#######################################
# LABORATORIO: Algebra matricial      #
#######################################


M = as.matrix(
  read.csv("https://raw.githubusercontent.com/PABalland/ON/master/amz.csv" , 
           sep = ",", 
           header = T, 
           row.names = 1))
M
dim(M)

# Es la estructura de red que AMAZON ocupa para hacer recomendaciones en base a tus compras actuales

M[1:6,1]
# Ver s?lo el vector de clientes que compran el producto "corbata" (producto de la columna 1)

M[1:6,1:2]
#Ver s?lo un fragmento de la base original, en relaci?n a los dos productos que me interesan
#Puede ser ?til para explorar clientes y productos

rowSums (M)
# Computar grado de centralidad

t(M)
# funci?n ?til para enfocarnos en productos y no s?lo en clientes

M+M
# Suma de matrices


X=M+M
# Crear nuevo un objeto llamado x


M^2

M*M
M%*%t(M)
#multiplicaci?n de matrices checar tama?os

M
dim(M)
t(M)
dim(t(M))
#checar tama?o de la matriz -dim-


t(M)%*%M
#El algoritmo de recomendaci?n de AMAZON, hace b?sicamente lo anterior.
# para tener el n?mero de veces que 2 productos han sido comprados por el mismo cliente
#identificar productos que van frecuentemente juntos (co ocurrencias par)


P=t(M)%*%M
P
#similaridad de productos (de gustos) matriz de co ocurrencia de productos



diag(P)=0
P
#no es una matriz identidad (como en la correlaci?n) 


C=M%*%t(M)
C
#similaridad de clientes - matriz de co ocurrencia de clienes


diag(C)=0
C
#no es una matriz identidad (como en la correlaci?n) 


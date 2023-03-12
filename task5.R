# Written in R. 2023.03.09
# Ikemoto Ko (student ID 41216102)

# Task 5 - Using R example datasets

# 1
print("---1---", quote=F)
library(datasets)
data(CO2)

# 2
print("---2---", quote=F)
#help(CO2)
print("description in file task5-2.txt", quote=F)

# 3
print("---3---", quote=F)
Q <- CO2[CO2$Type=="Quebec",]
M <- CO2[CO2$Type=="Mississippi",]
Q_uptake <- Q[,5]
M_uptake <- M[,5]
Q_uptake_average <- mean(Q_uptake)
Q_uptake_median <- median(Q_uptake)
M_uptake_average <- mean(M_uptake)
M_uptake_median <- median(M_uptake)
print("Quebec average", quote=F)
Q_uptake_average
print("Quebec median", quote=F)
Q_uptake_median
print("Mississippi average", quote=F)
M_uptake_average
print("Mississippi median", quote=F)
M_uptake_median





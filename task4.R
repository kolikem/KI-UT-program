# Written in R. 2023.03.09
# Ikemoto Ko (student ID 41216102)

# Task 4 - R basic operations

# 1
print("---1---", quote=F)
print("the square root of 10", quote=F)
sqrt(10)

# 2
print("---2---", quote=F)
print("the logarithm of 32 to the base 2", quote=F)
log2(32)

# 3
print("---3---", quote=F)
print("the sum of the numbers from 1 to 1000", quote=F)
sum(1:1000)

# 4
print("---4---", quote=F)
print("the sum of all even numbers from 2 to 1000", quote=F)
even <- seq(2, 1000, by=2)
sum(even)

# 5
print("---5---", quote=F)
print("how many pairwise comparisons for 100 genes?", quote=F)
choose(n=100, k=2)

# 6
print("---6---", quote=F)
print("how many arrangements of 100 genes in triplets?", quote=F)
permutation <- function(n,k) {
	P <- choose(n,k)*factorial(k)
	return(P)
}
permutation(100,3)


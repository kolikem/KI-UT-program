# Written in R. 2023.03.09
# Ikemoto Ko (student ID 41216102)

# Task 6

# 1
print("---1---", quote=F)
meanMedianRatio <- function(v){
	return(mean(v)/median(v))
}

#x <- c(1,2,3,4,5,10,10)
#meanMedianRatio(x)


# 2
print("---2---", quote=F)
filtBiggestSmallest <- function(v){
	v2 <- v[c(-which.max(v), -which.min(v))]
	return(mean(v2))
}

#x <- c(10,2,1,3,10,5,4)
#filtBiggestSmallest(x)

# 3
print("---3---", quote=F)


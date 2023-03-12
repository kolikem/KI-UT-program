# Written in R. 2023.03.09
# Ikemoto Ko (student ID 41216102)

# Task 7 - Basic visualization with R

# 1
print("---1-a---", quote=F)
library(tidyverse)
magic_guys <- read.csv("/Users/ikemotoko/Desktop/KI-UT_DSTEP/magic_guys.csv")
js_height <- ggplot(magic_guys, aes(x=length, fill=species))
js_height_hist <- js_height + geom_histogram(binwidth=10, position="dodge")
ggsave("magic_guys_height_histogram.png", js_height_hist, width=6, height=4)


print("---1-b---", quote=F)
js_height_box <- js_height + geom_boxplot()
ggsave("magic_guys_height_boxplot.png", js_height_box, width=6, height=4)

print("---1-c---", quote=F)
print("Written in Tasks_descriptions", quote=F)

# 2
print("---2-a---", quote=F)
arraydata <- read.delim("/Users/ikemotoko/Desktop/KI-UT_DSTEP/microarray_data.tab", sep="\t")
#head(arraydata)
print("row column", quote=F)
dim(arraydata)

print("---2-b---", quote=F)
cnt_na <- c()
for (i in 1:ncol(arraydata)) {
	t <- table(is.na(arraydata[,i]))
	cnt_na <- c(cnt_na, t[2])
}

name <- c(1:1000)
df_na <- data.frame(name, cnt_na)
df_na[is.na(df_na)] <- 0
postscript("array_num_missData_per_gene.eps", width=10, height=4)
plot(df_na$name, df_na$cnt_na)

print("---2-c---", quote=F)
x_10 <- c()
x_20 <- c()
x_50 <- c()

for (i in 1:ncol(arraydata)) {
	if (df_na[i,2]/nrow(arraydata) > 0.1) {
		x_10 <- c(x_10, c(i))
	}
	if (df_na[i,2]/nrow(arraydata) > 0.2) {
		x_20 <- c(x_20, c(i))
	}
	if (df_na[i,2]/nrow(arraydata) > 0.5) {
		x_50 <- c(x_50, c(i))
	}
}

print("X=10%", quote=F)
x_10
print("X=20%", quote=F)
x_20
print("X=50%", quote=F)
x_50

print("---2-d---", quote=F)
gene_mean <- c()
for (i in 1:ncol(arraydata)) {
	arraydata[,i]
	gene_i_mean <- mean(arraydata[,i])
	gene_mean <- c(gene_mean, gene_i_mean)
}

gene_mean



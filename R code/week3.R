set.seed(1234)  # 시드가 똑같으면, 같은 결과가 나온다.
x <- sample(1:10, 6)

# x의 분산 & 표준편차
var(x)
sd(x)

x <- rep(5, 10)
y <- c(1:10)
z <- c(3, 4, 5, 6, 7, 4, 5, 6, 5, 5)

hist(x, breaks = 0:10)
hist(y, breaks = 0:10)
hist(z, breaks = 0:10)

sd(y)
sd(z)

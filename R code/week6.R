# 직선의 방정식
a: 절편
b: 기울기

# y = a + b * x

plot(0, 0, type = "n", 
     xlim = c(0, 10),
     ylim = c(0, 10))
abline(h = 0)
abline(v = 0)
points(x = c(2, 4, 6, 8), 
       y = c(1, 6, 4, 8))
abline(a = 2, b = 0.5) # 직선
abline(a = 1, b = 0.8, col = "red") # 친구의 직선
abline(a = 0.0005164763, 
       b = 0.9499521173, col = "blue")
 
# 내집 크기: 5
5 * 0.9499521173 + 0.0005164763
4.750277

# RSS = sum((y_i - y_i_hat)^2)
# 직선 1: 13
y_i_hat <- c(2, 4, 6, 8) * 0.5 + 2 
y_i_hat
y_i = c(1, 6, 4, 8)
sum((y_i - y_i_hat)^2)

# 직선 2: 9.4

y_i_hat <- c(2, 4, 6, 8) * 0.8 + 1 
y_i_hat

RSS <- function(par){
    intercept <- par[1]
    slope <- par[2]
    y_i_hat <- c(2, 4, 6, 8) * slope + intercept 
    y_i <- c(1, 6, 4, 8)
    sum((y_i - y_i_hat)^2)
}

RSS(c(2, 0.5))
RSS(c(2, 0.6))
RSS(c(1.2, 0.6))

result <- optim(par = c(2, 0.5), fn = RSS)
result$par

library(rgl)

RSS <- function(intercept, slope){
    y_i_hat <- c(2, 4, 6, 8) * slope + intercept 
    y_i <- c(1, 6, 4, 8)
    sum((y_i - y_i_hat)^2)
}
# vectorize
rss <- Vectorize(RSS)

library(rgl)
open3d()
persp3d(rss, 
        xlim = c(-5, 5), 
        ylim = c(-2, 2),
        zlim = c(6, 15),
        n = 100)

rgl.spheres(x = 0.0005164763,
            y = 0.9499521173,
            z = RSS(0.0005164763, 0.9499521173),
            r = 0.05, color = 'red')
clear3d()




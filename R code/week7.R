# 원래의 직선식
true_fuc <- function(x){
    result <- x * 3 + 20
    return(result)
}


range_vec <- 1:20 
plot(range_vec, true_fuc(range_vec), 
     type = "l", lty = 2)

# 잡음이 없을 경우
# points(x, y) 관찰
points(4, true_fuc(4), pch = 19)
points(10, true_fuc(10), pch = 19)
x <- 5:15
points(x, true_fuc(x), pch = 19)

# 잡음이 숫자인 경우
noise_fuc <- function(x){
    result <- x * 3 + 20 + 4
    return(result)
}
points(4, noise_fuc(4), pch = 19)
points(10, noise_fuc(10), pch = 19)
x <- 5:15
points(x, noise_fuc(x), pch = 19)

# 잡음이 어떤 규칙을 가진 경우
noise_fuc2 <- function(x){
    true_vec <- x * 3 + 20
    noise_vec <- rep(0, length(x))
    ## x 가 짝수
    noise_vec[x %% 2 == 0] <- 3
    ## x 가 홀수
    noise_vec[x %% 2 == 1] <- -5
    result <- true_vec + noise_vec
    return(result)
}
points(4, noise_fuc2(4), pch = 19)
points(9, noise_fuc2(9), pch = 19)
x <- 5:15
points(x, noise_fuc2(x), pch = 19)

## print with possibly greater accuracy:
options(digits.secs = 6)
Sys.time()

무작위수 0 ~ 0.9999
1378 / 10000
6585 / 10000
2936 / 10000
6332 / 10000
x <- 1:3
mode(x)
y <- Sys.time()
y <- as.character(y)
mode(y)

random_0to1 <- function(){
    options(digits.secs = 6)
    current_time <- as.character(Sys.time())
    n <- nchar(current_time)
    time_decimal <- substr(current_time, n-3, n)
    return(as.integer(time_decimal)/ 10000)
}
random_0to1()

# 무작위 동일한 기회로 0 ~ 1 사이 아무값을 골라주는
# 착한 함수
runif(10)

# 5 ~ 10사이 아무 숫자나 뽑아줘.
runif(10) * 5 + 5

# 15 ~ 19사이 아무 숫자를 뽑아줘
runif(1) * 4 + 15

# 원래의 직선식
true_fuc <- function(x){
    result <- x * 3 + 20
    return(result)
}


range_vec <- 1:20 
plot(range_vec, true_fuc(range_vec), 
     type = "l", lty = 2)

# runif를 통한 잡음
noise_fuc3 <- function(x){
    true_vec <- x * 3 + 20
    noise_vec <- runif(length(x)) * 10 - 5

    result <- true_vec + noise_vec
    return(result)
}
points(4, noise_fuc3(4), pch = 19)
points(9, noise_fuc3(9), pch = 19)
x <- 5:15
points(x, noise_fuc3(x), pch = 19)

정규분포를 사용해서 잡음을 모델링하게 됩니다.






mydata <- read.csv("https://www.theissaclee.com/ko/courses/rstat101/examscore.csv", header = TRUE)
head(mydata)

x_bar <- mean(mydata$midterm)
y_bar <- mean(mydata$final)
my_corr <- cor(mydata$midterm, mydata$final)

plot(z_x, z_y, asp = 1,
     xlab = "중간고사", 
     ylab = "기말고사",
     main = "시험점수 산점도")
title(sub = paste("상관계수: ",
                  round(my_corr, 4)),
      adj = 1, col.sub = "red")
abline(v = 0)
abline(h = 0)

z_x <- (mydata$midterm - x_bar)/sd(mydata$midterm)
z_y <- (mydata$final - y_bar)/sd(mydata$final)

plot(z_x, z_y, asp = 1,
     xlab = "표준 중간고사 점수", 
     ylab = "표준 기말고사 점수",
     main = "중간, 기말고사 표준점수 분포",
     col = c("blue", "red")[as.factor(sign(z_x * z_y))],
     cex = abs(z_x * z_y))
abline(v = 0)
abline(h = 0)



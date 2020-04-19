# == 같은 체크
1 == (2-3)

# <, > 대소 비교 연산자
2 > 3
2 < 3
3 >= 3
2 <= 3

TRUE  == 1 
FALSE == 0
TRUE * TRUE # TRUE
TRUE * FALSE # FALSE

1 + 1 # = 2
1 + 0 # = 1
0 + 1 # = 1
0 + 0 # = 0

TRUE | TRUE # TRUE
TRUE | FALSE # TRUE
FALSE | TRUE # TRUE
FALSE | FALSE # FALSE


# AND (&), OR (|)
(2 < 3) & (2 < 5)
(2 < 3) & (2 > 5) # FALSE
(2 > 3) | (1 > 2) 

# 카테고리컬 변수 만들기

x <- c(1, 3, 9, 7, 1)
y <- character(length = 5)
y <- c("1st", "2nd", "3rd", "4th", "5th")



y[x <= 3] <- "<= 3"
y[x > 3]  <- "> 3"
y

mydata <- read.csv("https://www.theissaclee.com/ko/courses/rstat101/examscore.csv", header = TRUE)
head(mydata)
summary(mydata$midterm)
y <-  character(length = 30)

y[mydata$midterm < 49.75] <- "low"
y[mydata$midterm >= 49.75] <- "high"
y

mydata$highlow <- y
head(mydata)

mytable <- table(mydata$highlow)
pie(mytable, 
    labels = names(mytable),
    main="Pie Chart of the gender variable")











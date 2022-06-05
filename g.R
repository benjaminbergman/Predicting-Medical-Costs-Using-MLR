3+3
1
df <- read.csv("C:\\Users\\Ben\\OneDrive\\Documents\\insurance.csv")

2

3
str(df)

4
colnames(df)[1] <- "age"

5

6
df_reg <- lm(charges ~ ., data = df)

7

8
summary(df_reg)

9

10
df$bmi40 <-  ifelse(df$bmi >= 40, 1, 0)

11
df$age2 <- df$age^2

12

13
df_reg <- lm(charges ~ . + smoker*sex,, data = df)

14

15
summary(df_reg)
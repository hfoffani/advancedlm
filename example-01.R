data("mtcars")
head(mtcars)
y = mtcars$mpg
x = cbind(1, mtcars$wt, mtcars$hp)
head(x)

# inversa (x'*x) * x' * y
solve( t(x) %*% x ) %*% t(x) %*% y

coef( lm( mpg ~ wt + hp, data=mtcars ))

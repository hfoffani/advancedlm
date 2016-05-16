# variance

data("mtcars")
head(mtcars)
y = mtcars$mpg
x = cbind(1, mtcars$wt, mtcars$hp)
head(x)

n = nrow(x)
I = diag(1, n)
H = matrix(1, n, n) / n

xc = (I - H) %*% x

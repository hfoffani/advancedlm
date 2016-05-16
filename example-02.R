# mean-centered

data("mtcars")
head(mtcars)
y = mtcars$mpg
x = cbind(1, mtcars$wt, mtcars$hp)
head(x)

n = nrow(x)
I = diag(1, n)
H = matrix(1, n, n) / n

xc = (I - H) %*% x

# comprobar. (mean sobre columnas (eje 2))
apply(xc, 2, mean)

# mas rápido.
xc2 = sweep(x, 2, apply(x, 2, mean))

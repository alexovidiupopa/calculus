t = [8.3 8.6];
d = [17.56492 18.50515];
v = [3.116256 3.151762];
x = 8.4;

H = HermitePol(t,d,v,x)

err = abs(x*log(x) - H)

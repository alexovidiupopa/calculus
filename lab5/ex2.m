t = [1 2];
d = [0 0.6931];
v = [1 0.5];
x = 1.5;

H = HermitePol(t,d,v,x)

err = abs(log(x) - H)

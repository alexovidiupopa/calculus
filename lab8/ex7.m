a=0.1;
b=0.5;
c=0.01;
d=0.25;

f = @(x,y) exp(y/x);

actual = 0.178571 

v = double_simpsons(f,a,b,c,d,21) 

err = abs(actual-v)
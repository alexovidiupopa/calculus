f = @(x) 2./(1+x.*x);

a = 0;
b = 1;

eps = 1e-4;
actual = pi/2;

k=0;
res = romberg(a,b,f,k);
while abs(res-actual) > eps
  k = k+1;
  res = romberg(a,b,f,k);
endwhile

k
res

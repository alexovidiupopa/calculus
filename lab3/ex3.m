## Popa Alex Ovidiu, 936/1, pb3

clear 

f = @(a) (1 + cos(pi*a)) ./ (1 + a);

x = linspace(0, 10, 21); ## take the 21 wanted points
y = f(x); # evaluate the function on each point from the interval

xx = linspace(0, 10, 50);  ## take another set of equidistant points in [0,10]

plot(xx, f(xx));  ## plot initial function 
hold on;

L = lagrange(x, y, xx);  ## compute in each of the new points we've taken, i.e. variable xx

plot(xx, L,'or');   ## plot the points with red circles so they can be distinguished
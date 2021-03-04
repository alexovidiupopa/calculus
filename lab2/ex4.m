## Calculus Lab 2, Ex 4, Popa Alex Ovidiu 936/1
## Below you have a call example: 
##  x1 = 1:0.25:2.5;
##  f1 = @(x1) sqrt(5 * x1.^2 + 1);
##  t4 = ex4(x1, f1)

function finite_diff = ex4(x, f)
  n = length(x);
  finite_diff = [f(x)', zeros(n, n-1)]; % append values of f(x) as a column vector at the start, one less column since we already have f
  for k = 2:n   # loop the triangle above the secondary diagonal of the matrix
    for i = 1:n-k+1
      finite_diff(i,k) = finite_diff(i+1, k-1) - finite_diff(i, k-1); # recurrence formula
    endfor
  endfor
  finite_diff = [x', finite_diff]; # append the values of x as a column vector 
endfunction


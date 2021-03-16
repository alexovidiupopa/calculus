## Calculus Lab 2, Ex 5, Popa Alex Ovidiu 936/1
## Below you have a call example: 
##  x2 = [2 4 6 8];
##  f2 = [4 8 14 16];
##  t5 = ex5(x2, f2)

function div_diff = diff(x, f)
  n = length(x)
  div_diff = [f', zeros(n, n-1)]; % append values of f as a column vector at the start, one less column since we already have f
  for k = 2:n  # loop the triangle above the secondary diagonal of the matrix
    for i = 1:n-k+1
      div_diff(i,k) = (div_diff(i+1,k-1)-div_diff(i,k-1))/(x(i+k-1)-x(i)); # recurrence formula
    endfor
  endfor

endfunction
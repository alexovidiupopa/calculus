function c = cheby(n, x)
  if n == 0
    c = 1;
  elseif n == 1
    c = x;
  else 
    c = 2 * x .* cheby(n-1,x) - cheby(n-2,x);
  endif
endfunction
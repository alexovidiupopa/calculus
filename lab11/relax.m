function X = relax(A, b, eps, N, omega)
  [m, n] = size(A);
   nr_it = 0;
   xJ_old = zeros(m,1);
   xJ_new = xJ_old;
   disp("relax");
   while nr_it < N
  
      for i=1:m
        suma1 = 0;
        for j = 1:i-1
          suma1 = suma1 + A(i, j) * xJ_new(j);
        endfor
        suma2 = 0;
        for j = i+1:n
          suma2 = suma2 + A(i, j) * xJ_old(j);
        endfor
         xJ_new(i) = (omega ./ A(i, i)) .* (b(i) - suma1 - suma2) + (1 - omega) .* xJ_old(i);
      endfor
  
     if abs(xJ_new - xJ_old) < eps
        fprintf('Numarul de iteratii:%d\n', nr_it)
        X = xJ_new
        return
      end
   xJ_old=xJ_new;
   nr_it = nr_it + 1;  
   
   endwhile
   disp("error")
   return
endfunction
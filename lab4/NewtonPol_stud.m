function N=NewtonPol_stud(x,f,xx)
% x - nodes
% f - the values of the function calc in x
% xx - value of approx

##x=[1 1.5 2 3 4];
##f=[0 0.17609 0.30103 0.47712 0.60206];
##xx=[2.5, 3.25];


n=length(x)-1;

% divided differences table
m=diff(x, f);

% approximation of function f at points in x using Newton interpolation 
% polynomial with the nodes from vector x
lx=length(xx);
p=ones(1,lx);
s=m(1,1)*ones(1,lx);
for j=1:lx
  for i=1:n
    p(j)=p(j)*(xx(j)-x(i));
    s(j)=s(j)+p(j)*m(1,i+1);
  end
end

N=s;

endfunction

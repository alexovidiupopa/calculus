A = [6 2 1 -1;2 4 1 0; 1 1 4 -1;-1 0 -1 3];

[m,n]=size(A);

U=zeros(m);
L=zeros(m);

% initialize
for j=1:m
    L(j,j)=1;
endfor
for j=1:m
    U(1,j)=A(1,j);
endfor

% compute matrices
for i=2:m
    for j=1:m
        for k=1:i-1  % triangle under the diagonal
            s1=0;
            if k!=1
              for p=1:k-1
                s1=s1+L(i,p)*U(p,k);
              endfor       
            endif
            L(i,k)=(A(i,k)-s1)/U(k,k);
         endfor
         for k=i:m   % triangle above the diagonal
           s2=0;
           for p=1:i-1
               s2=s2+L(i,p)*U(p,k);
           endfor
           U(i,k)=A(i,k)-s2;
         endfor
    endfor
endfor

L
U

b = [8;7;5;1];

jacobi(A,b,1e-4,100);
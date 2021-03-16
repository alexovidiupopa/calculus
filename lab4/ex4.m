x = [64 81 100 121 144 169];
y = [8 9 10 11 12 13];

a = 115;

ans = AitkenPol_stud(x,y,a)

err = abs(ans-sqrt(a))
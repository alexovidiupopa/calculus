printf("bonus a\n");
for k = 10:15
  cond(vander(1 ./ 1:k))
end

printf("bonus b\n");
for k = 10:15
  cond(vander(-1 + (2 / k) * (1:k)))
end

function ret = false_position(f, a, b, err)
  for n = 1:1000
    c = (a * f(b) - b * f(a)) / (f(b) - f(a));
    if abs(f(c)) < err
      n
      break
    end
    if f(a) * f(c) <= 0
      b = c;
    else
      a = c;
    end
  end
  ret = c
end
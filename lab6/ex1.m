
x = [0, pi / 2, pi, (3 * pi) / 2, 2 * pi];
y = sin(x);

t = spline(x, [1, y, 1]);
clamped = ppval(t, pi / 4)

t1 = spline(x, y);
natural = ppval(t1, pi / 4)

interval = linspace(0,2*pi,50);

hold on;
plot(interval, sin(interval));
xx = ppval(t, interval);
plot(interval, xx);
yy = ppval(t1, interval);
plot(interval, yy);


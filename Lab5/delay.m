t = -10:1:10;
x1 = (t >= -2 & t < 4);
x2 = (t >= -6 & t < 8);
x = x1 + x2;

d1 = (t >= -1 & t < 5);
d2 = (t >= -5 & t < 9);
d = d1 + d2;

corr = xcorr(d, x);
t2 = -20:1:20;
% z = -length(x):1:length(x);
subplot(3, 1, 1); plot(t,x);
subplot(3, 1, 2); plot(t, d);
subplot(3, 1, 3); plot(t2,corr);

dd = 1;
for i = 1:length(corr)
    if corr(dd) < corr(i)
        dd = i;
    end
end

dd = dd - 21
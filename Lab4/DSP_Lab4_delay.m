t = 0 : 30 : 360;
x = [1 2 3 4];
y = sin(t - 10);

r = xcorr(x, y);
delay = 1;
i = 1;
for v = r
    if v > r(delay)
        delay = i;
    end
    i = i + 1;
end
delay
subplot(3, 1, 1); plot(x); title('X(t)');
subplot(3, 1, 2); plot(y); title('Y(t)');
subplot(3, 1, 3); plot(r); title('Correlation');
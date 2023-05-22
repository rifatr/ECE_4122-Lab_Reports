xsize = input('size of x = ');
hsize = input('size of h = ');
n = xsize + hsize - 1;
x = input('x = ')
h = input('h = ')

y = zeros(1, n);

for i = 1:xsize
    j = 1; k = i;
    while j <= xsize && k > 0
        y(i) = y(i) +  (x(j) * h(k));
        j = j + 1; k = k - 1;
    end
end

for i = 1 : hsize - 1
    j = i + 1; k = hsize;
    while j <= xsize && k > 0
        y(i + xsize) = y(i + xsize) +  (x(j) * h(k));
        j = j + 1; k = k - 1;
    end
end


y

subplot(2, 2, 1); stem(x, 'marker', 'o');
title('X(n)');
subplot(2, 2, 3); stem(h, 'marker', 'o');
title('H(n)');
subplot(2, 2, 2); stem(conv(x, h), 'marker', 'o');
title('Convulation Function');
subplot(2, 2, 4); stem(y, 'marker', 'o');
title('Convulation Y(n)');
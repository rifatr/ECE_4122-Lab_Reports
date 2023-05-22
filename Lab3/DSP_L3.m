size = input('size of signals = ');
x = input('x = ');
h = input('h = ');
xmat = zeros(size, size);
hmat = zeros(size, 1);
for i = 1:size
   hmat(i, 1) = h(i);
end

for i = 1:size
    for j = 1:size
        xmat(j, i) = x(j);
    end
    y = x(size);
    for j = size:-1:2
        x(j) = x(j - 1);
    end
    x(1) = y;
end

result = xmat * hmat
subplot(3, 1, 1); stem(x, 'marker', '.'); title('X(n)');
subplot(3, 1, 2); stem(h, 'marker', '.'); title('H(n)');
subplot(3, 1, 3); stem(result, 'marker', '.'); title('Circular Convoluted Result');
%cross corelation for different size
size = input('size of x = ');
x = input('x = ');
size2 = input('size of y = ');
y = input('y = ');
r = zeros(1, size + size2 - 1);
p = 1;
for k = size2:-1:1
   for i = k:size2
       if i - k + 1 > size
           break
       end
      r(p) = r(p) + y(i) * x(i - k + 1); 
   end
   p = p + 1;
end

for k = 2:size
   for i = k:size
        if i - k + 1 > size2
           break
       end
       r(p) = r(p) + x(i) * y(i - k + 1);
   end
   p = p + 1;
end

r
rfun = xcorr(x, y)
subplot(2, 2, 1); stem(x); title('X[n]');
subplot(2, 2, 2); stem(y); title('Y[n]');
subplot(2, 2, 3); stem(r); title('R[n]');
subplot(2, 2, 4); stem(rfun); title('R[n] from function');
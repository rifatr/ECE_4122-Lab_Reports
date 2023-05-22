%auto corelation
size = input('size of x = ');
x = input('x = ');
y = x;
r = zeros(1, size * 2 - 1);
p = 1;
for k = size:-1:1
   for i = k:size
      r(p) = r(p) + y(i) * x(i - k + 1); 
   end
   p = p + 1;
end

for k = 2:size
   for i = k:size
       r(p) = r(p) + x(i) * y(i - k + 1);
   end
   p = p + 1;
end

r
rfun = xcorr(x)
subplot(3, 1, 1); stem(x); title('X[n]');
subplot(3, 1, 2); stem(r); title('R[n]');
subplot(3, 1, 3); stem(rfun); title('R[n] from function');

%cross corelation
size = input('size of x = ');
x = input('x = ');
y = input('y = ');
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
subplot(2, 2, 1); stem(x);
subplot(2, 2, 2); stem(y);
subplot(2, 2, 3); stem(r);

rfun = xcorr(x, y);
subplot(2, 2, 4); stem(rfun);
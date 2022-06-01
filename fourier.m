close all;
clear all;
clc;
n = 100;
x= 0:0.1:2*pi;
f= zeros(1,length(x));

for i = 1:2:n
  b=(4/(i*pi))*sin(i*pi*x/(pi));
  f=f+b;
  %plot(x,f);
  %hold 'all';
  %waitforbuttonpress();
end

plot(x,f)
figure;
realpart = fft(f);
plot(abs(fftshift(realpart)));
%plot(abs(realpart));


%highpass filtering => low frequency is removed

clc
clear
clf

X = csvread('finger_center.csv',21,1,[21,1,1020,1]);
Fs = 0.1;
T = 1/Fs;
L = 1000;
t = (0:L-1)*T;

Fn = Fs/2;
FX = fft(X)/L;
Fv = linspace(0, 1, fix(L/2)+1)*Fn;
Iv = 1:length(Fv);

plot(Fv, abs(FX(Iv))*2)
grid
title('FFT of finger tapping signal')
xlabel('Frequency (Hz)')
ylabel('Amplitude')
%Convolution plotter for 2 signals written for MATLAB by Jacopx
%GPL-3.0 License
%Change input signal for calculating new convolution

clear all
close all
clc

%Limits
s=.01; a=-7; b=7;
t = a:s:b;

%SIGNAL:
y1=rectangularPulse(-2,2,t); %first
%y1=triangularPulse(t);
%y1=sinc(t);
y2=rectangularPulse(-3,3,t); %second

%Plot original signal
subplot(1,2,1);
plot(t,y1,'r',t,y2,'b','LineWidth',2);
title('Original Signal'); %Graph Title
grid on  

%CONVOLUTION
y=s*conv(y1,y2,'same'); 

%Plot convolution on the correct space
subplot(1,2,2);
plot(t,y,'g','LineWidth',2); 
title('Convolution Result'); %Graph Title
grid on
 //Butterworth low-pass filter program
 
clc;
clear all;
close all;
alphas =30;
alphap = 0.5;
fpass = 1000;
fstop = 1500;
fsam = 5000;
wp=2*fpass/fsam;
ws=2*fstop/fsam;
[n,wn] = buttord(wp,ws,alphap,alphas);
[b,a] = butter(n,wn);
[h,w] = freqz(b,a);
subplot(2,1,1); 
plot(w/pi,20*log10(abs(h)));
xlabel('Normalized Frequency');
ylabel('Gain in db');
title('Magnitude response');
subplot(2,1,2);
plot(w/pi,angle(h));
xlabel('Normalized Frequency');
ylabel('Phase in radian');
title('Phase response');

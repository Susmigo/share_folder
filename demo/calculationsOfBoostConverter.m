Vinmin=50; %minimum out voltage available at rectifier output
Vout=400; %DC-DC converters output
Po=12000; %The power rating of the DC-DC converter
%the switching frequency (fs)
fs=20000;
%The efficiency(n) of the DC-DC converter 
n=0.95;

D=(1-(Vinmin*n)/Vout); %D is the dutycycle of the DC-DC converter 
Io=Po/Vout;
%input current ripple (dI)
Ioriple=0.2; % 20%-40%of the output current 
dI=Ioriple*Io*(Vout/Vinmin);
% Output voltage ripple(dV)
% Iam considering 0.5% voltage variations in output voltage,
% standard is 0.5%-1%.

dV=Vout*0.5/100;
% the inductance value(L)
L=((Vinmin )*(Vout-Vinmin))/(dI*fs*Vout);
%the capacitancde value (C)
C=(Io*D)/(fs*dV);

%minimum load to be appiled more than of
RL=(Vout/Io);
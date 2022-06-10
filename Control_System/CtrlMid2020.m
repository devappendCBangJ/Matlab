%prob 6
clear all; close all;
K = 1; tau1 = 2; tau2 = 0.5;

s = tf('s');
P = 10 /(s+10)*(s+6)/(s*(s^2+3*s+6));

% slow pilot
tauslow = 0.6
Cslow = -(K*(tau1*s+1)*(tauslow*s-2))/((tau2*s+1)*(tauslow*s+2));
Tslow = feedback(Cslow*P,1)
figure; step(Tslow); legend('Slow pilot');
stepinfo(Tslow)

isstable(Tslow)
pole(Tslow)
% pzmap(Tslow)

% fast pilot
taufast = 0.1
Cfast = -(K*(tau1*s+1)*(taufast*s-2))/((tau2*s+1)*(taufast*s+2));
Tfast = feedback(Cfast*P,1)
figure; step(Tfast); legend('Fast pilot');
stepinfo(Tfast)

isstable(Tfast)
pole(Tfast)
% pzmap(Tfast)
%% Control System Toolbox
% Tools to manipulate LTI(linear time invariant) models
% 
% Classical analysis and design -Bode, Nyquist, Nichols diagrams -Step and impulse 
% response -Gain/phase margins -Root locus design
% 
% Modern state-space techniques -Pole placement -LQG regulation
%% LTI Objects (Linear Time Invariant)
% 4 basic types of LTI models
% 
% -Transfer Function (TF)
% 
% -Zero-pole-gain model (ZPK)
% 
% -State-Space models (SS)
% 
% -Frequency response data model (FRD)
% 
% 
% Transfer Function
% ?Consider a linear time invariant (LTI) single-input/single-output system
% 
% yกวกว+6yกว+5y=4uกว+3u
% 
% ?Applying Laplace Transform to both sides with zero initial conditions
% 
% 

num = [4 3]
den = [1 6 5]
sys1 = tf(num,den)
[num,den] = tfdata(sys1,'v')
%% 
% alternatively

s=tf('s')
sys2=(4*s+1)/(s^2+6*s+5)
% Zero-pole-gain model 
% 
% 
% 

sys3 =  zpk(-0.75,[-1 -5],4) 
[myzero,mypole,myk] = zpkdata(sys3,'v')
% 
% State-space model 
% 
% 
% 

sys4 = ss([0 1; -5 -6],[0;1],[3,4],0)
%% 
% rss, drss - Random stable state-space models.
% 
% ss2ss - State coordinate transformation.
% 
% canon - State-space canonical forms.
% 
% ctrb - Controllability matrix.
% 
% obsv - Observability matrix.
% 
% gram - Controllability and observability gramians.
% 
% ssbal - Diagonal balancing of state-space realizations.
% 
% balreal - Gramian-based input/output balancing.
% 
% modred - Model state reduction.
% 
% minreal - Minimal realization and pole/zero cancellation.
% 
% sminreal - Structurally minimal realization.
% 
% 
%% *Conversion between different models*
% 
% 
% 
%% Model Dynamics
% pzmap: Pole-zero map of LTI models.
% 
% pole, eig: System poles
% 
% zero: System (transmission) zeros.
% 
% dcgain: DC gain of LTI models.
%% 
%% Time Response of Systems
% Impulse Response (impulse) 
% 
% Step Response (step) 
% 
% General Time Response (lsim) 
% 
% 

clear all;
s=tf('s');
G=(3*s+2)/(2*s^3+4*s^2+5*s+1)
impulse(G)

step(G)

t=0:0.1:35;
u=sin(0.5*t)
lsim(G,u,t)
%% 
% 
% 
% Polynomial multiplication (conv) 
% 
% Polynomial division (deconv) 
% 
% Partial Fraction Expansion (residue) 
% 
% gensig - Generate input signal for lsim.
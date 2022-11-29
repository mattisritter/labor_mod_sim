%% Data file
clear all;
%% Robot
P_m1 = 10; % elbow motor mass [ kg ]
P_m2 = 10; % robot load mass [ kg ]
P_l1 = 0.8; % upper arm length [ m ]
P_l2 = 0.7; % lower arm length [ m ]
P_g = 9.81; % gravity [ m/s^2 ]

%% Initialstate x_0
x_0 = [pi; pi/2; 0; 0];

%% Simulation parameter
P_rt = 1e-6; % relative tolreance of solver
P_Ts = 1/60; % sample time [ s ]

%% Stationary state
u_2s = P_m2*P_g*P_l2*sin(x_0(2)); % elbow motormoment [Nm]
u_1s = (P_m1+P_m2)*P_g*P_l1*sin(x_0(1)) + u_2s; % shoulder motormoment [Nm]
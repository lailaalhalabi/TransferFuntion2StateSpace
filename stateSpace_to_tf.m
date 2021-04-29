%% Written by Laila Alhalabi, State Space to Transfer Function
clc
disp('##########################################');
disp('#### State Space to Transfer Function ####');
disp('##########################################');
%% Declaring the state space
% numbers should be modified before running
A = [-1 1 0; 1 0 -1; -5 -25 -5]; 
B = [0; 0; 14];
C = [1 0 1]; 
D = [0];
%% Generating the function
[num,den] = ss2tf(A,B,C,D);
disp(' ');
disp('The transfer function of the given state space is:');
sys = tf(num,den)
%% Stability
disp(' ');
disp('Stabiltity:');
if isstable(tf(num,den))
    disp('   - stable');
else
    disp('   - not stable');
end
%% Poles & Zeros
disp(' ');
disp('The system poles & zeros:');
poles = pole(sys)
zeros = zero(sys)


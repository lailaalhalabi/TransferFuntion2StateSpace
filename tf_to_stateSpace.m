%% Written by Laila Alhalabi, Transfer Function to State Space
clc
disp('##########################################');
disp('#### State Space to Transfer Function ####');
disp('##########################################');
%% Declaring the transfer function
% numbers should be modified before running
num = [1]; den = [1 6 11 6]; 
f = tf(num,den)
%% Generating the state space
[A,B,C,D] = tf2ss(num,den);
disp(' ');
disp('The state space of the given transfer function is:');
disp('A =');
disp(flip(flip(A,2)));
disp('B =');
disp(flip(flip(B,2)));
disp('C =');
disp(flip(C));
disp('D =');
disp(flip(D));
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
poles = pole(f)
zeros = zero(f)




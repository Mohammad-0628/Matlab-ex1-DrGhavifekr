clc;
clear;

%first part
syms s t
Is = 12 / (s * (4 + 0.2*s));

%second part
it = ilaplace(Is);
disp('Time domain current i(t):');
disp(it);

%third part
I11 = double(subs(it, t, 0.1));
I1  = double(subs(it, t, 1.0));
fprintf('Current at t = 0.1 s: %.4f A\n', I11);
fprintf('Current at t = 1.0 s: %.4f A\n', I1);

%last part
IS = double(limit(it, t, inf));
IT = 12 / 4;
fprintf('Steady-state current via limit: %.4f A\n', IS);
fprintf('Theoretical current (V/R):       %.4f A\n', IT);
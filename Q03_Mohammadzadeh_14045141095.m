 clear;
 clc;
 %Question 3 - Ohm's law Calculator
 
 %Part A
 V = input('Enter the voltage : ');
 R = input('Enter the resistance : ');

 %Part B
 C = V / R;
 P = C * V;

 %Part C
 fprintf('Current = %.4f A \n', C);
 fprintf('Powewr = %.4f W \n' , P);
 
 %Part D
 %When you run the code and enter 12 and 820, the output is:
 %Current = 0.0146 A
 %Power = 0.1756 W
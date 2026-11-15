clear 
clc

for j=3:2:34
    disp(j)
end
k=3;
while (k<=34)
    disp(k);
    k=k+2;
end

syms x n k l
x=input('enter your variable\n');
n=input('enter ypur power\n');
sum=0;
for m=1:n
    sum1=sum+((2/x)^m);
end
disp(sum1)

 
V=0;
I=0;
while abs(500-V)>5
    V=V+0.1*(500-V)
    I=I+1;
end
fprintf('display %f and %f ', I,V);
clc
%%Medidas de rendimiento

num = 9;
den = [1 3 9];
GA = tf(num, den);

step(GA)
stepinfo(GA)
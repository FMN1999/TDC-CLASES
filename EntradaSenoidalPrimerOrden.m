%Defino la función senoidal
t = 0:0.1:10;
u = 5*sin(t);
num = 1;
den = [5 1];
G = tf(num, den);

%Defino entrada senoidal
lsim(G,u,t)
title('respuesta SPO entrada senoidal');
xlabel('tiempo');
ylabel('amplitud');
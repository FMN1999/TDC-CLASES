clc
%% Sistemas sobreamortiguados
p1 = 1;

%Sistema de primer orden
z = '';
p = -p1;
k = p1;
[num,den] = zp2tf(z,p,k);
GA = tf(num,den);

%Sistema de Segundo Orden
p2 = 2;
z = '';
k = p1*p2;
p = [-p1, -p2];
[num,den] = zp2tf(z,p,k);
GB = tf(num,den);

p2 = 50;
z = '';
k = p1*p2;
p = [-p1, -p2];
[num,den] = zp2tf(z,p,k);
GC = tf(num,den);

step(GA,GB,GC)
title('Respuesta al escalón - Sobreamortiguado')
ylabel('Amplitud')
xlabel('Tiempo')
legend('GA(t) - Primer Orden','GB(t) - Segundo Orden','GC(t) - Segundo Orden con polos entre -1 y -50')

%% Sistema críticamente amortiguado


%Sistema de primer orden
p1 = 1;
z = '';
p = -p1;
k = p1;
[num,den] = zp2tf(z,p,k);
GA = tf(num,den);

%Sistema de Segundo Orden
p2 = 1;
z = '';
k = p1*p2;
p = [-p1, -p2];
[num,den] = zp2tf(z,p,k);
GB = tf(num,den);

p2 = 2;
z = '';
k = p1*p2;
p = [-p1, -p2];
[num,den] = zp2tf(z,p,k);
GC = tf(num,den);

step(GA,GB,GC)
title('Respuesta al escalón - Criticamente Amortiguado')
ylabel('Amplitud')
xlabel('Tiempo')
legend('GA(t) - Primer Orden','GB(t) - Segundo Orden','GC(t) - Segundo Orden con polos entre -1 y -2')


%% Sistemas subamortiguados

%Variando Parte real
p1 = 0.2 + 3i;
p2 = 0.2 - 3i;
z = '';
p = -p1;
k = p1;
[num,den] = zp2tf(z,p,k);
GA = tf(num,den);


p1 = 0.8 + 3i;
p2 = 0.8 - 3i;
z = '';
p = -p1;
k = p1;
[num,den] = zp2tf(z,p,k);
GB = tf(num,den);

p1 = 1.7 + 3i;
p2 = 1.7 - 3i;
z = '';
p = -p1;
k = p1;
[num,den] = zp2tf(z,p,k);
GC = tf(num,den);

figure(1)
step(GA,GB,GC)
title('Respuesta al escalón - Subamortiguado - Variando Parte Real')
ylabel('Amplitud')
xlabel('Tiempo')
legend('GA(t) - PR -0.2','GB(t) - 0.8', 'GC(t) -PR -1.7')

%Variando Parte imaginaria
p1 = 1 + 2i;
p2 = 1 - 2i;
z = '';
p = -p1;
k = p1;
[num,den] = zp2tf(z,p,k);
GA = tf(num,den);


p1 = 1 + 3i;
p2 = 1 - 3i;
z = '';
p = -p1;
k = p1;
[num,den] = zp2tf(z,p,k);
GB = tf(num,den);

p1 = 1 + 4i;
p2 = 1 - 4i;
z = '';
p = -p1;
k = p1;
[num,den] = zp2tf(z,p,k);
GC = tf(num,den);

figure(2)
step(GA,GB,GC)
title('Respuesta al escalón - Subamortiguado - Variando Parte Imaginaria')
ylabel('Amplitud')
xlabel('Tiempo')
legend('GA(t) - PI 2','GB(t)- PI 3', 'GC(t) -PI 4')
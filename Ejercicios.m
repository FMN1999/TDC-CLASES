%% Ejercicio 7
hold on;

wn =2;
z=0.1;

num = wn^2;
den =  [(1) (2*z*wn) (wn^2)];

G= tf(num,den);

wn =2;
z=0.7;

num = wn^2;
den =  [(1) (2*z*wn) (wn^2)];

G1= tf(num,den);

%Variando el valor de Z a 1
wn =2;
z=1;

num = wn^2;
den =  [(1) (2*z*wn) (wn^2)];

G2= tf(num,den);

impulse(G,G1,G2)

xlabel('Tiempo')
ylabel('Amplitud')
title('Sistema de Segundo Orden - Variando Z')
legend('Z = 0.1','Z = 1','Z = 2')

figure(2);
pzmap(G,G1,G2)
hold off;

%% Ejercicio 8

hold on;
z = '';
k = 1;
p=[-2.5 +3.5824i, -2.5 - 3.5824i];
[num, den]= zp2tf(z,p,k);
G1 = tf(num,den);

%variando la parte real de p a -1.5
z = '';
k = 1;
p=[-1.5 +3.5824i, -1.5 - 3.5824i];
[num, den]= zp2tf(z,p,k);
G2 = tf(num,den);

%variando la parte real de p a -0.5
z = '';
k = 1;
p=[-0.5 +3.5824i, -0.5 - 3.5824i];
[num, den]= zp2tf(z,p,k);
G3 = tf(num,den);

impulse(G1, '-b', G2, '-r', G3, '-g');
xlabel('Tiempo')
ylabel('Amplitud')
title('Función impulso de Segundo Orden - Variando la parte real (p)')
legend('p = -2.5', 'p = -1.5', 'p = -0.5')

%%
hold on;
z = '';
k = 1;
p=[-2 +3.5i, -2 - 3.5i];
[num, den]= zp2tf(z,p,k);
G1 = tf(num,den);

%variando la parte imaginaria de a -1.5
z = '';
k = 1;
p=[-2 +5i, -2 - 5i];
[num, den]= zp2tf(z,p,k);
G2 = tf(num,den);

%variando la parte imaginaria a -0.5
z = '';
k = 1;
p=[-2 +6.5i, -2 - 6.5i];
[num, den]= zp2tf(z,p,k);
G3 = tf(num,den);

impulse(G1, '-b', G2, '-r', G3, '-g');
xlabel('Tiempo')
ylabel('Amplitud')
title('Función impulso de Segundo Orden - Variando la parte real (p)')
legend('p = -3.5', 'p = -5', 'p = -6.5')
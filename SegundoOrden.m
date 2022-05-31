%% Sistemas sobreamortiguados
clc
z = '';
p1 = 1;
p2 = 6;

%Sistema de segundo orden
p = [-p1, -p2];
k=p1*p2;
[num, den]=zp2tf(z,p,k);
GSA=tf(num,den);

p2=50;
p = [-p1, -p2];
k=p1*p2;
[num, den]=zp2tf(z,p,k);
GSA1=tf(num,den);

%Sistema de primer orden
k=p1;
p = -p1;
[num, den]=zp2tf(z,p,k);
GPO = tf(num,den);
step(GSA, GSA1,GPO)


%% Sistemas subamortiguados variando parte real
clc
z = '';
p1 = 0.2+3i;
p2 = 0.2-3i;
p = [-p1, -p2];
k=p1*p2;
[num, den] = zp2tf(z,p,k);
GSubA1=tf(num, den);

p1 = 0.8+3i;
p2 = 0.8-3i;
p = [-p1, -p2];
k=p1*p2;
[num, den] = zp2tf(z,p,k);
GSubA2=tf(num, den);

p1 = 1.7+3i;
p2 = 1.7-3i;
p = [-p1, -p2];
k=p1*p2;
[num, den] = zp2tf(z,p,k);
GSubA3=tf(num, den);

step(GSubA1)
%step(GSubA1, GSubA2, GSubA3)
title('Respuesta al Escalón - varía parte real de polos')
ylabel('Amplitud')
xlabel('Tiempo')
%legend('CSubA1(t) Sigma=0.2', 'CSubA2(t) Sigma=0.8','CSubA3(t) Sigma=1.7')

%% Sistemas subamortiguados variando parte imaginaria
clc
z = '';
p1 = 1+2i;
p2 = 1-2i;
p = [-p1, -p2];
k=p1*p2;
[num, den] = zp2tf(z,p,k);
GSubA1=tf(num, den);

p1 = 1+3i;
p2 = 1-3i;
p = [-p1, -p2];
k=p1*p2;
[num, den] = zp2tf(z,p,k);
GSubA2=tf(num, den);

p1 = 1+4i;
p2 = 1-4i;
p = [-p1, -p2];
k=p1*p2;
[num, den] = zp2tf(z,p,k);
GSubA3=tf(num, den);

step(GSubA1, GSubA2, GSubA3)
title('Respuesta al Escalón - varía parte imaginaria de polos')
ylabel('Amplitud')
xlabel('Tiempo')
legend('CSubA1(t) Wd=2', 'CSubA2(t) Wd=3','CSubA3(t) Wd=4')

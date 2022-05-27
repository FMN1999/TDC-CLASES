clc
%hold on Para que el step(G2) no pise el primer step
T1 = 0.1;
T2 = 0.2;

num = 1;
den = [T1 1]; %Con ; no muestra las vriables, sin ese sí
G1 = tf(num, den) %tf crea una función de transferencia con ese númerador y denominador

den = [T2 1]; %Con ; no muestra las vriables, sin ese sí
G2 = tf(num, den) %tf crea una función de transferencia con ese númerador y denominador
step(G1) %Es multiparametro paa que se puedan ingresar vrias graficas
%step(G2)
title('Respuesta al escalón - Sistemas de Primer Orden')
ylabel('Amplitud')
xlabel('Tiempo')
legend('C1(t) Tau 0.1')
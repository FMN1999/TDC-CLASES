%Clase 11/04/2022

%step multiplica la funciòn de transferencia por 1/s.

%% Ejercicio 1

clc;
num = [1];
dem = [1 2 3 4 5];

%Defino funciòn de transferencia
FTLC = tf(num, dem);

figure(1); %Grafico la salida en este primer gràfico


%Si quiero usar step en este caso, debo multiplicar por s. Al usarla, se me
%cancela


%Uso la funciòn de impulse, para evitar los mambos de la funciòn step
impulse(FTLC);

%Defino los lìmites del eje x
xlim([0 10]);


%Defino los lìmites del eje x
ylim([-2 2]);

title('Respuesta del sistema a una entrada impulso');

ylabel('Amplitud');
xlabel('Tiempo');

%La salida es C(t)
legend('C(t)');



%Gràfico 2. El figure hace 2 gràficas distintas.
%Aquì grafico polos y ceros
figure(2);

%Mapa de polos y ceros
pzmap(FTLC);


%% Caso especial 1

clc;
% C/R. Buscamos los polos, por ende, el numerador es 1.

num = [1];
dem = [1 2 1 2];

FTLC = tf(num, dem);

figure(1);

impulse(FTLC);

xlim([0 20]);
ylim([-0.5 0.5]);

ylabel('Amplitud');
xlabel('Tiempo');

legend('C(t)');

figure(2);

%Mapa de polos y ceros
pzmap(FTLC);


%% Caso especial 2

clc; 

num = [1];
dem = [1 2 24 48 -25 -50];

FTLC = tf(num, dem);

figure(1);

impulse(FTLC);

xlim([0 10]);
ylim([0 1.2]);

ylabel('Amplitud');
xlabel('Tiempo');

legend('C(t)');

figure(2);

%Mapa de polos y ceros
pzmap(FTLC);
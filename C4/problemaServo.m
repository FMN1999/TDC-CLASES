%% Problema servo

%Defino numerador y deno9minador

num = [18];
den = [1 2 26];

%El error està entre el 1 y lo de arriba

% 1 - 0.692 = 0.308 (Error)

FTLC = tf(num, den);

%El 1 es por ser una entrada escalòn
figure(1);
hold on;
step(FTLC);

%Creo la funciòn de 'unos', con 201 unos. Es un vector 
%con 201 unos
u = ones(201);

%Defino el intervalo de 0  a 20,  con intervalos de 0.1
t = 0:0.1:20;

%Grafico
plot(t, u);

title('Respuesta a una entrada escalòn - Problema SERVO');
ylabel('Amplitud');
xlabel('Tiempo');
legend('C(t)');




figure(2);
pzmap(FTLC);


%% Problema regulador

num = [9];
den = [1 2 26];

FTLC = tf(num, den);

figure(1);
hold on;
step(FTLC);

u = ones(201);

%El error està entre el grafiquito y lo de abajo.

%Error = -0.346 porque se pasò, por eso es negativo.
%Aca R vale 0!!!!!

t = 0:0.1:20;

plot(t, u);

title('Respuesta a una entrada escalòn - Problema SERVO');
ylabel('Amplitud');
xlabel('Tiempo');
legend('C(t)');
xlim([0 10]);
ylim([0 1.2]);

figure(2);
pzmap(FTLC);


%% Section 1
num = [1 3]; % Coeficientes del Numerador
den = [1 0 1]; % Coeficientes del Denominador
FT1 = tf(num,den); % Se genera la función

%% Section 2
z = [ ]; %Ceros del Numerador
k = 1; %Valor de la constante del Numerador
p = [-1 1]; % Polos del Denominador
[num, den] = zp2tf(z,p,k); % Devuelve las variables con los respectivos coeficientes, a partir de los zeros y polos  
FT2 = tf(num,den); 

%% Section 3 
s = tf("s");
funcion = (s+3)/(s^2+1);
pole(funcion) %para ver los polos
%ceros(funcion) %para ver los ceros

%% Section 4

num = 1;
A = 5;
T = 0.1;
den = [T 1];
G = tf(num,den);
step(A*G) 

%% Section 5

num = 1;
A = 5;
T = 0.1;
den = [T 1];
G1 = tf(num,den);
step(A*G1) 

hold on % Espera para graficar las 2 funciones
num = 1;
A = 5;
T = 0.2;
den = [T 1];
G2 = tf(num,den);
step(A*G2) 
# EXERCICIO 1.1 (1)


    x = linspace(-3, 3, 500);
    y = f(x);

    clf();
    //Plota a função f(x) em azul                   
    plot(x, y, 'b-');         
    xgrid();                  
    xlabel("x");
    ylabel("f(x)");
    titulo = msprintf("Gráfico da função com intervalo [%g, %g] destacado", a, b);
    title(titulo);

    //Destaca intervalo [a, b]
    xx = linspace(a, b, 100);
    yy = f(xx);
    plot(xx, yy, 'r', 'LineWidth', 5);  //linha vermelha no intervalo [1,2]
    plot(xm, f(xm), 'ko');  

# EXERCICIO 1.1 (2)

    // Corrected plotting range
    x_start = 0.2;  // Start slightly left of 0.5
    x_end = 1.2;    // End slightly right of 1
    x = linspace(x_start, x_end, 500);
    y = f(x);  // Use the passed function f

    // Create a new figure window
    scf(0);
    clf();

    // Plot the function in blue
    plot(x, y, 'b-', 'LineWidth', 1);
    xgrid();
    xlabel("x");
    ylabel("f(x)");
    title("Gráfico de g(x) = x² + ln(x) com intervalo [0.5, 1] destacado");

    // Highlight [a, b] in red
    xx = linspace(a, b, 100);
    yy = f(xx);
    plot(xx, yy, 'r-', 'LineWidth', 3);

    // Mark the root with a black circle
    plot(xm, f(xm), 'ko', 'MarkerSize', 8, 'MarkerFaceColor', 'k');

    // Adjust axes to show the important features
    gca().data_bounds = [x_start, min(y) - 0.5; x_end, max(y) + 0.5];

# EXERCICIO 1.2 (1)
deff('y = f(x)', 'y = exp(-x) - sin(x)'); 
// Raiz aproximada (dada)
raiz_aprox = 0.588531;

// Intervalos para o gráfico
x_total = linspace(0, 4.5, 1000);
y_total = f(x_total);

x_destacado = linspace(0.5, 1, 300);
y_destacado = f(x_destacado);

// Plot do gráfico geral
clf();
plot(x_total, y_total, "b-", "LineWidth", 2);
xgrid();
xtitle("f(x) =  exp(-x) - sin(x) com intervalo [0,5;1]", "x", "f(x)");
legend(["f(x)", "Intervalo [0,5;1]"]);

// Destacar o intervalo [-1, 0] em vermelho
plot(x_destacado, y_destacado, "r-", "LineWidth", 3);

// Marcar a raiz aproximada
plot(raiz_aprox, f(raiz_aprox), "ko", "MarkerSize", 8, "MarkerFaceColor", "k");

// Opcional: linha horizontal no y=0 para ajudar visualização da raiz
plot(x_total, zeros(x_total), "k--");
# Exercicio 1.2 (2)
clc;
clear;
funcprot(0);

// Função
function y = f(x)
    y = x .* log(x) - 3.2;
endfunction

// Raiz aproximada
raiz_aprox = 2.506183;

// Geração dos dados gerais (intervalo completo)
x_total = linspace(0.1, 6, 1000);
y_total = f(x_total);

// Geração dos dados somente para o intervalo [2, 3]
x_destacado = linspace(2, 3, 300);
y_destacado = f(x_destacado);

// Plot geral da função em azul
clf();
plot(x_total, y_total, "b-", "LineWidth", 2);
xgrid();
xtitle("f(x) = x ln(x) - 3.2 com intervalo [2,3]", "x", "f(x)");
legend(["f(x)", "Intervalo [2,3]"]);

// Destaque do intervalo [2, 3] com linha vermelha sobreposta
plot(x_destacado, y_destacado, "r-", "LineWidth", 3);

// Marcar a raiz aproximada com ponto vermelho
plot(raiz_aprox, f(raiz_aprox), "ro");

# EXERCICIO 1.3 (1)
clc;
clear;
funcprot(0);

// Função
function y = f(x)
    y = cos(x) + x;
endfunction

// Raiz aproximada (dada)
raiz_aprox = -0.739090;

// Intervalos para o gráfico
x_total = linspace(-2, 1, 1000);
y_total = f(x_total);

x_destacado = linspace(-1, 0, 300);
y_destacado = f(x_destacado);

// Plot do gráfico geral
clf();
plot(x_total, y_total, "b-", "LineWidth", 2);
xgrid();
xtitle("f(x) = cos(x) + x com intervalo [-1,0]", "x", "f(x)");
legend(["f(x)", "Intervalo [-1,0]"]);

// Destacar o intervalo [-1, 0] em vermelho
plot(x_destacado, y_destacado, "r-", "LineWidth", 3);

// Marcar a raiz aproximada
plot(raiz_aprox, f(raiz_aprox), "ko", "MarkerSize", 8, "MarkerFaceColor", "k");

// Opcional: linha horizontal no y=0 para ajudar visualização da raiz
plot(x_total, zeros(x_total), "k--");

// Fim do código

# EXERCICIO 1.3 (2)

clc;
clear;
funcprot(0);

// Função
function y = g(x)
    y = exp(x) + x;
endfunction

// Intervalos para o gráfico
x_total = linspace(-2, 1, 1000);
y_total = g(x_total);

x_destacado = linspace(-1, 0, 300);
y_destacado = g(x_destacado);

// Plot geral
clf();
plot(x_total, y_total, "b-", "LineWidth", 2);
xgrid();
xtitle("g(x) = exp(x) + x com destaque em [-1,0]", "x", "g(x)");
legend(["g(x)", "Intervalo [-1,0]"]);

raiz_aprox = -0.567139 ; // Raiz aproximada conhecida

// Marcar a raiz aproximada
plot(raiz_aprox, g(raiz_aprox), "ko", "MarkerSize", 8, "MarkerFaceColor", "k");

// Destaque do intervalo [-1, 0] em vermelho
plot(x_destacado, y_destacado, "r-", "LineWidth", 3);

// Opcional: linha horizontal em y=0 para referência
plot(x_total, zeros(x_total), "k--");

// Se souber a raiz aproximada, pode marcar assim:
// raiz_aprox = -0.567143; // Exemplo hipotético
// plot(raiz_aprox, g(raiz_aprox), "ko", "MarkerSize", 8, "MarkerFaceColor", "k");

# EXERCICIO 1.4 (1)
clc;
clear;
funcprot(0);

// Função
function y = f(x)
    y = x^3 - 5;
endfunction

// Raiz aproximada
raiz_aprox = 1.709975;

// Intervalos para o gráfico
x_total = linspace(0, 2.5, 1000);
y_total = f(x_total);

x_destacado = linspace(1.0, 2.0, 300);
y_destacado = f(x_destacado);

// Plot do gráfico geral
clf();
plot(x_total, y_total, "b-", "LineWidth", 2);
xgrid();
xtitle("f(x) = x^3 - 5 com destaque no intervalo [1.0, 2.0]", "x", "f(x)");
legend(["f(x)", "Intervalo próximo à raiz"]);

// Destaque do intervalo da raiz
plot(x_destacado, y_destacado, "r-", "LineWidth", 3);

// Marcar a raiz aproximada
plot(raiz_aprox, f(raiz_aprox), "ko", "MarkerSize", 8, "MarkerFaceColor", "k");

// Linha horizontal em y = 0
plot(x_total, zeros(x_total), "k--");
# EXERCICIO 1.4 (2)
clc;
clear;
funcprot(0);

// Função
function y = g(x)
    y = x^3 - 5*x^2 + x + 3;
endfunction

// Raiz aproximada
raiz_aprox = -0.645751;

// Intervalos para o gráfico
x_total = linspace(-3, 3, 1000);
y_total = g(x_total);

x_destacado = linspace(-2.0, 0.0, 300);
y_destacado = g(x_destacado);

// Plot da função
clf();
plot(x_total, y_total, "b-", "LineWidth", 2);
xgrid();
xtitle("g(x) = x^3 - 5x^2 + x + 3 com destaque no intervalo [-2, 0]", "x", "g(x)");
legend(["g(x)", "Intervalo [-2, 0]"]);

// Destaque em vermelho do intervalo [-2, 0]
plot(x_destacado, y_destacado, "r-", "LineWidth", 3);

// Marcar a raiz aproximada
plot(raiz_aprox, g(raiz_aprox), "ko", "MarkerSize", 8, "MarkerFaceColor", "k");

// Linha horizontal em y = 0
plot(x_total, zeros(x_total), "k--");

# EXERCICIOS 1.5 (1)
clc;
clear;
funcprot(0);

// Definição da função f(x) = sin(x) - tan(x)
function y = f(x)
    y = sin(x) - tan(x);
endfunction

// Raiz aproximada
raiz_aprox = 3.141594;

// Intervalo geral para o gráfico
x_total = linspace(2.5, 4.5, 1000);
y_total = f(x_total);

// Intervalo a destacar: [3, 4]
x_destacado = linspace(3, 4, 300);
y_destacado = f(x_destacado);

// Iniciar o gráfico
clf();
plot(x_total, y_total, "b-", "LineWidth", 2);
xgrid();
xtitle("f(x) = sin(x) - tan(x) com destaque no intervalo [3, 4]", "x", "f(x)");
legend(["f(x)", "Intervalo [3, 4]"]);

// Destacar o intervalo [3, 4] com linha vermelha
plot(x_destacado, y_destacado, "r-", "LineWidth", 3);

// Marcar a raiz aproximada com ponto preto
plot(raiz_aprox, f(raiz_aprox), "ko", "MarkerSize", 8, "MarkerFaceColor", "k");

// Linha horizontal em y = 0
plot(x_total, zeros(x_total), "k--");

# EXERCICIOS 1.5 (2)
clc;
clear;
funcprot(0);

// Definir a função f(x) = exp(-x^2) - cos(x)
function y = f(x)
    y = exp(-x.^2) - cos(x);
endfunction

// Raiz aproximada
raiz_aprox = 1.447418;

// Intervalo total para o gráfico (mais amplo para visualizar melhor o comportamento da função)
x_total = linspace(0.5, 2.5, 1000);
y_total = f(x_total);

// Intervalo a destacar: [1, 2]
x_destacado = linspace(1, 2, 300);
y_destacado = f(x_destacado);

// Iniciar o gráfico
clf();
plot(x_total, y_total, "b-", "LineWidth", 2);
xgrid();
xtitle("f(x) = exp(-x^2) - cos(x) com destaque no intervalo [1, 2]", "x", "f(x)");
legend(["f(x)", "Intervalo [1, 2]"]);

// Destacar o intervalo [1, 2] com linha vermelha
plot(x_destacado, y_destacado, "r-", "LineWidth", 3);

// Marcar a raiz aproximada com ponto preto
plot(raiz_aprox, f(raiz_aprox), "ko", "MarkerSize", 8, "MarkerFaceColor", "k");

// Linha horizontal em y = 0
plot(x_total, zeros(x_total), "k--");

# EXERCICIOS 1.6 (1)
clc;
clear;
funcprot(0);

// Definir a função g(x) = x^3 - x - 1
function y = g(x)
    y = x.^3 - x - 1;
endfunction

// Raiz aproximada
raiz_aprox = 1.324718;

// Intervalo total para o gráfico (amplo)
x_total = linspace(0.5, 2.5, 1000);
y_total = g(x_total);

// Intervalo destacado [1, 2]
x_destacado = linspace(1, 2, 300);
y_destacado = g(x_destacado);

// Iniciar o gráfico
clf();
plot(x_total, y_total, "b-", "LineWidth", 2);
xgrid();
xtitle("g(x) = x^3 - x - 1 com destaque no intervalo [1, 2]", "x", "g(x)");
legend(["g(x)", "Intervalo [1, 2]"]);

// Destacar intervalo [1, 2] com linha vermelha
plot(x_destacado, y_destacado, "r-", "LineWidth", 3);

// Marcar a raiz aproximada com ponto preto
plot(raiz_aprox, g(raiz_aprox), "ko", "MarkerSize", 8, "MarkerFaceColor", "k");

// Linha horizontal em y = 0
plot(x_total, zeros(x_total), "k--");

# EXERCICIOS 1.6 (2)
clc;
clear;
funcprot(0);

// Definir a função h(x) = 4*sin(x) - exp(x)
function y = h(x)
    y = 4 * sin(x) - exp(x);
endfunction

// Raiz aproximada
raiz_aprox = 0.370560;

// Intervalo total para melhor visualização
x_total = linspace(-0.5, 1.5, 1000);
y_total = h(x_total);

// Intervalo destacado [0, 1]
x_destacado = linspace(0, 1, 300);
y_destacado = h(x_destacado);

// Iniciar o gráfico
clf();
plot(x_total, y_total, "b-", "LineWidth", 2);
xgrid();
xtitle("h(x) = 4*sin(x) - e^x com destaque no intervalo [0, 1]", "x", "h(x)");
legend(["h(x)", "Intervalo [0, 1]"]);

// Destacar intervalo [0, 1] com linha vermelha
plot(x_destacado, y_destacado, "r-", "LineWidth", 3);

// Marcar a raiz aproximada com ponto preto
plot(raiz_aprox, h(raiz_aprox), "ko", "MarkerSize", 8, "MarkerFaceColor", "k");

// Linha horizontal em y = 0
plot(x_total, zeros(x_total), "k--");

# Exercicio 2.1
clc;
clear;
funcprot(0);

// Definindo a função f(x)
function y = f(x)
    y = 230*x.^4 + 18*x.^3 + 9*x.^2 - 221*x - 9;
endfunction

// Raiz conhecida
raiz_aprox = -0.040656;

// Intervalo maior para análise visual
x_total = linspace(-0.5, 1.5, 1000);
y_total = f(x_total);

// Intervalo [−0.3 ; 1.1] a ser destacado
x_destacado = linspace(-0.3, 1.1, 500);
y_destacado = f(x_destacado);

// Plot da função
clf();
plot(x_total, y_total, "b-", "LineWidth", 2);
xgrid();
xtitle("f(x) = 230x^4 + 18x^3 + 9x^2 - 221x - 9", "x", "f(x)");
legend(["f(x)", "Intervalo [-0.3 ; 1.1]"]);

// Destacar o intervalo onde há mudança de sinal
plot(x_destacado, y_destacado, "r-", "LineWidth", 3);

// Marcar a raiz aproximada
plot(raiz_aprox, f(raiz_aprox), "ko", "MarkerSize", 8, "MarkerFaceColor", "k");

// Linha horizontal em y = 0
plot(x_total, zeros(x_total), "k--");

# EXERCICIO 2.2
clc;
clear;
funcprot(0);

// Constantes
h = 300;
F = 0.8;
D = 14;
C = 1200;

// Função com operações elemento a elemento
deff('y = f(A)', 'y = (%pi*(h./cos(A)).^2 .* F) ./ (0.5*%pi*D^2*(1 + sin(A) - 0.5*cos(A))) - C');

// Geração de pontos para o gráfico
A = linspace(0, %pi/25, 200); // vetor de ângulos de 0 a pi/25
Y = f(A); // avaliação da função

// Plotando o gráfico
plot(A, Y, 'b-');
xlabel("A (radianos)");
ylabel("f(A)");
title("Gráfico da função f(A) no intervalo [0, π/25]");
xgrid();

// Linha horizontal y = 0
plot([0, %pi/25], [0, 0], 'r--'); // linha vermelha tracejada no eixo x

# EXERCICIO 2.3
clc;
clear;
funcprot(0);

// Valor de d com base na raiz aproximada fornecida
t_raiz = 5.311432;
d = 7 * (2.0 - 0.9^t_raiz);

// Função p(t)
deff('y = p(t)', 'y = 7*(2.0 - 0.9.^t) - d');

// Geração de pontos para gráfico mais amplo
t_total = linspace(-2, 15, 1000); // intervalo mais amplo
y_total = p(t_total);

// Geração de pontos para o intervalo [0, 10]
t_dest = linspace(0, 10, 300);
y_dest = p(t_dest);

// Plot da função completa
plot(t_total, y_total, 'b-');
xlabel("t");
ylabel("p(t)");
title("Gráfico da função p(t) = 7(2 - 0.9^t) - d");
xgrid();

// Linha horizontal y = 0
plot([-2, 15], [0, 0], 'r--');

// Destaque da curva no intervalo [0, 10]
plot(t_dest, y_dest, 'r-', 'LineWidth', 2);

// Marcador na raiz aproximada
plot(t_raiz, p(t_raiz), 'ko', 'MarkerSize', 8); // ponto preto

# EXERCICIO 2.4

clc;
clear;
funcprot(0);

// Constante O (nível de oxigênio desejado)
O = 5;

// Função C(d)
deff('y = C(d)', 'y = 10 - 20*(exp(-0.2*d) - exp(-0.75*d)) - O');

// Intervalo de d para visualização
d_vals = linspace(0, 5, 400);
y_vals = C(d_vals);

// Plot da função
plot(d_vals, y_vals, 'b-', 'LineWidth', 2);
xlabel("d (km)");
ylabel("C(d)");
title("Gráfico da função C(d) = 10 - 20(e^{-0.2d} - e^{-0.75d}) - O, com O = 5");
xgrid();

// Linha horizontal em y = 0 (onde procuramos a raiz)
plot([0, 5], [0, 0], 'r--'); // linha tracejada em y=0





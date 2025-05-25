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


// Resolver o problema 1.2 com intervalo [0.5, 1.0] e epsilon = 10^-5
raiz = bissecao(f, 0.5, 1.0, 1e-5, 1e-5, 100);

// Plotar o gráfico
x = linspace(0, 2, 500);
y = f(x);

scf(0); // abre nova janela gráfica
plot(x, y, 'b-');
xlabel("x");
ylabel("f(x)");
xtitle("Gráfico da função f(x) = exp(-x) - sin(x)");
xgrid();

// Destacar a raiz aproximada
plot(raiz, f(raiz), 'ro');
legend(["f(x)", "Raiz aproximada"], "location", "upper right");

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






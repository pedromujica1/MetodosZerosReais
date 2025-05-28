/*
deff('y = f(x)', 'y = exp(-x) - sin(x)');
raiz = 0.588531;

// Plotar o gráfico=
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
*/


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

// Fim do código
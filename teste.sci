function gerarGraficoProblema111(a, b, xm)
    deff('y = f(x)', 'y = x^2');
    
    x = linspace(-3, 3, 500);
    y = f(x);
    
    
    clf();
    
    plot(x, y, 'b-');         
    xgrid();                  
    xlabel("x");
    ylabel("f(x)");
    titulo = msprintf("Gráfico da função com intervalo [%g, %g] destacado", a, b);
    title(titulo);

    xx = linspace(a, b, 100);
    yy = f(xx);
    plot(xx, yy, 'r', 'LineWidth', 5); 
    plot(xm, f(xm), 'ko');  
endfunction

function gerarGraficoFuncao(func, intervalo_a,intervalo_b,raiz_aprox)
    deff('y = f(x)', func);
    
    x = linspace(-3, 3, 500);
    y = f(x);
    
    clf();
    
    plot(x, y, 'b-');         
    xgrid();                  
    xlabel("x");
    ylabel("f(x)");
    titulo = msprintf("Gráfico da função com intervalo [%g, %g] destacado", a, b);
    title(titulo);

    xx = linspace(a, b, 100);
    yy = f(xx);
    plot(xx, yy, 'r', 'LineWidth', 5); 
    plot(xm, f(xm), 'ko');  


function gerarGraficoProblema112(a, b, xm)
   
    deff('y = f(x)', 'y = x^2 + log(x)');
    

    x_start = 0.2;  
    x_end = 1.2;    
    x = linspace(x_start, x_end, 500);
    y = f(x);
    scf(0);
    clf();

    plot(x, y, 'b-', 'LineWidth', 1);
    xgrid();
    xlabel("x");
    ylabel("f(x)");
    title("Gráfico de g(x) = x² + ln(x) com intervalo [0.5, 1] destacado");
    xx = linspace(a, b, 100);
    yy = f(xx);
    plot(xx, yy, 'r-', 'LineWidth', 3);

    plot(xm, f(xm), 'ko', 'MarkerSize', 8, 'MarkerFaceColor', 'k');

    gca().data_bounds = [x_start, min(y) - 0.5; x_end, max(y) + 0.5]; //ajusta os limites do grafico
endfunction
function gerarGraficoProblema121()
    //f(x) = exp(-x) - sin(x)
    deff('y = f(x)', 'y = exp(-x) - sin(x)');
    

    raiz = bissecao(f, 0.5, 1.0, 1e-5, 1e-5, 100);

    x = linspace(0, 2, 500);
    y = f(x);

    scf(0);
    plot(x, y, 'b-');
    xlabel("x");
    ylabel("f(x)");
    xtitle("Gráfico da função f(x) = exp(-x) - sin(x)");
    xgrid();

    plot(raiz, f(raiz), 'ro');
    legend(["f(x)", "Raiz aproximada"], "location", "upper right");
endfunction
function gerarGraficoProblema122()

    function y = f(x)
        y = x .* log(x) - 3.2;
    endfunction

    raiz_aprox = 2.506183;

    x_total = linspace(0.1, 6, 1000);
    y_total = f(x_total);

    x_destacado = linspace(2, 3, 300);
    y_destacado = f(x_destacado);
    clf();
    plot(x_total, y_total, "b-", "LineWidth", 2);
    xgrid();
    xtitle("f(x) = x ln(x) - 3.2 com intervalo [2,3]", "x", "f(x)");
    legend(["f(x)", "Intervalo [2,3]"]);

    plot(x_destacado, y_destacado, "r-", "LineWidth", 3);

    plot(raiz_aprox, f(raiz_aprox), "ro");
endfunction
function gerarGraficoProblema131()
    function y = f(x)
        y = cos(x) + x;
    endfunction
    raiz_aprox = -0.739090;

    x_total = linspace(-2, 1, 1000);
    y_total = f(x_total);

    x_destacado = linspace(-1, 0, 300);
    y_destacado = f(x_destacado);

    clf();
    plot(x_total, y_total, "b-", "LineWidth", 2);
    xgrid();
    xtitle("f(x) = cos(x) + x com intervalo [-1,0]", "x", "f(x)");
    legend(["f(x)", "Intervalo [-1,0]"]);

    plot(x_destacado, y_destacado, "r-", "LineWidth", 3);

    plot(raiz_aprox, f(raiz_aprox), "ko", "MarkerSize", 8, "MarkerFaceColor", "k");

    plot(x_total, zeros(x_total), "k--");
endfunction
function gerarGraficoProblema132()
    function y = g(x)
        y = exp(x) + x;
    endfunction

    x_total = linspace(-2, 1, 1000);
    y_total = g(x_total);

    x_destacado = linspace(-1, 0, 300);
    y_destacado = g(x_destacado);

    clf();
    plot(x_total, y_total, "b-", "LineWidth", 2);
    xgrid();
    xtitle("g(x) = exp(x) + x com destaque em [-1,0]", "x", "g(x)");
    legend(["g(x)", "Intervalo [-1,0]"]);

    raiz_aprox = -0.567139;

    plot(raiz_aprox, g(raiz_aprox), "ko", "MarkerSize", 8, "MarkerFaceColor", "k");
    plot(x_destacado, y_destacado, "r-", "LineWidth", 3);

    plot(x_total, zeros(x_total), "k--");
endfunction
function gerarGraficoProblema141()
    function y = f(x)
        y = x^3 - 5;
    endfunction

    raiz_aprox = 1.709975;

    x_total = linspace(0, 2.5, 1000);
    y_total = f(x_total);

    x_destacado = linspace(1.0, 2.0, 300);
    y_destacado = f(x_destacado);

    clf();
    plot(x_total, y_total, "b-", "LineWidth", 2);
    xgrid();
    xtitle("f(x) = x^3 - 5 com destaque no intervalo [1.0, 2.0]", "x", "f(x)");
    legend(["f(x)", "Intervalo próximo à raiz"]);

    plot(x_destacado, y_destacado, "r-", "LineWidth", 3);

    plot(raiz_aprox, f(raiz_aprox), "ko", "MarkerSize", 8, "MarkerFaceColor", "k");

    plot(x_total, zeros(x_total), "k--");
endfunction
function gerarGraficoProblema142()
    function y = g(x)
        y = x^3 - 5*x^2 + x + 3;
    endfunction

    raiz_aprox = -0.645751;

    x_total = linspace(-3, 3, 1000);
    y_total = g(x_total);

    x_destacado = linspace(-2.0, 0.0, 300);
    y_destacado = g(x_destacado);

    clf();
    plot(x_total, y_total, "b-", "LineWidth", 2);
    xgrid();
    xtitle("g(x) = x^3 - 5x^2 + x + 3 com destaque no intervalo [-2, 0]", "x", "g(x)");
    legend(["g(x)", "Intervalo [-2, 0]"]);

    plot(x_destacado, y_destacado, "r-", "LineWidth", 3);

    plot(raiz_aprox, g(raiz_aprox), "ko", "MarkerSize", 8, "MarkerFaceColor", "k");

    plot(x_total, zeros(x_total), "k--");
endfunction
function gerarGraficoProblema151()
    function y = f(x)
        y = sin(x) - tan(x);
    endfunction

    raiz_aprox = 3.141594;
    x_total = linspace(2.5, 4.5, 1000);
    y_total = f(x_total);

    x_destacado = linspace(3, 4, 300);
    y_destacado = f(x_destacado);

    clf();
    plot(x_total, y_total, "b-", "LineWidth", 2);
    xgrid();
    xtitle("f(x) = sin(x) - tan(x) com destaque no intervalo [3, 4]", "x", "f(x)");
    legend(["f(x)", "Intervalo [3, 4]"]);

    plot(x_destacado, y_destacado, "r-", "LineWidth", 3);

    plot(raiz_aprox, f(raiz_aprox), "ko", "MarkerSize", 8, "MarkerFaceColor", "k");

    plot(x_total, zeros(x_total), "k--");
endfunction
function gerarGraficoProblema152()

    function y = f(x)
        y = exp(-x.^2) - cos(x);
    endfunction

    raiz_aprox = 1.447418;

    x_total = linspace(0.5, 2.5, 1000);
    y_total = f(x_total);

    x_destacado = linspace(1, 2, 300);
    y_destacado = f(x_destacado);

    clf();
    plot(x_total, y_total, "b-", "LineWidth", 2);
    xgrid();
    xtitle("f(x) = exp(-x^2) - cos(x) com destaque no intervalo [1, 2]", "x", "f(x)");
    legend(["f(x)", "Intervalo [1, 2]"]);

    plot(x_destacado, y_destacado, "r-", "LineWidth", 3);

    plot(raiz_aprox, f(raiz_aprox), "ko", "MarkerSize", 8, "MarkerFaceColor", "k");

    plot(x_total, zeros(x_total), "k--");
endfunction
function gerarGraficoProblema161()
    function y = g(x)
        y = x.^3 - x - 1;
    endfunction

    raiz_aprox = 1.324718;

    x_total = linspace(0.5, 2.5, 1000);
    y_total = g(x_total);

    x_destacado = linspace(1, 2, 300);
    y_destacado = g(x_destacado);

    clf();
    plot(x_total, y_total, "b-", "LineWidth", 2);
    xgrid();
    xtitle("g(x) = x^3 - x - 1 com destaque no intervalo [1, 2]", "x", "g(x)");
    legend(["g(x)", "Intervalo [1, 2]"]);

    plot(x_destacado, y_destacado, "r-", "LineWidth", 3);

    plot(raiz_aprox, g(raiz_aprox), "ko", "MarkerSize", 8, "MarkerFaceColor", "k");

    plot(x_total, zeros(x_total), "k--");
endfunction
function gerarGraficoProblema162()
    // Função h(x) = 4*sin(x) - exp(x)
    function y = h(x)
        y = 4 * sin(x) - exp(x);
    endfunction

    raiz_aprox = 0.370560;


    x_total = linspace(-0.5, 1.5, 1000);
    y_total = h(x_total);

    x_destacado = linspace(0, 1, 300);
    y_destacado = h(x_destacado);


    clf();
    plot(x_total, y_total, "b-", "LineWidth", 2);
    xgrid();
    xtitle("h(x) = 4*sin(x) - e^x com destaque no intervalo [0, 1]", "x", "h(x)");
    legend(["h(x)", "Intervalo [0, 1]"]);

    // Destacar intervalo [0, 1] com linha vermelha
    plot(x_destacado, y_destacado, "r-", "LineWidth", 3);

    // Marcar a raiz aproximada com ponto preto
    plot(raiz_aprox, h(raiz_aprox), "ko", "MarkerSize", 8, "MarkerFaceColor", "k");

    // Linha horizontal em y=0
    plot(x_total, zeros(x_total), "k--");
endfunction
function gerarGraficoProblema21()
    //f(x) = 230*x^4 + 18*x^3 + 9*x^2 - 221*x - 9
    function y = f(x)
        y = 230*x.^4 + 18*x.^3 + 9*x.^2 - 221*x - 9;
    endfunction

    raiz_aprox = -0.040656;

    x_total = linspace(-0.5, 1.5, 1000);
    y_total = f(x_total);

    x_destacado = linspace(-0.3, 1.1, 500);
    y_destacado = f(x_destacado);

    clf();
    plot(x_total, y_total, "b-", "LineWidth", 2);
    xgrid();
    xtitle("f(x) = 230x^4 + 18x^3 + 9x^2 - 221x - 9", "x", "f(x)");
    legend(["f(x)", "Intervalo [-0.3 ; 1.1]"]);

    plot(x_destacado, y_destacado, "r-", "LineWidth", 3);


    plot(raiz_aprox, f(raiz_aprox), "ko", "MarkerSize", 8, "MarkerFaceColor", "k");

    plot(x_total, zeros(x_total), "k--");
endfunction
function gerarGraficoProblema22()
    //constantes
    h = 300; F = 0.8; D = 14;C = 1200;

    deff('y = f(A)', 'y = (%pi*(h./cos(A)).^2 .* F) ./ (0.5*%pi*D^2*(1 + sin(A) - 0.5*cos(A))) - C');
    
    A = linspace(0, %pi/25, 200);
    Y = f(A);


    plot(A, Y, 'b-');
    xlabel("A (radianos)");
    ylabel("f(A)");
    title("Gráfico da função f(A) no intervalo [0, π/25]");
    xgrid();

    
    plot([0, %pi/25], [0, 0], 'r--'); 
endfunction
function gerarGraficoProblema23()
    // Valor de d com base na raiz aproximada fornecida
    t_raiz = 5.311432;
    d = 7 * (2.0 - 0.9^t_raiz);
    deff('y = p(t)', 'y = 7*(2.0 - 0.9.^t) - d');

    t_total = linspace(-2, 15, 1000); // intervalo mais amplo
    y_total = p(t_total);

     para o intervalo [0, 10]
    t_dest = linspace(0, 10, 300);
    y_dest = p(t_dest);

    //plot da função completa
    plot(t_total, y_total, 'b-');
    xlabel("t");
    ylabel("p(t)");
    title("Gráfico da função p(t) = 7(2 - 0.9^t) - d");
    xgrid();

    plot([-2, 15], [0, 0], 'r--');


    plot(t_dest, y_dest, 'r-', 'LineWidth', 2);

    //marcador na raiz aproximada
    plot(t_raiz, p(t_raiz), 'ko', 'MarkerSize', 8);
endfunction
function gerarGraficoProblema24()
    //Constante O (nível de oxigênio desejado)
    O = 5;

    //Função C(d)
    deff('y = C(d)', 'y = 10 - 20*(exp(-0.2*d) - exp(-0.75*d)) - O');

    d_vals = linspace(0, 5, 400);
    y_vals = C(d_vals);

    // Plot da função
    plot(d_vals, y_vals, 'b-', 'LineWidth', 2);
    xlabel("d (km)");
    ylabel("C(d)");
    title("Gráfico da função C(d) = 10 - 20(e^{-0.2d} - e^{-0.75d}) - O, com O = 5");
    xgrid();

    plot([0, 5], [0, 0], 'r--'); // linha tracejada em y=0
endfunction
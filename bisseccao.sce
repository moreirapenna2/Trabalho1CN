function []=bissecao(a, b, f)    //define a funcao
    TOL = 1e-4; // erro
    NMAX = 100; // numero maximo de iteracoes
    c = (a+b)/2; // X (meio)
    i = 0; // contador de iteracoes
    
    printf("%-4.11s %-12.11s %-12.11s %-12.11s %-12.11s \n","I","A","B","X","Y")
    
    if (f(c) == 0)
        // se o ponto do meio for a raiz
        disp(['Raiz: ' string(c)]);
    else
        while ((abs(f(c)) > TOL) & (i <= NMAX))
            if (sign(f(c)) == sign(f(a)))
                // se X tiver o mesmo sinal (++ ou --) que a
                a = c;
            else
                // se X tiver o mesmo sinal que b
                b = c;
            end
            c = (a+b)/2; // atualiza o X
            printf("%-4.11g %-12.11g %-12.11g %-12.11g %-12.11g\n", i, a, b, c, f(c));
            i = i + 1; // atualiza o contador
        end
    end
    //mostra os resultados
    format(10); // numero de casas decimais
    disp(['Raiz: ' string(c) ', encontrada em ' string(i) ' iteracoes.'])
    disp(['Valor da funcao f(x): ' string(f(c))])
endfunction

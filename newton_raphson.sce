function [x]=newton_raphson(x0,f,fd)    //define a funcao
    N=100;  //numero maximo de iteracoes
    eps=1.e-4;  //erro
    maxval = 10000.0;    //valor maximo para divergencia
    xx=x0;
    while(N>0)
        xn=xx-f(xx)/fd(xx); //formula de newton-raphson
        if(abs(f(xn))<eps) then //checa se converge
            x=xn;
            disp(100-N,"Numero de iteracoes=");
            disp(x,"X=");    //mostra a aproximacao resultante
            return(x);
        end;
        if(abs(f(xx))>maxval) then  //checa se converge
            disp(100-N,"Numero de iteracoes=");
            error("Solucao diverge");
            abort;
        end;
        N=N-1;
        xx=xn;
    end;
    error("Nao converge");
    abort;
 endfunction

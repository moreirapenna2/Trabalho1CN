function []=secante(x0, x1, f)    //define a funcao
    //Mostra o index dos dados
    mprintf('\n%3s %14s %14s %14s\n','n','xn','|x(n)-x(n-1)|','K')
    mprintf('%3i %14.11f %14.11f %14.11f\n',fix(0),x0,0,0)
    mprintf('%3i %14.11f %14.11f %14.11f\n',fix(1),x1,0,0)
    tol = 1.e-4;
    n=1;
    Diff=abs(x1-x0);
    while (Diff>=tol) //parar quando o erro for maior que a tolerancia
        p2=x0;
        x0=x1;//salvar iteracao passada
        Diff1=Diff; //salvar diferenca passada
    
        n=n+1;//nova iteracao
        x1 = x0-f(x0)*(p2-x0)/(f(p2)-f(x0)); //iteracao do metodo da secante
        Diff = abs(x1-x0);//atualiza a diferenca
        K=Diff/Diff1**((1+sqrt(5))/2); 
        
        //mostra os resultados da iteraca na tela
          mprintf('%3i %14.11f %14.11f %14.11f\n',fix(n),x1,Diff,K);
    end;
endfunction

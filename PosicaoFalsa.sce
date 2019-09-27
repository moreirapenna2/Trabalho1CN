function posicaoFalsa(a,b,f)
    N = 100;    //numero maximo de iteracoes
    TOL = 1.e-4;    //erro
    i = 1   //quantidade de iteracoes
    FA = f(a)
    finalOutput = [i, a, b, a + (b-a)/2, f(a + (b-a)/2)]
      
    printf("%-20s %-20s %-20s %-20s %-20s \n","Iteracao","A","B","X","Y")
     
    while(i <= N),  //enquanto puder iterar
        p = (a*f(b)-b*f(a))/(f(b) - f(a))   //calcula pela formula
        FP = f(p)
          
        if(FP == 0 | abs(f(p)) < TOL) then //se esta dentro da tolerancia
            break
        else
             printf("%-20.8g %-20.8g %-20.8g %-20.8g %-20.8g\n", i, a, b, p, f(p))
        end
          
        i = i + 1
          
        if(FA*FP > 0) then  //escolhe o proximo
            a = p
        else
            b = p
        end
    end
      
endfunction
    
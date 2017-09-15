function [modSala, modX, modY] = atualizaAmbiente(sala, acao, x, y)

modSala = sala;

if acao == 6 %sala limpa


if acao == 5
    modSala(x, y) = 0; %estado 0 = limpo
    %retorna as posi��es x e y
    modX = x;
    modY = y;
else
    switch acao
        case 1  %a��o 1 -> acima
            if x == 2  %controla se est� na primeira linha
                modX = x;
                modY = y;
            else
                modX = x-1;
                modY = y;
            end
        case 2  %a��o 2 -> abaixo
            if x == 5  %controla se est� na �ltima linha
                modX = x;
                modY = y;
            else
                modX = x+1;
                modY = y;
            end
        case 3  %a��o 2 -> esquerda
            if y == 2  %controla se est� na primeira coluna
                modX = x;
                modY = y;
            else
                modX = x;
                modY = y-1;
            end
        case 4  %a��o 2 -> direita
            if y == 5  %controla se est� na �ltima coluna
                modX = x;
                modY = y;
            else
                modX = x;
                modY = y+1;
            end
    end
end
end
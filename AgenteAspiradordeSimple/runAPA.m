%Para chamar as fun��es do aspirador de p� automatico (APA) baseado em um agente
%reativo simples
clear all;clc; close all;


%---Ambiente---
sala = geraAmbiente()
mostraAmbiente(sala)

%Coordernadas de in�cio do agente aspirador de p�
posX=4
posY=4
%pesquise para ver para que servem as fun��es (hold on, hold off e pause)
hold on; %mant�m est�tico o ambiente feito anteriormente para posicionar o limpador
%posizionar o APA nas posi��es estabelecidas anteriormente
posicaoAspirador(4, 4)
hold off;
pause(1);

%se a c�lula estiver suja ent�o retornar� 1, caso contr�rio, 0
ehsujo = sala(posX,posY)==2;
%ehsujo = any(any(sala == 2))==1

%gera uma vari�vel de estrutura para saber a posi��o e o estado de cada
percepcao = struct('x', posX, 'y', posY,'estado', ehsujo);


%---a��es do agente---
acoesAg= {'acima', 'abaixo', 'esquerda', 'direita', 'aspirar'};

i = 0;
while (i < 100)

    %escolhe a a��o de acordo com a percep��o - chama fun��o agenteReativoSimples
    acao = agenteReativoSimples(percepcao.estado);
    %chama a fun��o atualizaAmbiente para atualizar a a��o realizada
    [sala, percepcao.x, percepcao.y] = atualizaAmbiente(sala, acao, percepcao.x, percepcao.y);
    %Mostra na tela as a��es escolhidas e percep��es (veja as fun��es 'disp' e 'num2str')
    
    
    %mostra o ambiente atualizado
    mostraAmbiente(sala);
    
    %posiciona o aspirador no ambiente atualizado
    hold on;
    posicaoAspirador(percepcao.x, percepcao.y); 
    disp ("The value of percepcao X is:"), disp (percepcao.x)
    disp ("The value of percepcao Y is:"), disp (percepcao.y)
    hold off;
    pause(1);
    
    %atualiza a percep��o e o estado depois de concluir a a��o
    ehsujo = sala(percepcao.x,percepcao.y)==2;
    percepcao = struct('x', percepcao.x, 'y', percepcao.y,'estado', ehsujo);
    acao = agenteReativoSimples(percepcao.estado);
    
    i += 1;
end
disp (i);


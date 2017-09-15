%Para chamar as fun��es do aspirador de p� automatico (APA) baseado em um agente
%reativo simples
clear all;clc; close all;


%---Ambiente---
sala = geraAmbiente()
mostraAmbiente(sala)

%Coordernadas de in�cio do agente aspirador de p�
posX=2;
posY=2;
%pesquise para ver para que servem as fun��es (hold on, hold off e pause)
hold on; %mant�m est�tico o ambiente feito anteriormente para posicionar o limpador
%posizionar o APA nas posi��es estabelecidas anteriormente
posicaoAspirador(posX, posY,'Inicio');
hold off;
pause(1);

%se a c�lula estiver suja ent�o retornar� 1, caso contr�rio, 0
ehsujo = sala(posX,posY)==2;
%ehsujo = any(any(sala == 2))==1

%gera uma variavel de estrutura para saber a posi��o e o estado de cada
percepcao = struct('x', posX, 'y', posY, 'estado', ehsujo);


%---a��es do agente---
acoesAg= {'acima', 'abaixo', 'esquerda', 'direita', 'aspirar'};

pontos = 1;
objObtido = checkObj(sala);
while (objObtido)

    %escolhe a acao de acordo com a percepcao - chama funcao agenteReativoSimples
    ObjObtido = checkObj(sala);
    acao = agenteObjetivo(percepcao.estado, ObjObtido);
    
    %chama a funcao atualizaAmbiente para atualizar a acao realizada
    [sala, percepcao.x, percepcao.y] = atualizaAmbiente(sala, acao, percepcao.x, percepcao.y);
    
    %Mostra na tela as acoes escolhidas e percep��es (veja as fun��es 'disp' e 'num2str')
    titulo = ['Acao: ', acoesAg{acao}, ' - Pontos: ', num2str(pontos)];
    
    %mostra o ambiente atualizado
    mostraAmbiente(sala);
    
    %posiciona o aspirador no ambiente atualizado
    hold on;
    posicaoAspirador(percepcao.x, percepcao.y, titulo); 
    hold off;
    pause(1);
    
    %atualiza a percepcao e o estado depois de concluir a acao
    ehsujo = sala(percepcao.x,percepcao.y)==2;
    percepcao = struct('x', percepcao.x, 'y', percepcao.y,'estado', ehsujo);
    
    pontos += 1;
    objObtido = checkObj(sala); 
end
disp (pontos);


%Gera acoes aleatorias no caso em que o quadrado esta limpo, sendo aspira o
%p�
function acao=agenteObjetivo(percepcao, ObjObtido)

switch(percepcao) 
 case 1 %sujo
  acao = 5;
 otherwise
  acao = randi(4);
endswitch

% acoes = {'acima', 'abaixo', 'esquerda', 'direita', 'aspirar'}
%            1         2          3           4          5

end
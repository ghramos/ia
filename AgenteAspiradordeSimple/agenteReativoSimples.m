% Fun��o de agente reativo simples para o mundo 4 x 4 do aspirador de p� autom�tico
% que garante limpar toda a sala, independentemente da posi��o inicial. 
% A fun��o deve retornar um das 5 poss�veis a��es a��es do agente= {'acima', 'abaixo', 'esquerda', 'direita', 'aspirar'}
% A vari�vel "percepcao" dentro dos par�nteses � a entrada da fun��o.
function acao = agenteReativoSimples(percepcao)

switch(percepcao) 
 case 1 %sujo
 acao = 5;
 otherwise
 acao = randi(4);
endswitch

% Para cada posi��o definir as a��es dispon�veis (funcaoMapear)
% a��es = {'acima', 'abaixo', 'esquerda', 'direita', 'aspirar'}
%            1         2          3           4          5

end
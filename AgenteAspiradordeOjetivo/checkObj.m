%verifica se h� sujeira na sala 
%retorna 1 se tem sujeira, caso contr�rio retorna 0
function objObtido=checkObj(sala)

objObtido = ehsujo = any(any(sala == 2))==1;

end
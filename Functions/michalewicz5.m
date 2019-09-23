function [ ObjVal ] = michalewicz5( Cs )
%F25 - Michalewicz2 - [0,pi] - Dim5


dim = size(Cs,2);

fitness = 0;
for j = 1:dim
    fitness = fitness + sin(Cs(:,j)).*sin(j.*Cs(:,j).^2 / pi).^20;
end

ObjVal= -fitness;

end


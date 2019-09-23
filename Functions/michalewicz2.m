function [ ObjVal ] = michalewicz2( Cs )
%F24 - Michalewicz2 - [0,pi] - Dim2

dim = size(Cs,2);

fitness = 0;
for j = 1:dim
    fitness = fitness + sin(Cs(:,j)).*sin(j.*Cs(:,j).^2 / pi).^20;
end

ObjVal= -fitness;

end


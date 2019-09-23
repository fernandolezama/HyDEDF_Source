function [ ObjVal ] = michalewicz10( Cs )
%F26 - Michalewicz2 - [0,pi] - Dim10


dim = size(Cs,2);

fitness = 0;
for j = 1:dim
    fitness = fitness + sin(Cs(:,j)).*sin(j.*Cs(:,j).^2 / pi).^20;
end

ObjVal= -fitness;

end


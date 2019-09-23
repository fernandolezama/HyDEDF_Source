function [ ObjVal ] = quartic( Cs )
%F5 - Quartic - [-1.28,1.28] - Dim30

dim = size(Cs,2);

fitness = 0;
for j = 1:dim
    fitness = fitness + j.*Cs(:,j).^4;
end

ObjVal = fitness + rand(1);


end


function [ ObjVal ] = dixonprice( Cs )
%F17 - dixonprice - [-10,10] - Dim30

dim = size(Cs,2);

fitness = 0;
for j = 2:dim
    fitness = fitness + j.*(2.*Cs(:,j).^2 - Cs(:,j-1)).^2;
end

ObjVal = fitness + (Cs(:,1) - 1).^2;


end


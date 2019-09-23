function [ ObjVal ] = stepint( Cs )
%F1 - Stepint - [-5.12 5.12] - Dim5

dim = size(Cs,2);

fitness = 0;
for j = 1:dim
    fitness = fitness + ceil(Cs(:,j));
end

ObjVal = fitness + 25;

end


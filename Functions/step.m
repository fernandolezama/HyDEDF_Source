function [ ObjVal ] = step( Cs )
%F2 - Step - [-100,100] - Dim30

dim = size(Cs,2);

fitness = 0;
for j = 1:dim
    fitness = fitness + (floor(Cs(:,j) + 0.5)).^2;
end

ObjVal = fitness;

end


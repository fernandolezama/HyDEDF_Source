function [ ObjVal ] = sumsquares( Cs )
%F4 - SumSquares - [-10,10] - Dim30

dim = size(Cs,2);

fitness = 0;
for j = 1:dim
    fitness = fitness + j*Cs(:,j).^2;
end

ObjVal = fitness;

end


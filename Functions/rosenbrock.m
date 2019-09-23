function [ ObjVal ] = rosenbrock( Cs )
%F16 - Rosenbrock - [-30,30] - Dim30

dim = size(Cs,2);

fitness = 0;
for j = 1:dim-1
    fitness = fitness + 100 * (Cs(:,j+1) - Cs(:,j).^2).^2 + (Cs(:,j) - 1).^2;
end

ObjVal = fitness;

end


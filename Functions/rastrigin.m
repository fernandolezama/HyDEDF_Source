function [ ObjVal ] = rastrigin( Cs )
%F22 - Rastrigin - [-5.12,5.12] - Dim30

dim = size(Cs,2);

fitness = 0;
for j = 1:dim
    fitness = fitness + 10 + (Cs(:,j).^2 - 10.*cos(2*pi.*Cs(:,j)));
end

ObjVal = fitness;

end


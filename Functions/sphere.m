function [ ObjVal ] = sphere( Cs )
%F3 - Sphere - [-100,100] - Dim30

dim = size(Cs,2);

fitness = 0;
for j = 1:dim
    fitness = fitness + Cs(:,j).^2;
end

ObjVal = fitness;

end


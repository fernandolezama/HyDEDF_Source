function [ ObjVal ] = schwefel( Cs )
%F23 - Schwefel - [-500,500] - Dim30

dim = size(Cs,2);

fitness = 0;
for j = 1:dim
    fitness = fitness + (-Cs(:,j).*sin(sqrt(abs(Cs(:,j)))));
end

ObjVal = fitness;

end


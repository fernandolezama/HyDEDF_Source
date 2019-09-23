function [ ObjVal ] = griewank( Cs )
%F41 - Griewank - [-600,600] - Dim30

dim = size(Cs,2);

f1 = 0;
f2 = 1;
for j = 1:dim
    f1 = f1 + (1/4000).*(Cs(:,j)).^2;
    f2 = f2 .* cos(Cs(:,j) / sqrt(j));
end

ObjVal = f1 - f2 + 1;

end


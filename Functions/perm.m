function [ ObjVal ] = perm( Cs )
%F37 - Perm - [-D,D] - Dim4

n = 4;
b = 0.5;
fitness = 0;
for k = 1:n;
    f1 = 0;
    for j = 1:n
        f1 = f1 + (j^k + b).*((Cs(:,j)./ j).^k - 1);
    end
    fitness = fitness + f1.^2;
end

ObjVal = fitness;

end


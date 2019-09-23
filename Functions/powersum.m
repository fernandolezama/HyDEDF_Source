function [ ObjVal ] = powersum( Cs )
%F38 - PowerSum - [0,D] - Dim4

n = 4;
b = [8,18,44,114];
fitness = 0;
for k = 1:n
    f1 = 0;
    for j = 1:n
        f1 = f1 + Cs(:,j).^k;
    end
    fitness = fitness + (f1 - b(k)).^2;
end

ObjVal = fitness;

end


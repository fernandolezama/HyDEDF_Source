function [ ObjVal ] = foxholes( Cs )
%F18 - FoxHoles - [-65536,65536] - Dim2

ai0 = [-32, -16, 0, 16, 32];
a = [repmat(ai0, 1, 5);reshape(repmat(ai0, 5 , 1), 1, 25);];

f2 = 0;
for j = 1:25
    f1 = 0;
    for k = 1:2
        f1 = f1 + (Cs(:,k) - a(k,j)).^6;
    end
    f2 = f2 + 1 ./ (j + f1);
end

ObjVal = 1 ./ ((1/500) + f2);


end


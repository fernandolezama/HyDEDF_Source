function [ ObjVal ] = schwefel12( Cs )
%F15 - Schwefel 1.2 - [-100,100] - Dim30

dim = size(Cs,2);

fitness = 0;
for j = 1:dim
    f1 = 0;
    for k = 1:j
        f1 = f1 + Cs(:,k);
    end
    fitness = fitness + f1.^2;
end

ObjVal = fitness;

end


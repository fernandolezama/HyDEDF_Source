function [ ObjVal ] = shubert( Cs )
%F31 - Shubert - [-10,10] - Dim2

f1 = 0;
f2 = 0;
for j = 1:5
    f1 = f1 + j .* cos((j + 1).* Cs(:,1) + j);
    f2 = f2 + j .* cos((j + 1).* Cs(:,2) + j);
end

ObjVal = f1 .* f2;


end


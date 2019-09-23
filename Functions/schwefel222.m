function [ ObjVal ] = schwefel222( Cs )
%F14 - Schwefel 2.22 - [-10,10] - Dim30

dim = size(Cs,2);

f1 = 0;
f2 = 1;
for j = 1:dim
    f1 = f1 + abs(Cs(:,j));
    f2 = f2 .* abs(Cs(:,j));
end

ObjVal = f1 + f2;



end


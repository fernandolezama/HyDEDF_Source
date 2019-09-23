function [ ObjVal ] = zakharov( Cs )
%F12 - Zakharov - [-5,10] - Dim10

dim = size(Cs,2);

f1 = 0;
f2 = 0;
f3 = 0;
for j = 1:dim
    f1 = f1 + Cs(:,j).^2;
    f2 = f2 + 0.5.*j.*Cs(:,j);
    f3 = f3 + 0.5.*j.*Cs(:,j);
end

ObjVal = f1 + f2.^2 + f3.^4;


end


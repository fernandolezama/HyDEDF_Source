function [ ObjVal ] = trid6( Cs )
%F10 - Trid6 - [-36,36] - Dim6

dim = size(Cs,2);

f1 = 0;
f2 = 0;
for j = 1:dim
    f1 = f1 + (Cs(:,j) - 1).^2;
end
for j = 2:dim
    f2 = f2 + Cs(:,j).*Cs(:,j-1);
end

ObjVal = f1 - f2;

end


function [ ObjVal ] = powell( Cs )
%F13 - Powell - [-4,5] - Dim24

dim = size(Cs,2);

fitness = 0;
for j = 1:dim/4
    fitness = fitness + (Cs(:,4*j-3) + 10.*Cs(:,4*j-2)).^2 + 5.*(Cs(:,4*j-1) - Cs(:,4*j)).^2 + (Cs(:,4*j-2) - Cs(:,4*j-1)).^4 + 10.*(Cs(:,4*j-3) - Cs(:,4*j)).^4;
end

ObjVal = fitness;

end


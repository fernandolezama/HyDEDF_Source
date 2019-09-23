function [ ObjVal ] = matyas( Cs )
%F8 - Matyas - [-10,10] - Dim2

ObjVal = 0.26.*(Cs(:,1).^2 + Cs(:,2).^2) - 0.48.*Cs(:,1).*Cs(:,2);


end


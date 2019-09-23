function [ ObjVal ] = beale( Cs )
%F6 - Beale - [-4.5,4.5] - Dim2

ObjVal = (1.5 - Cs(:,1) + Cs(:,1).*Cs(:,2)).^2 + (2.25 - Cs(:,1) + Cs(:,1).*Cs(:,2).^2).^2 + (2.625 - Cs(:,1) + Cs(:,1).*Cs(:,2).^3).^2;

end


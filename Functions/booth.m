function [ ObjVal ] = booth( Cs )
%F21 - Booth - [-10,10] - Dim2

ObjVal = (Cs(:,1) + 2.*Cs(:,2)- 7).^2 + (2.*Cs(:,1) + Cs(:,2) - 5).^2;


end


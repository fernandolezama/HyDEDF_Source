function [ ObjVal ] = sixhumpcamelback( Cs )
%F28 - Six Hump Camel Back - [-5,5] - Dim2

ObjVal = 4.*Cs(:,1).^2 - 2.1.*Cs(:,1).^4 + (1/3).*Cs(:,1).^6 + Cs(:,1).*Cs(:,2) - 4.*Cs(:,2).^2 + 4.*Cs(:,2).^4;


end


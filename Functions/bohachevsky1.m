function [ ObjVal ] = bohachevsky1( Cs )
%F20 - Bohachevsky1 - [-100,100] - Dim2

ObjVal = Cs(:,1).^2 + 2.*Cs(:,2).^2 - 0.3.*cos(3*pi.*Cs(:,1)) - 0.4.*cos(4*pi.*Cs(:,2)) + 0.7;


end


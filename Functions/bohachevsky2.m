function [ ObjVal ] = bohachevsky2( Cs )
%F29 - Bohachevsky2 - [-100,100] - Dim2

ObjVal = Cs(:,1).^2 + 2.*Cs(:,2).^2 - 0.3.*cos(3*pi.*Cs(:,1)).*cos(4*pi.*Cs(:,2)) + 0.3;


end


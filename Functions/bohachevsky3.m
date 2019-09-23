function [ ObjVal ] = bohachevsky3( Cs )
%F30 - Bohachevsky3 - [-100,100] - Dim2

ObjVal = Cs(:,1).^2 + 2.*Cs(:,2).^2 - 0.3.*cos(3*pi.*Cs(:,1) + 4*pi.*Cs(:,2)) + 0.3;


end


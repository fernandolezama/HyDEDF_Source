function [ ObjVal ] = branin( Cs )
%F19 - Branin - [-5,10] - Dim2

ObjVal = (Cs(:,2) - (5.1/(4*pi^2)).*Cs(:,1).^2 + (5/pi).*Cs(:,1) - 6).^2 + 10.*(1 - (1/(8*pi))).*cos(Cs(:,1)) + 10;


end


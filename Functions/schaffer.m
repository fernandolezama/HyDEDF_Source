function [ ObjVal ] = schaffer( Cs )
%F27 - Schaffer - [-100,100] - Dim2

ObjVal = 0.5 + (sin(sqrt(Cs(:,1).^2 + Cs(:,2).^2)).^2 - 0.5) ./ (1 + 0.001.*(Cs(:,1).^2 + Cs(:,2).^2)).^2;


end


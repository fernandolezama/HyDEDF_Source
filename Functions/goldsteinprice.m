function [ ObjVal ] = goldsteinprice( Cs )
%F32 - GoldStein & Price - [-2,2] - Dim2

f1 = 1 + (Cs(:,1) + Cs(:,2) + 1).^2 .* (19 - 14.*Cs(:,1) + 3.*Cs(:,1).^2 - 14.*Cs(:,2) + 6.*Cs(:,1).*Cs(:,2) + 3.*Cs(:,2).^2);
f2 = 30 + (2.*Cs(:,1) - 3.*Cs(:,2)).^2 .* (18 - 32.*Cs(:,1) + 12.*Cs(:,1).^2 + 48.*Cs(:,2) - 36.*Cs(:,1).*Cs(:,2) + 27.*Cs(:,2).^2);

ObjVal = f1 .* f2;


end


function [ ObjVal ] = penalized2( Cs )
%F44 - Penalized2 - [-50,50] - Dim30

dim = size(Cs,2);

f1 = sin(pi.*Cs(:,1)).^2;

f2 = 0;
for j = 1:dim-1
    f2 = f2 + (Cs(:,j) - 1).^2.*(1 + sin(3*pi.*Cs(:,j+1)).^2);
end

f3 = (Cs(:,dim) -1).^2 .* (1 + sin(2*pi.*Cs(:,dim)).^2);

ObjVal = 0.1.*(f1 + f2 + f3) + findU(Cs, 5, 100, 4, size(Cs,1));

end


function [ ObjVal ] = penalized( Cs )
%F43 - Penalized - [-50,50] - Dim30

dim = size(Cs,2);

for j = 1:dim
    y(:,j) = 1 + 0.25.*(Cs(:,j) + 1);
end

f1 = 10.*sin(pi*y(:,1)).^2;
f2 = 0;
for j = 1:dim-1
    f2 = f2 + (y(:,j) - 1).^2.*(1 + 10.*sin(pi.*y(:,j+1)).^2);
end

ObjVal = (pi/dim).*(f1 + f2 + (y(:,dim) - 1).^2) + findU(Cs, 10, 100, 4,size(Cs,1));

end


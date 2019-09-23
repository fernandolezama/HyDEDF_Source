function [ ObjVal ] = fletcherpowell10( Cs )
%F50 - Fletcher & Powell10 - [-pi,pi] - Dim10

dim = size(Cs,2);

fitness = 0;

[ a,b,alph] = FletcherABalpha();

for i = 1:dim
    f1 = 0;
    f2 = 0;
    for j = 1:dim
        f1 = f1 + a(i,j)*sin(alph(j)) + b(i,j)*cos(alph(j));
        f2 = f2 + a(i,j)*sin(Cs(:,j)) + b(i,j)*cos(Cs(:,j));
    end
    fitness = fitness + (f1 - f2).^2;
end

ObjVal = fitness;

end

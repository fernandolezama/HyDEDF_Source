function [ ObjVal ] = kowalik( Cs )
%F33 - Kowalik - [-5,5] - Dim4

a = [0.1957 0.1947 0.1735 0.1600 0.0844 0.0627 0.0456 0.0342 0.0323 0.0235 0.0246];
b = 1./ [0.25 0.5 1 2 4 6 8 10 12 14 16];

fitness = 0;
for j = 1:11
    f1 = Cs(:,1).*(b(j)^2 + b(j).*Cs(:,2));
    f2 = b(j)^2 + b(j).*Cs(:,3) + Cs(:,4);
    fitness = fitness + (a(j) - f1 ./ f2).^2;
end

ObjVal = fitness;

end


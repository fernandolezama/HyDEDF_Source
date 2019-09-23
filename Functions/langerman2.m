function [ ObjVal ] = langerman2( Cs )
%F45 - Langerman2 - [0,10] - Dim2

dim = size(Cs,2);

fitness = 0;

[a,c] = langermanAC();

for i = 1:dim
    f1 = 0;
    for j = 1:dim
        f1 = f1 + (Cs(:,j) - a(i,j)).^2;
    end
    fitness = fitness + c(i) .* exp((-1/pi)*f1).*cos(pi*f1);
end

ObjVal = -fitness;


end


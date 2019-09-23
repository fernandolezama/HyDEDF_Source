function [ ObjVal ] = langerman10( Cs )
%F47 - Langerman10 - [0,10] - Dim10

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

function [ ObjVal ] = shekel7( Cs )
%F35 - Shekel7 - [0,10] - Dim4


dim = size(Cs,2);

m = 7;
a = ones(10,4);
a(1,:) = 4.0*a(1,:);
a(2,:) = 1.0*a(2,:);
a(3,:) = 8.0*a(3,:);
a(4,:) = 6.0*a(4,:);
for j = 1:2;
    a(5,2*j-1) = 3.0; a(5,2*j) = 7.0;
    a(6,2*j-1) = 2.0; a(6,2*j) = 9.0;
    a(7,j)     = 5.0; a(7,j+2) = 3.0;
    a(8,2*j-1) = 8.0; a(8,2*j) = 1.0;
    a(9,2*j-1) = 6.0; a(9,2*j) = 2.0;
    a(10,2*j-1)= 7.0; a(10,2*j)= 3.6;
end
c(1) = 0.1; c(2) = 0.2; c(3) = 0.2; c(4) = 0.4; c(5) = 0.4;
c(6) = 0.6; c(7) = 0.3; c(8) = 0.7; c(9) = 0.5; c(10)= 0.5;


fitness = 0;
for j = 1:m
    f1 = 0;
    for i = 1:dim
        f1 = f1 + (Cs(:,i) - a(j,i)).^2;
    end
    fitness = fitness + 1 ./ (f1 + c(j));
end

ObjVal = -fitness;

end


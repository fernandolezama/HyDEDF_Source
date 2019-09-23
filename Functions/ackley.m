function [ ObjVal ] = ackley( Cs )
%F42 - Ackley - [-32,32] - Dim30

dim = size(Cs,2);

a = 20; b = 0.2; c = 2*pi;

f1 = 0; 
f2 = 0;
for i = 1:dim
    f1 = f1 + Cs(:,i).^2;
    f2 = f2 + cos(c.*Cs(:,i));
end

ObjVal = -a*exp(-b * sqrt(1/dim*f1)) - exp(1/dim*f2) + a + exp(1);

end


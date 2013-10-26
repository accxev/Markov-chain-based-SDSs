function [M,r,loser] = hamming1 (v, n)

m = length(v);
A = zeros(m);
M = zeros(m,n);
r = zeros(m,1); % reinforced alternative
loser = zeros(m,1); %losing alternative

l = n-1;
k=0;

for i=1:(n-1)
    
        for j=1:l
            if v(k+j) == 0
                r(k+j) = i;
                loser(k+j) = i+j;
                %entry i, i +j 
            else
                r(k+j) = i+j;
                loser(k+j) = i;
            end
                
        end
        k = k+l;
        l = l-1;
end


for i = 1 : m
    
    A(i,:) = v;
    A(i,i) = 1 - v(i) ;    
end

for i = 1: m
    tmp = vector(A(i,:), n);
    M(i,:) = tmp;
    %A(i, :) = vector (A(i,:), n) ;
end


end

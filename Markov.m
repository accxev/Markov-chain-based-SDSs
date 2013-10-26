function A = Markov(filename,all,n)

%all: Number of Tournaments
%n: Size of Tournaments
options.disp=0;


e = fopen(filename);
f = fopen('8_output.txt');

A = textscan(e,'%c');
A = A{1};
v = zeros(length(A),1);
    for k=1:length(A)
        v(k) = str2num(A(k));
    end
    
winning = zeros(1,n);

m= (n*(n-1))/2;
A = reshape(v,m,all)'; %' = transpose (auch im Komplexen)


A_temp = A';

for t = 1:all
%for t=2
    
v1 = A_temp(:,t)'
%v1 = [1 1 1 1 1 1 1 1 1 1 1 1];

pi = zeros(n);
s = zeros(1, n);

l = n-1;
k=0;
    for i=1:(n-1)
    
        for j=1:l
            if v1(k+j) == 0
                pi(i,i+j) = 1/(n-1);
                s(i+j) = s(i+j) +1;
            else
                pi(i+j,i) = 1/(n-1);
                s(i) = s(i) +1;
            
            end
                
        end
        k = k+l;
        l = l-1;
        pi(i,i) = s(i) / (n-1);
    
    end
pi(n,n) = s(n) / (n-1);

pi;
s;

%fclose(e);

[vector, value] = eigs ( pi', 1, 'lm',options);
%[V,D] = eigs(pi');

x = vector(:,1);
%x = V(:,1);

x_normed = x / norm(x,1);
x = abs(x_normed')
%fprintf (f, '%f\n', x);
%print(x, '8_output.txt');


winners = [];
number = 0;
x_max = max(x);

for i=1:n
  if abs(x(i) - x_max) <= 10^-8
      winners = [winners, i];
      number = number + 1;
  end  
end
winners;
number;
if number==2
    stuff = v1;
end
winning(number) = winning(number) + 1;

%fprint(winners);

end
winning
%print(%f, winning);
%print(%f, stuff);

%fclose(e);
%fclose(f);

end



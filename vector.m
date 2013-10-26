function x = vector(v, n)
options.disp=0;

pi = zeros(n);
s = zeros(1, n);

l = n-1;
k=0;
    for i=1:(n-1)
    
        for j=1:l
            if v(k+j) == 0
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

[V,E] = eig(pi');
[h,t] = max(diag(E));
vector = V(:,t);
value = h;

%[vector, value] = eigs ( pi', 1, 'lr',options);
%[vector, value] = eigs ( pi', 1, 'lm',options);
%[V,D] = eigs(pi');

x = vector;%(:,1);
%x = V(:,1);

x_normed = x / norm(x,1);
x = abs(x_normed');
%fprintf (f, '%f\n', x);
%print(x, '8_output.txt');

end
function x = sdCheck(v1, v2, a,b)
% a is the alternative reinforced in T2 with solution vector v2
% b was stronger in T1 with stationary distribution v1
n = length(v1);
[a,b];
tmp = compare(v1,v2);

ea = tmp(a); %change of alpha(a)
eb = tmp(b); %change of alpha(b)


%tmp2 = [tmp(1:(min(a,b)-1));tmp((min(a,b)+1):(max(a,b)-1));tmp((max(a,b)+1):length(tmp))]
tmp2 = tmp;
c = min(a,b);
d = max(a,b);
tmp2(c)= [] ;
tmp2(d-1) = [];
x = 0;

sum = 0;

for i = 1: (n-2)
    if tmp2(i) < 0
        sum = sum + tmp2(i);
    end
end

if -sum > eb && abs(sum - eb)>1e-8
    x = 1;
    disp('Hallo Antonia, dein Gegenbeispiel ist:')
    disp(v1)
    disp(v2)
    disp(a)
    disp(b)
    disp(eb)
    disp(sum)
    disp(abs(sum+eb))
    disp('Noch einen schönen Tag.')
end


end
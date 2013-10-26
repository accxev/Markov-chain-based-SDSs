function x = sdCheckn (v, n)
[A,r,l] = hamming1(v,n);
m = vector(v,n);

for i=1:length(v)
    v1 = A(i,:);
    %m1 = vector(v1,n)
    x = sdCheck (m, v1, r(i), l(i));
    if x==1
        disp('v1 ist:')
        disp(v1)
        disp('v ist:')
        disp(v)
        break;
    end
end


end

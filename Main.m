function Main(filename, all, n)


e = fopen(filename);
%f = fopen('8_output.txt');

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
    
v1 = A_temp(:,t)';
%v1 = [1 1 1 1 1 1 1 1 1 1 1 1];

sdCheckn(v1,n);
%vector(v1, n)


%fclose(e);

end

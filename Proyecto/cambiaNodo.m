function N = cambiaNodo(N,a,b)

%cambia elemento de la columna 'a' a la 'b';
buffer=N(:,a);
N(:,a)=N(:,b);
N(:,b)=buffer;

%hace lo mismo pero para las filas;
buffer=N(a,:);
N(a,:)=N(b,:);
N(b,:)=buffer;
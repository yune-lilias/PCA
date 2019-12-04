function graphg()
load data1;
X = data(1);
X0 = [ones(size(X)),log(X)];
Ct = data(2);
Ct0 = [ones(size(X)),Ct];
re1 = regress(X0,Ct);
re2 = regress(Ct0,log(X));
syms k
k = re1(1)+re(2).*Ct;

syms Yn;
syms Xn;
syms Et;
syms Eref;


end
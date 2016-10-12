% Derive Shape functions for quadratic beam element
% For all points, the polynomials N and N' are evaluated.
% w=a+bx+cx^2+dx^3+ex^4+fx^5
b=[1 -1; % w(-1) x^n
   1  1];
b=fliplr(b);
disp('b flipped to decreasing power order')
% For N1
a=[1 0]';
c1=(b\a)'
c1d=polyderiv(c1)
% For N2
a=[0 1]';
c2=(b\a)'
c2d=polyderiv(c2)

%plot(i,polyval(c1,i),"-;sf1;",i,polyval(c2,i),"-;sf2;",i,polyval(c3,i),"-;sf3;",i,polyval(c4,i),"-;sf4;",i,polyval(c5,i),"-;sf5;",i,polyval(c6,i),"-;sf6;")

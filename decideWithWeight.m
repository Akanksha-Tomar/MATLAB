function weight = decideWithWeight(t,x)
sets
%find =[Pg;muw0;muw1;sigma0;sigma1;mus0;mus1;sigmas0;sigmas1];
find2 =findParameters(x);
Probofgirl=find2(1);
Probofmale= 1-Probofgirl;
muw0=find2(2);
sigmaw0=find2(4);
muw1= find2(3);
sigmaw1= find2(5);
ppp=(1/sqrt(2*pi*(sigmaw0^2)))*exp((-(t-muw0)^2)/(2*(sigmaw0^2)));

p11=(1/sqrt(2*pi*(sigmaw1^2)))*exp(-((t-muw1)^2)/(2*sigmaw1^2));

%P_mw0=(1/2)*(1+erf((t-muw0)/(sigmaw0*sqrt(2))));

%P_mw1=(1/2)*(1+erf((t-muw1)/(sigmaw1*sqrt(2))));
%p_g0w = (P_mw0 * Probofmale) / ((P_mw0 * Probofmale)+ (P_mw1*Probofgirl));
p_g0000w = (ppp * Probofmale) / ((ppp * Probofmale)+ (p11*Probofgirl));

if p_g0000w > 0.5
  weight=0;
else
   weight=1; 

end
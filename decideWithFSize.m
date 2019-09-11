function size = decideWithFSize(t,x)
sets
%find =[Pg;muw0;muw1;sigma0;sigma1;mus0;mus1;sigmas0;sigmas1];
find2 =findParameters(x);
Probofgirl=find2(1);
Probofmale= 1-Probofgirl;
mus0=find2(6);
sigmas0=find2(8);
mus1= find2(7);
sigmas1= find2(9);
ppp=(1/sqrt(2*pi*(sigmas0^2)))*exp((-(t-mus0)^2)/(2*(sigmas0^2)));

p11=(1/sqrt(2*pi*(sigmas1^2)))*exp(-((t-mus1)^2)/(2*sigmas1^2));

%P_mw0=(1/2)*(1+erf((t-muw0)/(sigmaw0*sqrt(2))));

%P_mw1=(1/2)*(1+erf((t-muw1)/(sigmaw1*sqrt(2))));
%p_g0w = (P_mw0 * Probofmale) / ((P_mw0 * Probofmale)+ (P_mw1*Probofgirl));
p_g0000s = (ppp * Probofmale) / ((ppp * Probofmale)+ (p11*Probofgirl));


if p_g0000s > 0.5
  size=0;
else
   size=1; 
end

end

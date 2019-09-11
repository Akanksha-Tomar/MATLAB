function evalweight = evaluateWithWeight(Lweig,x)
sets
%find =[Pg;muw0;muw1;sigma0;sigma1;mus0;mus1;sigmas0;sigmas1];
find2 =findParameters(x);
Probofgirl=find2(1);
Probofmale= 1-Probofgirl;
muw0=find2(2);
sigmaw0=find2(4);
muw1= find2(3);
sigmaw1= find2(5);


n= size(Lweig,1);

correct =0;
for i = 1:n
   t= Lweig(i);
ppp=(1/sqrt(2*pi*(sigmaw0^2)))*exp((-(t-muw0)^2)/(2*(sigmaw0^2)));
p11=(1/sqrt(2*pi*(sigmaw1^2)))*exp(-((t-muw1)^2)/(2*sigmaw1^2));
p_g0000w = (ppp * Probofmale) / ((ppp * Probofmale)+ (p11*Probofgirl));

if p_g0000w > 0.5
  
  if evaluatingSet(i,1)==0
          correct = correct +1;
  end
else
    if evaluatingSet(i,1)==1
          correct = correct +1;
    end
   
end
 
 evalweight = correct/n;
end
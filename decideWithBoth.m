function both = decideWithBoth(t,s,x)
sets
find2 =findParameters(x);
Probofgirl=find2(1);
Probofmale= 1-Probofgirl;
muw0=find2(2);
sigmaw0=find2(4);
muw1= find2(3);
sigmaw1= find2(5);
mus0=find2(6);
sigmas0=find2(8);
mus1= find2(7);
sigmas1= find2(9);
probmaleshoe=(1/sqrt(2*pi*(sigmas0^2)))*exp((-(s-mus0)^2)/(2*(sigmas0^2)));

probfemaleshoe=(1/sqrt(2*pi*(sigmas1^2)))*exp(-((s-mus1)^2)/(2*sigmas1^2));

probmaleweight=(1/sqrt(2*pi*(sigmaw0^2)))*exp((-(t-muw0)^2)/(2*(sigmaw0^2)));

probfemaleweight=(1/sqrt(2*pi*(sigmaw1^2)))*exp(-((t-muw1)^2)/(2*sigmaw1^2));

bothmale= probmaleweight*probmaleshoe;
bothfemale = probfemaleweight * probfemaleshoe;

probboth = (bothmale* Probofmale) /(bothmale* Probofmale + bothfemale*Probofgirl);


if probboth>0.5
    both =0;
else
    both =1;
end
end
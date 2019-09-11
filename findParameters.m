function find = findParameters(x)
sets
L=size(x,1);
g=0;
for i= 1:L
    if x(i,1)==1
        g=g+1;
    end
end

w1=0;
w0=0;
w=0;

for i= 1:L
    w = x(i,2) +w;
    %disp(w)
    if x(i,1)==1
        w1 = x(i,2)+w1;
    else
        w0 = x(i,2)+w0;
    end
end



Pg=g/L;
muw0 = w0/(L-g);
muw1 = w1/g;
S1=0;
S0=0;
for i= 1:L
    w = x(i,2) +w;
    %disp(w)
    if x(i,1)==1
       % w1 = x(i,2)+w1;
        S1 = (x(i,2)-muw1)^2 +S1;
    else
       % w0 = x(i,2)+w0;
       S0 = (x(i,2)-muw0)^2 +S0;
    end
end
%find =[g;w1;w0;L;w;S1;S0];
sigma0 = sqrt(S0/(L-g));

sigma1 = sqrt(S1/g);
sh1=0;
sh0=0;
sh=0;

for i= 1:L
    sh = x(i,3) +sh;
    %disp(w)
    if x(i,1)==1
        sh1 = x(i,3)+sh1;
    else
        sh0 = x(i,3)+sh0;
    end
end

mus0 = sh0/(L-g);
mus1 = sh1/g;
Shoe1=0;
Shoe0=0;
for i= 1:L
   
    if x(i,1)==1
       % w1 = x(i,2)+w1;
        Shoe1 = (x(i,3)-mus1)^2 +Shoe1;
    else
       % w0 = x(i,2)+w0;
       Shoe0 = (x(i,3)-mus0)^2 +Shoe0;
    end
end
find1 =[g;w1;w0;L;w;S1;S0;sh1;sh0;Shoe1;Shoe0];
sigmas0 = sqrt(Shoe0/(L-g));

sigmas1 = sqrt(Shoe1/g);
find =[Pg;muw0;muw1;sigma0;sigma1;mus0;mus1;sigmas0;sigmas1];
end
function evalsize = evaluateWithBoth(Lweig,lshoe,x)
sets

n= size(evaluatingSet,1);
incorrect=0;
correct =0;
for i = 1:n
   t= Lweig(i);
   s= lshoe(i);
 if decideWithBoth(t,s,x) ==1 
     if evaluatingSet(i,1)==1
          correct = correct +1;
     end
 elseif decideWithBoth(t,s,x) ==0
       if evaluatingSet(i,1)==0
          correct = correct +1;
       end
 else
     incorrect = incorrect +1;
 end
 evalsize = correct/n;
end
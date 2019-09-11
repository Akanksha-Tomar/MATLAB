function evalsize = evaluateWithFSize(lshoe,x)
sets
%x= evaluatingSet;
n= size(lshoe,1);
incorrect=0;
correct =0;
for i = 1:n
   t= lshoe(i);
 if decideWithFSize(t,x) ==1 
     if evaluatingSet(i,1)==1
          correct = correct +1;
     end
 elseif decideWithFSize(t,x) ==0
       if evaluatingSet(i,1)==0
          correct = correct +1;
       end
 else
     incorrect = incorrect +1;
 end
 evalsize = correct/n;
end
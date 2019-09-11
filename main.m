sets
%evaluatingSet,learningSet
%question 1.a
%find =[Pg;muw0;muw1;sigma0;sigma1;mus0;mus1;sigmas0;sigmas1];
%%%---------CALLING THE PARAMETERS IN BELOW ORDER--------------------------------------%%%
%find = [prob of girls;mean weight men;mean weight women;std men;std women;mean shoe men;mean women shoe;std shoe men;std shoe women]
find1 =findParameters(learningSet);

%question1.b

find2 =findParameters(learningSet);
disp(['the parameters are PG= ',num2str(find2(1)), 'Mean weight men', num2str(find2(2)), 'Mean weight women', num2str(find2(3))]);
disp(['STDeviation men', num2str(find2(4)),'STDeviation women', num2str(find2(5))]);
disp(['mean shoe size men', num2str(find2(6)),'mean shoe size women', num2str(find2(7))]);
disp(['STDeviation shoe men', num2str(find2(8)),'STDeviation shoe women', num2str(find2(9))]);

%question 2
x=learningSet;
genderweight=decideWithWeight(66.6,x);
gendersize=decideWithFSize(5.8,x);
genderboth=decideWithBoth(66.6,5.8,x);

%question3
x=learningSet; %%%%%% for using parameters of 1.b
y=evaluatingSet;
Listweight=y(:,2); %%%%%%%%%%%%input list of weight from evaluatingsets
listshoe=y(:,3);   %%%%%%%%%%%%input list of shoe size from evaluatingsets
correctweightratio = evaluateWithWeight(Listweight,x);
correctsizeratio = evaluateWithFSize(listshoe,x);
correctbothratio = evaluateWithBoth(Listweight,listshoe,x);
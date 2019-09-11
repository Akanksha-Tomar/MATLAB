# MATLAB
Classified individuals of a dataset into categories and predicted gender based on different weights and sizes.

Implement a naive bayesian classifier. It is used to classify individuals of a population into categories, knowing some of their characteristics. Here we
want to classify inhabitants of Gotham city into male or female knowing their weight and their foot size.


Learning set We have a sample of k inhabitants of Gotham, and for each individual in this
sample we know its sex, its weight and its foot size. This sample is a list of k vectors
have the three components:
• the sex gi (an integer in {0, 1}),
• the weight wi (a positive real number),
• the foot size si (a positive real number).
This sample is called the learning set. A learning set is given in the table learningSet defined in
the file sets.m.

In a file findParameters.m, takes in input a learning
set and computing the parameters of the classifier for this set. (i.e. find
• the mean and the standard deviation of the weight of the males in the learning set,
• the mean and the standard deviation of the weight of the females in the learning set,

In a file main.m, compute the parameters of the classifier for learningSet.

In the files decideWithWeight.m, decideWithSize.m and decideWithBoth.m, implement
three bayesian classifiers that, be given a weight w and a foot size s of an individual and the
parameters of the classifier, decide if the individual is a male or a female 

In main.m, use your three functions to decide if an inhabitant with weight w = 66.6 and
foot size s = 5.8 is a male or a female.

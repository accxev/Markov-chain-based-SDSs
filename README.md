Markov-chain-based-SDSs
=======================

A small Matlab-script to calculate the lotteries for Markov-chain-based social choice functions and social decision schemes, and to check SD-strategyproofness;

How to use this script?
-----------------------
- under construction -

What is the functionality of your script files?
-----------------------------------------------

compare :: vector, vector -> vector
compare(v1,v2) compares v1 and v2, calculating the difference between scores. This function is pretty uselss, just use (v1-v2) instead.

hamming1 :: vector, int -> [vector]
hamming(v,n) takes a vector representing a tournament of size n in Brendan McKay-notation and then returns a list with all tournaments with reachable from it by reverting a single edge, also in Brendan McKay-notation

Markov :: file, int, int -> [vector]
Markov(file, all, n) simply calculates the Markov scores of all tournaments given in file 'file' in Brendan McKay-notation. The number of all tournaments in the file and the size of these tournaments has to be given as parameters to the function. Note that only tournaments with the same size may be calculated in a single file.

- under construction -


Is it possible to get the thesis you wrote?
-------------------------------------------
Of course, just Email me.

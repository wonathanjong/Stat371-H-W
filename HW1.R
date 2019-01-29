#***Problem 1***
#$$P1: Question 1$$
AK = .67
LA = .61
NC = .52
#assuming all these events are independent
#4 diff ways to win
pr_AK_LA_NC = AK*LA*NC 
pr_AK_LA = AK*LA*(1-NC)
pr_AK_NC = AK*(1-LA)*NC
pr_LA_NC = (1-AK)*LA*NC
answerP1Q1 = pr_AK_LA_NC + pr_AK_LA + pr_AK_NC + pr_LA_NC
##0.649252
margin = .8-answerP1Q1
#$$P1: Question 2$$
##The betting markets probability is .150748 higher than our answer. 
##This is so much higher because the events of the states are
##most likely not independent, but dependent

#***Problem 2***
#$$P1: Question 1$$
AK = .67
LA = .61
NC = .52
#assuming all these events are independent
#4 diff ways to win out of ... 
statesPossOutcomes= 2^3
answerP1Q1 = 4/statesPossOutcomes
##0.5

#$$P1: Question 2$$
##The betting markets probability is .3 higher than our answer. 
##This is so much higher because the events of the states are
##most likely not independent, but dependent





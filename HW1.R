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
##This is not enough info for me to make the decision. 
##I would need to know the length of the delays because
#If Delta's delays were significantly longer than those of United's
#the 2% difference would not make up for the greater amount of lost time

#***Problem 3***
#$$P3: Section B$$
#$$P3: Section C$$
#$$P3: Section D$$




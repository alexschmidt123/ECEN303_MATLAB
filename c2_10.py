import numpy as np

n=1000
die1 = np.ceil(6*np.random.rand(n))
die2 = np.ceil(6*np.random.rand(n))
# optional
# die1 = np.random.randint(1,6,n)
# die2 = np.random.randint(1,6,n)
die_sum= die1+die2

nA=np.sum(die_sum==5)

nA1=0
for k in range(n):
    if die_sum[k]==5:
        nA1+=1

print(nA1/n)
print(nA/n)


import numpy as np
import matplotlib.pyplot as plt
import pandas as pd

# No of data points used
N = 500
# normal distribution
data = np.random.randn(N)
# sort the data in ascending order
x = np.sort(data)
# get the cdf values of y
y = np.arange(N) / float(N)
# plotting
plt.xlim(-4, 3)
plt.xlabel('x')
plt.ylabel('F_X(x)')
plt.title('CDF of Continuous RVs')
plt.plot(x, y, marker='.')
plt.plot([-4, 3], [1,1], color='black', linestyle="dashed") 
plt.plot([-4, -3], [0,0], color='black', linestyle="dashed")
plt.show()
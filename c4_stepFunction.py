import matplotlib.pyplot as plt
import numpy as np

x = np.array([6, 9, 12, 15])
y = np.array([0, 2, 4, 6])
plt.step(x, y, 'b', where='pre')
plt.xlabel("x")
plt.ylabel("F_X(x)")
labels_x = ['x1', 'x2', 'x3', '']
plt.xticks(x, labels_x)
plt.yticks([])
plt.xlim(0, 20)
plt.ylim(0, 7)
plt.show()
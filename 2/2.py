import numpy as np

def unitStep(v):
    if v>=0:
        return 1
    else:
        return 0

def pModel(x,w,b):
    v = np.dot(w,x) + b
    y = unitStep(v)
    return y

def ANDfunction(x):
    w = np.array([1,1])
    b = -1.5
    return pModel(x,w,b)

t1=np.array([0,1])
t2=np.array([1,1])
t3=np.array([0,0])
t4=np.array([1,0])

print("AND({},{})={}".format(0,1,ANDfunction(t1)))
print("AND({},{})={}".format(1,1,ANDfunction(t2)))
print("AND({},{})={}".format(0,0,ANDfunction(t3)))
print("AND({},{})={}".format(1,0,ANDfunction(t4)))

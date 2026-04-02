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

def ORfunction(x):
    w = np.array([1,1])
    b = -0.5
    return pModel(x,w,b)

t1=np.array([0,1])
t2=np.array([1,1])
t3=np.array([0,0])
t4=np.array([1,0])

print("OR({},{})={}".format(0,1,ORfunction(t1)))
print("OR({},{})={}".format(1,1,ORfunction(t2)))
print("OR({},{})={}".format(0,0,ORfunction(t3)))
print("OR({},{})={}".format(1,0,ORfunction(t4)))

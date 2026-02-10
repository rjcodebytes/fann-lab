import numpy as np

def unitStep(v):
    if v>=0:
        return 1
    else:
        return 0

def perceptronModel(x,w,b):
    v=np.dot(w,x)+b
    y=unitStep(v)
    return y

def NOT_Function(x):
    w=-1
    b=0.5
    return perceptronModel(x,w,b)

t1=np.array(1)
t2=np.array(0)

print("NOT({})={}".format(1,NOT_Function(t1)))
print("NOT({})={}".format(0,NOT_Function(t2)))

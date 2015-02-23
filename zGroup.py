def zgroup(n):
    g = []
    for i in range(n):
        g.append(i)
    return g

def zadd(n,a,b):
    return (a+b) % n

def zmult(n,a,x):
    return (a*x) % n

def zgen(n,a):
    gen = []
    x = 1
    while zmult(n,a,x) != zmult(n,a,0):
        gen.append(zmult(n,a,x))
        x += 1
    return gen 
 

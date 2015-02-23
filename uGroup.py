def gcd(m,n):
    if m > n:
        if n == 0:
            return m
        elif n > 0:
            return gcd(n,m % n)
        else:
            print "Boohoo."
    elif n > m:
        if m == 0:
            return n
        elif m > 0:
            return gcd(m,n % m)
        else:
            print "Bah humbug."

def ugroup(n):
    g = []
    for i in range(1,n+1):
        if gcd(n,i) == 1:
            g.append(i)
    return g
        
def umult(n,a,b):
    return (a*b) % n

def upow(n,a,x):
    return (a**x) % n

def ugen(n,a):
    gen = []
    x = 1
    while upow(n,a,x) != upow(n,a,0):
        gen.append(upow(n,a,x))
        x += 1
    return gen 

#def table(n): 
#    t="*"+str(n)+"| "
#    for a in ugroup(n):#
#	t += str(a)+" \n"
#    for x in ugroup(n):#
#	t += " " + str(n) + "| "
#	for y in ugroup(n):
	    

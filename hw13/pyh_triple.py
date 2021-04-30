from z3 import *


s = Solver ()

# Declare three integer variables/constants of Z3Py {x, y, z} :
x, y, z, a, b = Ints ('x y z a b')

# Assert that {x, y, z} are positive integers such that 0 < x < y < z :
s.add (And( 0 < x , x < y , y < z ) )

# Assert that x*x + y*y = z*z, i.e. (x,y,z) is a Pythagorean triple :
s.add ( x * x + y * y == z * z )

s.add(And(x > 1, Not(Exists([a, b], And(a < x, b < x, a > 1, b > 1, x == a*b)))))


n = 1
results = []
while s.check() == sat and n <= 20 :
    m = s.model()
    results.append (m)
    s.add ( x != m[x] )
    n = n+1

# print len (results)

for p in range (len (results)) :
    print (results[p])

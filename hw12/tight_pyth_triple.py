from z3 import Solver, Ints, And, sat
s = Solver ()

# Declare three integer variables/constants of Z3Py {x, y, z} :
x, y, z = Ints ('x y z')

# Assert that {x, y, z} are positive integers such that 0 < x < y < z :
s.add (And( 0 < x , x < y , y < z ) )

# Assert that x*x + y*y = z*z, i.e. (x,y,z) is a Pythagorean triple :
s.add ( x % 2 != 0)
s.add ( y % 2 == 0)
s.add ( y == z - 1)
s.add ( x * x + y * y == z * z )

n = 1
results = []
while s.check() == sat and n <= 3 :
    m = s.model()
    results.append (m)
    s.add ( x != m[x] )
    n = n+1

# print len (results)

for p in range (len (results)) :
    print (results[p])
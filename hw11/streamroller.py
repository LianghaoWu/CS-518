from z3 import *

s = Solver()

x, y, z, u = Ints('x y z u')

def Wolf(x: int):
    return x == 0

def Fox(x: int):
    return x == 1

def Bird(x: int):
    return x == 2

def Caterpillar(x: int):
    return x == 3

def Snail(x: int):
    return x == 4

def Grain(x: int):
    return x == 5

def Animal(x: int):
    return Or (x==0, x==1, x==2, x==3, x==4)

def Plant(x: int):
    return x==5

def Eats(a, b):
    return Or(And(Bird(x), Snail(y)), And(Wolf(x), Fox(y)), And(Bird(x), Caterpillar(x)), And(Wolf(x), Bird(x)), And(Fox(x), Bird(x)), And(Caterpillar(x), Plant(y)), And(Snail(x), Plant(y)))

def Smaller(x: int, y: int):
    return Or(
            And(Caterpillar(x), Bird(y)), And(Caterpillar(x), Fox(y)), And(Caterpillar(x), Wolf(y)),
            And(Snail(x), Bird(y)), And(Snail(x), Fox(y)), And(Snail(x), Wolf(y)),
            And(Bird(x), Fox(y)), And(Bird(x), Wolf(y)),
            And(Fox(x), Wolf(y)))

wolfIsAnimal = Implies(Wolf(x), Animal(x))
foxIsAnimal = Implies(Fox(x), Animal(x))
birdIsAnimal = Implies(Bird(x), Animal(x))
caterpillarIsAnimal = Implies(Caterpillar(x), Animal(x))
snailIsAnimal = Implies(Snail(x), Animal(x))
grainIsPlant= Implies(Grain(x), Plant(x))
AnimalsArentPlants = Implies(Animal(x), Not(Plant(x)))

eatRelation = ForAll(x, Implies(Animal(x), Or(ForAll(y, Implies(Plant(y), Eats(x,y))), ForAll(z, Implies(And(Animal(z), Smaller(z, x), Exists(u, And(Plant(u), Eats(z, u)))), Eats(x, z))))))

s.add(wolfIsAnimal, foxIsAnimal, birdIsAnimal, caterpillarIsAnimal, snailIsAnimal, grainIsPlant, AnimalsArentPlants, eatRelation)

print (s.check())
print (s.model())

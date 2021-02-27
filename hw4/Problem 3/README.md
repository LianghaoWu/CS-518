## First

![4](https://github.com/LianghaoWu/CS-518/blob/main/hw4/pic/4.png?raw=true)

so, we change i to n and add a pre definition of primes and the return value to it

```
    primes = []
    if n == 2:
        primes.append(2)
    # go through each elem of primes list
    for i in range(len(primes)):
        # go through each of 2...n
        for j in range(len(n)):
            # check if not divisible by elem of list
            if i%j != 0:
                primes.append(i) 
    return primes
```

## Second 

![5](https://github.com/LianghaoWu/CS-518/blob/main/hw4/pic/5.png?raw=true)

for n > 2 we will get a empty list, so we change the code to
```
    primes = []
    if n >= 2:
        primes.append(2)
    # go through each elem of primes list
    for i in range(len(primes)):
        # go through each of 2...n
        for j in range(n):
            # check if not divisible by elem of list
            if i%j != 0:
                primes.append(i) 
    return primes
```

## Third 

![6](https://github.com/LianghaoWu/CS-518/blob/main/hw4/pic/6.png?raw=true)

![7](https://github.com/LianghaoWu/CS-518/blob/main/hw4/pic/7.png?raw=true)

we can fix these problems to 

```
    primes = []
    if n >= 2:
        primes.append(2)
    # go through each elem of primes list
    for i in range(len(primes)):
        # go through each of 2...n
        for j in range(2,n):
            # check if not divisible by elem of list
            if i%j != 0:
                primes.append(i) 
    return primes
```

but it will still give us:

![8](https://github.com/LianghaoWu/CS-518/blob/main/hw4/pic/8.png?raw=true)

so we change our code to:
```
    primes = []
    if n >= 2:
        primes.append(2)
    # go through each elem of primes list
    for i in range(2,n):
        # go through each of 2...n
        for j in range(2,i):
            # check if not divisible by elem of list
            if i%j != 0:
                primes.append(i)
                break
            else: break 
    return primes
```
but still it will give us an error like:

![9](https://github.com/LianghaoWu/CS-518/blob/main/hw4/pic/9.png?raw=true)

this time, we can see that we must judge ` i%j == 0 ` instead of `i%j != 0` and add a flag to decide whether to append the list

```
    primes = []  
    # go through each elem of primes list
    for i in range(2,n):
        # go through each of 2...n
        flag = 0
        for j in range(2,i):
            # check if not divisible by elem of list
            if i%j == 0:
                flag = 1
                break
        if flag == 0:
            primes.append(i)
    return primes
```

and we will pass the test

![10](https://github.com/LianghaoWu/CS-518/blob/main/hw4/pic/10.png?raw=true)

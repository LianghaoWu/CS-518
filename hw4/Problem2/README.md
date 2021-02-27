## First time

we run pytest the first time and get an error like this:

![pic 1](https://github.com/LianghaoWu/CS-518/blob/main/hw4/pic/1.png?raw=true)

we can find that index out of range, so we change to

```
for i in range(len(L)):
        j = len(L) - i -1
        temp = L[i]
        L[i] = L[j]
        L[j] = L[i]
```

## Second time

we run pytest the first time and get an error like this:

![pic 2](https://github.com/LianghaoWu/CS-518/blob/main/hw4/pic/2.png?raw=true)

it seems like we copy the latter two numbers, so we change to :

```
for i in range(int(len(L))):
        j = len(L) - i -1
        temp = L[i]
        L[i] = L[j]
        L[j] = temp
```

## Third time

we run pytest the first time and pass the test:

![pic 3](https://github.com/LianghaoWu/CS-518/blob/main/hw4/pic/3.png?raw=true)

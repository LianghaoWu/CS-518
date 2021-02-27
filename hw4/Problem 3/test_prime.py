import pytest

def primes_list(n):

    ## input: n an integer > 1
    ## returns: list of all the primes up to and including n
    
    # initialize primes list
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

def test_prime ():
    assert primes_list(15) == [2,3,5,7,11,13]


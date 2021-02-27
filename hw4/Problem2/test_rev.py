import pytest

def rev_list(L):
    """
    input: L, a list
    Modifies L such that its elements are in reverse order
    returns: nothing
    """
    for i in range(len(L)):
        j = len(L) - i -1
        temp = L[i]
        L[i] = L[j]
        L[j] = temp

def test_rev_1():
    L = [1,2,3,4]
    rev_list(L)
    assert L == [4,3,2,1]
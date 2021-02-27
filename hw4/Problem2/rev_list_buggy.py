## To run this script, issue the command:
##       >>> execfile ('rev_list_buggy.py')              IN PYTHON 2
##       >>> exec (open('rev_list_buggy.py').read())     IN PYTHON 3

########################################
### Buggy code to reverse a list
### Try to debug it! (fixes needed are explained below)
########################################

def rev_list_buggy1(L):
    """
    input: L, a list
    Modifies L such that its elements are in reverse order
    returns: nothing
    """
    for i in range(len(L)):
        j = len(L) - i
        temp = L[i]
        L[i] = L[j]
        L[j] = L[i]

def rev_list_buggy2(L):
    """
    input: L, a list
    Modifies L such that its elements are in reverse order
    returns: nothing
    """
    for i in range(int(len(L)/2)):
        j = len(L) - i -1
        temp = L[i]
        L[i] = L[j]
        L[j] = temp
        
L = [1,2,3,4]
# rev_list_buggy1 (L)
rev_list_buggy2 (L)
print(L)



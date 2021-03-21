Homework for week 7

kthEven.dfy can't work

# Problem 1

## 1. 

Which of the following six well-formed formulas (WFF’s) of first-order logic are equivalent and which are not?

a. P(x) ∨ Q(x)

b. ∀ x.P(x) ∨ Q(x)

c. ∀ x.P(x) ∨ Q(x)

d. ∀ x. P(x) ∨ ∀ x. Q(x)

e. ∀ x. P(x) ∨ ∀ y. Q(y)

f. ∀ x.∀ y.P(x) ∨ Q(y)

### My Answer

a and c are equivalent, b and f are equivalent. d and e are not equivalent to others.

## 2. 

Consider the two following wff’s:

(g) ∀ x.∃ y. P(x, y)

(h) ∃ y.∀ x. P(x, y)

Are they equivalent? If yes, try to justify your answer. If no, does one imply the other.

### My Answer

They are not equivalent. h implies g.


## 3. 

Consider the two following wff’s:

(i) ∀ x. P(x) → ∃ x. Q(x)

(j) ∀ x.(P(x) → Q(x))

Are they equivalent? If yes, try to justify your answer. If no, does one imply the other.

### My Answer

They are equivalent.

## 4. 

Consider the following Hoare triple (also called a Hoare PCA):

{ ϕ }

&ensp;&ensp;if (x > y)
  
&ensp;&ensp;then ( temp := x; x := y; y := temp; )
  
{ x < y }

Determine a weakest pre-condition ϕ relative to the given post-condition.

### My Answer

The weakest pre-condition ϕ relative to the given post-condition is：

` 
x != y
`


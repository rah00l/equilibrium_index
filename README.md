# equilibrium_index
Finding the Equilibrium Index of an Array

> A zero-indexed array A consisting of N integers is given.An equilibrium index of this array is any integer P such that 0 <= P < N and the sum of elements of lower indices is equal to the sum of elements of higher indices.

`A[0] + A[1] + ... + A[P-1] = A[P+1] + ... + A[N-2] + A[N-1].`

Sum of zero elements is assumed to be equal to 0. This can happen if P = 0 or if P = N-1.

For example, consider the following array A consisting of N = 7 elements:
A[0] = -7

A[1] = 1

A[2] = 5

A[3] = 2

A[4] = -4

A[5] = 3

A[6] = 0

P = 3 is an equilibrium index of this array, because:

`A[0] + A[1] + A[2] = A[4] + A[5] + A[6]`

P = 6 is also an equilibrium index, because:

`A[0] + A[1] + A[2] + A[3] + A[4] + A[5] = 0`

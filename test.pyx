import numpy as np
cimport numpy as np


# Here we write a function which can take an array of numbers.
# This is using the Cython language. We basically pass some hints
# about what the arguments are.

def cython_sum(double [:] arr):
    cdef double result = 0 # Using cdef here means we define a C variable. 'double' means a floating point number with 16 bits is used.
    cdef int n = len(arr)
    for i in range(n):
        result += arr[i]
    return result


cdef extern from "test.h":
    double c_sum(double *arr, int n)


cpdef C_sum(double [:] arr): # cpdef means that a Cython function can be called from Python directly, rather than having to put a wrapper around it.
    cdef int n = len(arr)
    return c_sum(&arr[0], n)




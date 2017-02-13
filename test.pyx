import numpy as np
cimport numpy as np



def c_sum(double [:] arr, int n):
    cdef double result = 0
    for i in range(n):
        result += arr[i]
    return result


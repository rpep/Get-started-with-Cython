import test
import numpy as np

def test_cython_sum():
    n = 1000000
    a = np.linspace(0, 1, n)
    assert np.sum(a) - test.c_sum(a, n) < 1e-7


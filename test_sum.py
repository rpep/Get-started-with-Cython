import test
import numpy as np

def test_cython_sum():
    n = 1000000
    a = np.linspace(0, 1, n)
    assert np.sum(a) - test.cython_sum(a) < 1e-7

def test_c_sum():
    n = 1000000
    a = np.linspace(0, 1, n)
    assert np.sum(a) - test.C_sum(a) < 1e-7

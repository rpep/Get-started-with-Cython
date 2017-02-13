import numpy as np
from distutils.core import setup
from distutils.extension import Extension
from Cython.Distutils import build_ext

ext_modules = [Extension("test", ["test.pyx"], extra_compile_args=['-O3'])]

setup(
  name = 'Hello world app',
  cmdclass = {'build_ext': build_ext},
  include_dirs = [np.get_include()],   
  ext_modules = ext_modules
)

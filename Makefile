all:
	python setup.py build_ext --inplace

clean:
	rm -rf *.so
	rm -rf *.dylib
	rm -rf build

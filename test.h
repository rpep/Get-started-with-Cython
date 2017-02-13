#include<math.h>

double c_sum(double *arr, int n) {
	double result = 0;
	for(int i = 0; i < n; i++) {
		result += arr[i];
	}
	return result;
}

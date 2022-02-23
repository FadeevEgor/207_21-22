#include "mex.h"

void Aver(double*, double*, int, int);

void mexFunction(int nOut, mxArray* pOut[],int nIn, mxArray* pIn[])
{
	double* pDataIn;
	double* pDataOut;
	int M, N;
	if (nIn != 1) 
		mexErrMsgTxt("One input required");
	if (!mxIsDouble(pIn[0]) || mxIsComplex(pIn[0]))
		mexErrMsgTxt("Input must be a noncomplex double matrix only");
	M = mxGetM(pIn[0]);
	N = mxGetN(pIn[0]);
	pOut[0] = mxCreateDoubleMatrix(M, 1, mxREAL);
	pDataIn = mxGetPr(pIn[0]);
	pDataOut = mxGetPr(pOut[0]);
	Aver(pDataIn, pDataOut,M,N);
}
void Aver(double* pin,double* pout,int m,int n)
	{
	int i,j; double sum;
	for (i=0; i<m; i++)
	{
		sum = 0;
		for (j = 0; j < n; j++)
			sum = sum + *(pin+i+j*m);
		*(pout+i) = sum / ((double)n);
	}
}

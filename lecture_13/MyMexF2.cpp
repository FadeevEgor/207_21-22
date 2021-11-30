#include "mex.h"

void MyDouble(int,int,double*,double*);

void mexFunction(int nOut,mxArray* pOut[], int nIn,const mxArray* pIn[])
{
	int m, n; 
	double *pI, *pO;
	if (nIn == 0) mexErrMsgTxt("Input required");{
		if (nOut > 0){
			if (!mxIsDouble(pIn[0])){
				pOut[0] = mxCreateDoubleMatrix(1, 1, mxREAL);
				*(mxGetPr(pOut[0])) = 1;
			}
			else{
				m = mxGetM(pIn[0]); 
				n = mxGetN(pIn[0]);
				pOut[0] = mxCreateDoubleMatrix(m,n,mxREAL);
				pI = mxGetPr(pIn[0]);
				pO = mxGetPr(pOut[0]);
				MyDouble(m,n,pI,pO);
			}
		}
	}
}

void MyDouble(int m,int n,double* pI,double* pO){
	int i;
	for (i=0; i< n*m; i++) 
		*(pO+i)=2 * (*(pI+i));
}


#include "mex.h"
#include <memory.h>

void mexFunction(int nOut, mxArray* pOut[], int nIn, const mxArray* pIn[])
{
	int ret; 
	double x; 
	char str[128];
	mxArray* pAr[1]; 
	mxArray* pRes[1];
	double pS[] = {
		2, 0, 0, 
		0, 2, 0, 
		0, 0, 3
		};
	
	if (nIn!=0) 
		mexErrMsgTxt("None input required");
	else if (nOut!=0)
			mexErrMsgTxt("None output require");
	
	pAr[0] = mxCreateDoubleMatrix(3, 3, mxREAL);
	memcpy(mxGetPr(pAr[0]), pS, sizeof(pS));
	
	ret = mexCallMATLAB(1, pRes, 1, pAr, "det"); // <--- 
	
	if (ret!=0) 
		mexErrMsgTxt("det failure");
	
	x =* (mxGetPr(pRes[0]));
	sprintf(str, "determinant= %f", x);
	mxDestroyArray(pRes[0]);
	pRes[0] = mxCreateString(str);
	mexCallMATLAB(0, NULL, 1, pRes, "disp");
	mxDestroyArray(pAr[0]);
	mxDestroyArray(pRes[0]);
}

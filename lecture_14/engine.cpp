#include <stdio.h>
#include <memory.h>
#include <conio.h>
#include "engine.h"
#include "tchar.h"

double data[9] = { 1,2,3,5,6,4,-1,2,3 };
int _tmain(int argc, _TCHAR* argv[])
{
	Engine* pEng = NULL;
	mxArray* pArr = NULL;
	mxArray* pV = NULL;
	double* pReal = NULL;
	double* pImage = NULL;
	int M, i;
	pEng = engOpen(NULL);
	if (pEng == NULL)
	{
		printf("\nCan't start Engine session!");
		return 2;
	}
	pArr = mxCreateDoubleMatrix(3, 3, mxREAL);
	if (pArr == NULL)
	{
		printf("\nCan't create matrix!");
		return 1;
	}
	memcpy(mxGetPr(pArr), data, 9 * sizeof(double));
	engPutVariable(pEng, "A", pArr);
	engEvalString(pEng, "Vec=eig(A)");
	pV = engGetVariable(pEng, "Vec");
	engClose(pEng);
	if (pV != NULL)
	{
		pReal = mxGetPr(pV);
		pImage = mxGetPi(pV);
		// pImage = mxGetPr(pV);

		
		M = mxGetM(pV);
		printf("Real parts of eig vector\n");
		for (i = 0; i < M; i++)
		{
			printf("%lf\n", pReal[i]);
		}
		if (pImage)
		{
			printf("\nImage parts of eig vector\n");
			for (i = 0; i < M; i++)
			{
				printf("%lf\n", pImage[i]);
			}
		}
	}
	mxDestroyArray(pArr);
	if (pV != NULL) mxDestroyArray(pV);
		printf("Press any key to exit");
	_getch();
	return 0;
}

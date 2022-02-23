#include <stdio.h>
#include <memory.h>
#include <conio.h>
#include "engine.h"
#define n 100

int main(void)
{
	int i;
	double data[n];
	Engine* pEng=NULL;
	mxArray* pArr=NULL;
	pEng=engOpen(NULL);
	for (i=0; i<n; i++) 
		data[i]=(6.28/n)*i;
	if (pEng==NULL)
	{
		printf("\nCan't start Engine session!");
		return 2;
	}
	pArr=mxCreateDoubleMatrix(1,n,mxREAL);
	if (pArr==NULL)
	{
		printf("\nCan't create vector");
		return 1;
	}
	memcpy(mxGetPr(pArr),data,sizeof(data));
	engPutVariable(pEng,"x",pArr);
	engEvalString(pEng,"for i=1:length(x); y(i)=sin(x(i))^5; end; plot(x,y);");
	engClose(pEng);
	mxDestroyArray(pArr);
	printf("Press any key to exit");
	_getch();
	return 0;
}

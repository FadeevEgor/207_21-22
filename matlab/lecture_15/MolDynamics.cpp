#include <stdio.h>
#include <math.h>
#include <memory.h>
#include <conio.h>
#include "engine.h"


#define t 15
#define n 1000


int main(int argc, char* argv[])
{
	int i, j, k;
	double rij, fx, fy, fz, f14_8;
	double xt[t][n], yt[t][n], zt[t][n];
	double x[n], y[n], z[n];
	double x2[n], y2[n], z2[n];
	double x3[n], y3[n], z3[n];
	double tau;
	double v0, vx[n], vy[n], vz[n];
	Engine* pEng = NULL;
	mxArray *pArrX = NULL, *pArrY = NULL, *pArrZ = NULL;
	for (k = 0; k < 10; k++)
		for (j = 0; j < 10; j++)
			for (i = 0; i < 10; i++){
				x[i + 10*j + 100*k] = i;
				y[i + 10*j + 100*k] = j;
				z[i + 10*j + 100*k] = k;
			}
			
	v0 = 0.3;
	for (i = 0; i < n; i++)
	{
		vx[i] = v0 * (2.0*rand()/RAND_MAX - 1.0);
		vy[i] = v0 * (2.0*rand()/RAND_MAX - 1.0);
		vz[i] = v0 * (2.0*rand()/RAND_MAX - 1.0);
	}
	
	tau=0.05;
	for (i=0;i<n;i++)
	{
		x2[i] = x[i] + tau*vx[i];
		y2[i] = y[i] + tau*vy[i];
		z2[i] = z[i] + tau*vz[i];
	}

	for (i=0;i<n;i++)
	{
		xt[0][i] = x[i];
		yt[0][i] = y[i];
		zt[0][i] = z[i];
		
		xt[1][i] = x2[i];
		yt[1][i] = y2[i];
		zt[1][i] = z2[i];
	}
	
	pEng = engOpen(NULL);
	if (pEng == NULL)
	{
		printf("\nCan't sratr Engine session!");
		return 2;
	}
	
	pArrX=mxCreateDoubleMatrix(1, n, mxREAL);
	if(pArrX==NULL)
	{
		printf("\nCan't create vector");
		return 1;
	}
	memcpy(mxGetPr(pArrX), x, sizeof(x));
	engPutVariable(pEng, "x", pArrX);
	pArrY=mxCreateDoubleMatrix(1,n,mxREAL);
	if(pArrY == NULL)
	{
	printf("\nCan't create vector");
	return 1;
	}
	memcpy(mxGetPr(pArrY), y, sizeof(y));
	engPutVariable(pEng, "y", pArrY);
	pArrZ=mxCreateDoubleMatrix(1, n, mxREAL);
	if(pArrZ == NULL)
	{
		printf("\nCan't create vector");
		return 1;
	}
	
	memcpy(mxGetPr(pArrZ),z,sizeof(z));
	engPutVariable(pEng,"z",pArrZ);
	engEvalString(pEng,"hF = figure('NumberTitle', 'off', 'Name', 'Molecular Dynamics', 'Color', [0.8 0.8 0.8])");
	engEvalString(pEng,"hA=axes('Parent', hF, 'Units', 'pixels', 'Position', [25 25 350 350])");
	engEvalString(pEng,"axis([-0.5, 10.5, -0.5, 10.5, -0.5, 10.5])");
	
	for (k = 2; k < t; k++){
		for(i = 0; i < n; i++){
			fx = 0; 
			fy = 0; 
			fz = 0;
			for(j = 0; j < n; j++){
				if (i != j){
					rij = sqrt((x2[i] - x2[j])*(x2[i] - x2[j]) + (y2[i] - y2[j])*(y2[i] - y2[j]) + (z2[i] - z2[j])*(z2[i] - z2[j]));
					f14_8 = exp(-14.0*log(rij)) - exp(-8.0*log(rij));
					fx = fx + f14_8*(x2[i] - x2[j]);
					fy = fy + f14_8*(y2[i] - y2[i]);
					fz = fz + f14_8*(z2[i] - z2[j]);
				}
			}
			x3[i] = 2*x2[i] - x[i] + 12*tau*tau*fx;
			y3[i] = 2*y2[i] - y[i] + 12*tau*tau*fy;
			z3[i] = 2*z2[i] - z[i] + 12*tau*tau*fz;
		}
		for(i = 0; i < n; i++){
			xt[k][i] = x3[i]; 
			yt[k][i] = y3[i]; 
			zt[k][i] = z3[i];
		}
		for(i = 0; i < n; i++){
			x[i] = x2[i]; 
			y[i] = y2[i]; 
			z[i] = z2[i];
			
			x2[i] = x3[i];
			y2[i] = y3[i]; 
			z2[i] = z3[i];
		}
	}
	for(k = 0; k < t; k++){
		for (i = 0; i < n; i++){
			x[i] = xt[k][i];
			y[i] = yt[k][i];
			z[i] = zt[k][i];
		}
		memcpy(mxGetPr(pArrX), x, sizeof(x));
		engPutVariable(pEng, "x", pArrX);
		memcpy(mxGetPr(pArrY), y, sizeof(y));
		engPutVariable(pEng, "y", pArrY);
		memcpy(mxGetPr(pArrZ), z, sizeof(z));
		engPutVariable(pEng, "z", pArrZ);
		engEvalString(pEng, "line(x, y, z, 'Color', 'black', 'EraseMode', 'none', 'LineStyle', 'none', 'Marker', '.', 'MarkerSize', 24)");
		engEvalString(pEng, "pause(0.5)");
		engEvalString(pEng, "line(x, y, z, 'Color', 'white', 'EraseMode', 'none', 'LineStyle', 'none', 'Marker', '.', 'MarkerSize', 24)");
	}
	mxDestroyArray(pArrX);
	mxDestroyArray(pArrY);
	mxDestroyArray(pArrZ);
	printf("Press any key to exit");
	_getch();
	engClose(pEng);
	return 0;
}







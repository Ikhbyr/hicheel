// C program to multiply two square matrices.
#include <stdio.h>
#define N 4

// This function multiplies mat1[][] and mat2[][],
// and stores the result in res[][]
void multiply(int mat1[][N], int mat2[][3], int res[][N])
{
	int i, j, k;
	for (i = 0; i < N; i++)
	{
		for (j = 0; j < N; j++)
		{
			res[i][j] = 0;
			for (k = 0; k < N; k++)
				res[i][j] += mat1[i][k]*mat2[k][j];
		}
	}
}

int main()
{
	int mat1[N][N] = { {1, 1, 1, 1},
					{2, 2, 2, 2},
					{3, 3, 3, 3},
					{4, 4, 4, 4}};

	int mat2[N][3] = { {1, 1, 1},
					{2, 2, 2},
					{3, 3, 3},
					{4, 4, 4}};

	int res[N][3]; // To store result
	int i, j;
	multiply(mat1, mat2, res);

	printf("Result matrix is \n");
	for (i = 0; i < N; i++)
	{
		for (j = 0; j < N-1; j++)
		printf("%d ", res[i][j]);
		printf("\n");
	}

	return 0;
}

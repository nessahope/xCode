#import <Foundation/Foundation.h>
#define N 50
    //Exercise 1
void printArray(int array[N]) {
    for (int i = N; N - 1, i >= 0; i--) {
        printf("%d, ", array[i]);
    printf("\n");
    }
}
    //Exercise 2
void copyArray(int src[N][N][N], int dest[N][N][N]) {
    int i, j, k;
    
    for (int i=0; i<N; i++)
        for (int j=0; j<N; j++)
            for(int k=0; k<N; k++)
                dest[i][j][k] = src[i][j][k];
    printf("%d", dest[i][j][k]);
    
    void copyArray(int src[n][n][n], dest[n][n][n]){
        int i, j, k;
        for (i = 0; i < n; i++)
            for (j = 0; j < n, j++)
                for (k = 0; k <n, k++)
                    dest[i][j][k] = src[i][j[]k];
        printf("%d ", dest[i][j][k]);
    }
    
    // int *s = (int*)src, *d = (int*)dest;
    //for(int i = 0; i < (N * N * N); i++)
    //*(d + i) = *(s + i);
}
    //Exercise 3
    void inSort(int arr[N]) {
        for(int i = 1; i < N; i++) {
            int key = arr[i], j;
            for(j = i - 1; j >= 0 && arr[j] > key; j--)
                arr[j + 1] = arr[j];
            arr[j + 1] = key;
        }
    }
    void swapRows(int src[N], int dest[N]) {
        for(int i = 0; i < N; i++) {
            //        int temp = src[i];
            //        src[i] = dest[i];
            //        dest[i] = temp;
            dest[i] ^= src[i];
            src[i] ^= dest[i];
            dest[i] ^= src[i];
        }
    }
    void sortMatrixByRow(int mat[N][N]) {
        for(int i = 0; i < N; i++)
            inSort(mat[i]);
        for(int i = 0; i < N; i++)
            for(int j = 0; j < N - 1; j++)
                if(mat[j][0] > mat[j + 1][0])
                    swapRows(mat[j], mat[j + 1]);
        // print
        for(int i = 0; i < N; i++) {
            for(int j = 0; j < N; j++)
                printf("%d, ", mat[i][j]);
            printf("\n");
        }
    }
    
    int main(int argc, const char * argv[]) {
        
        int numbers[N] = {23, 13, 42};
        int cube[N][N][N] = {
            {{23, 13, 42},{53, 21, 12},{87, 65, 37}},
            {{23, 76, 99},{45, 22, 17},{10, 13, 19}},
            {{65, 56, 43},{27, 97, 56},{32, 77, 79}}
        };
        int cube2[N][N][N] = {0};
        int matrix[N][N] = {
            {23, 12, 42},
            {54, 62, 18},
            {17, 24, 31}
        };
        printArray(numbers);
        copyArray(cube, cube2);
        sortMatrixByRow(matrix);
        
        return 0;
    }


#import <Foundation/Foundation.h>

#define N 50
//swaping a number into an other number
void swaprows (int i, int c){
    int temp;
    temp = i;
    i = c;
    c = temp;
}

void swaprows(int i, int c) {
    int temp = i;
    i = c;
    c = temp;
}

//printing an array
void print (int a[], int length){
    for (int i = 0; i < length; i++){
        printf("%d ", a[i]);
    }
}

void print (int a[], int length){
    for (int i = 0; i < length; i++){
        printf("%d ", a[i]);
    }
}

//printing in reverse
void reverse (int a[], int length){
for (int i= N-1; i >= 0; i --){
    printf("%d ", a[i]);
    }
}

void reverse(int a[], int length){
    for(int i=N-1; i >=0, i--){
        printf("%d ", a[i]);
    }
}

//copying an array
void copyArray(int src[N][N][N], int dest[N][N][N]) {
    int i, j, k;
    
    for (int i=0; i<N; i++)
        for (int j=0; j<N; j++)
            for(int k=0; k<N; k++)
                dest[i][j][k] = src[i][j][k];
    printf("%d", dest[i][j][k]);
}

void copyArray(int src[N][N][N], int dest[N][N][N]) {
    int i, j, k;
    for (i =0; i < N; i++)
        for(j =0; j <N; j++)
            for(k=0; k <N; k++)
                dest[i][j][k] = src[i][[j][k];
                                       print("%d ", dest[i][j][k]]);
}

//insertion sort
void inSort(int arr[N]) {
        for(int i = 1; i < N; i++) {
            int key = arr[i], j;
            for(j = i - 1; j >= 0 && arr[j] > key; j--)
            
                arr[j + 1] = arr[j];
            arr[j + 1] = key;
        }
    }

void inSort(int arr[N]){
    for(int i = 1; i < N; i++){
        int key = arr[i];
        int j = i - 1;
        while( j >= 0 && arr[j] > key){
            arr[j + 1] = arr[j];
            j--; //this makes j postion -1(outside array)
        }
        arr[j + 1] = key; // this is why we have to add +1 to get back to position 0
    }
}

//Sorting a Matrix by row
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

*

//Tower of Hanoi
void towerOfHanoi(int n, char from_rod, char to_rod, char aux_rod){
    if (n==1){
        printf("\n Move disk from rod %c to rod %c", from_rod, to_rod);
        return;
    }
    towerOfHanoi(n-1, from_rod, aux_rod, to_rod);
    printf("\n Move disk %d from rod %c to rod %c", n, from_rod, to_rod);
    towerOfHanoi(n-1, aux_rod, to_rod, from_rod);
}

*

//N Queens recursive part1: checks if there's a queen.
bool check(int board[N][N], int row, int col) {
    for(int i = 0; i < row; i++)
        if(board[i][col])
            return false;
    for(int i = row, j = col; i >= 0 && j >= 0; i--, j--)
        if(board[i][j])
            return false;
    for(int i = row, j = col; i >= 0 && j < N; i--, j++)
        if(board[i][j])
            return false;
    return true;
}

*

//if it returns ture then it cannot plase a queen there
bool NQ(int board[N][N], int row) {
    if(row == N)
        return true;
    for(int col = 0; col < N; col++)
        if(check(board, row, col)) {
            board[row][col] = 1;
            if(NQ(board, row + 1))
                return true;
            board[row][col] = 0;
        }
    return false;
}

*

//Merge sort
void merge_sort(int array[],int beg, int end){
    if (beg==end){
        return;
    }
    int mid = (beg+end)/2;
    merge_sort(array,beg,mid);
    merge_sort(array,mid+1,end);
    int i=beg,j=mid+1;
    int l=end-beg+1;
    int temp[0];
    for (int k=0;k<l;k++){
        if (j>end || (i<=mid && array[i]<array[j])){
            temp[k]=array[i];
            i++;
        }
        else{
            temp[k]=array[j];
            j++;
        }
    }
    for (int k=0,i=beg;k<l;k++,i++){
        array[i]=temp[k];
    }

void mergesort(int a[]){
        if (n == 1) return arr;
        
        int beg[], end[];
        beg[] = n/2;
        end[] = n/2+1;
        beg = mergesort;
        end = mergesort;
    }
    
int main(int argc, const char * argv[]) {
    @autoreleasepool {

        int a[6] = {13, 7, 2, 65, 20, 18};
        
        for (int i = 0; i < 6; i++){
            for (int j = 0; j < 5; j++){
                if (a[j] > a[j+1]){
                    int temp;
                    temp = a[j];
                    a[j] = a[j+1];
                    a[j+1] = temp;
                    
                }
            }
        }
        print(a, 6);
        //printing an array in reverse
        for (int i = 6-1; i>=0;i--){
            printf("%d ", a[i]);
        }
      
        //Question 1 print an array in reverse
    int numbers[N] = {23, 13, 42};
        
        //Question 2 print a copy of an array
    int cube[N][N][N] = {
            {{23, 13, 42},{53, 21, 12},{87, 65, 37}},
            {{23, 76, 99},{45, 22, 17},{10, 13, 19}},
            {{65, 56, 43},{27, 97, 56},{32, 77, 79}}
        };
    int cube2[N][N][N] = {0};
        
        //Question 3 sort Matrix by row
    int matrix[N][N] = {
            {23, 12, 42},
            {54, 62, 18},
            {17, 24, 31}
        };
        
        //Callign the funstions that print and putting the arguements above into the algorithms
        printArray(numbers);
        copyArray(cube, cube2);
        sortMatrixByRow(matrix);
        
        //printing towe of Hanoi
        towerOfHanoi(3,'A','B','C');
        
        //Shifting all the ones and counting them
        short n = 25670;
        short m[4] = {0b0101010101010101, 0b0011001100110011, 0b0000111100001111, 0b0000000011111111};
        short exp[4] = {1, 2, 4, 8};
        int i = 0;
        
        while (i < 4) {
            n = (n & m[i]) + (n >> exp[i]) & m[i];
            i++;
        }
        
        NSLog(@"Count of 1s = %d" , n);
        
        //N Queens print
        int board[N][N] = { {0, 0, 0, 0},
            {0, 0, 0, 0},
            {0, 0, 0, 0},
            {0, 0, 0, 0}};
        if(NQ(board, 0))
            for(int i = 0; i < N; i++)
                printf("%d, %d, %d, %d\n", board[i][0], board[i][1], board[i][2], board[i][3]);
        
    }
    return 0;
}

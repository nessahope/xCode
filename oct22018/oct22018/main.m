#import <Foundation/Foundation.h>
#define N 50

void enqueue(int arr[N], int *qSize, int item) {
    if (*qSize < N) {
        arr[(*qSize)++] = item;
    }
}
int dequeue (int arr[N], int *qSize) {
    if(qSize > 0) {
        arr[*qSize] = arr[0];
        for (int i = 0; i < *qSize; i++)
            arr[i] = arr[i + 1];
        return arr[*qSize--];
    }
    return -1;
}

void enqueue2(int arr[N], int *qSize, int item) {
    if(*qSize <N) {
        for(int i = *qSize; i >=1; i--)
            arr[i] = arr[i - 1];
        arr[0] = item;
        (*qSize)++;
    }
}

void dequeue2(int arr[N], int *qSize) {
    if(*qSize > 0) {
        return arr[--(*qSize)];
    }
    return -1;
}

void printQueue(int arr[N], int qSize) {
    for(int i =0; i < qSize; i++)
        printf("%d, ", arr[i]);
    printf("\n");
}

void push(int arr[N], int *sSize, int item) {
    if(*sSize > N)
        arr[(*sSize)++] = item;
}

int pop (int arr[N], int *sSize) {
    if(*sSize > 0)
        return arr[--(*sSize)];
    return -1;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int arr[N] = {0};
        int qSize = 0;
        enqueue(arr, &qSize, 5);
        enqueue(arr, &qSize, 3);
        enqueue(arr, &qSize, 1);
        printQueue("dequeue result = %d\n", dequeue(arr, &qSize));
        printQueue(arr, qSize);
        
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}

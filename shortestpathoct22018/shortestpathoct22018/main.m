
#import <Foundation/Foundation.h>

typedef int* vi;
typedef vi* vii;

vii createMatrix(int size) {
    vii matrix = (vii)malloc(size * sizeof(vi));
    for(int i = 0; i < size; i++)
        matrix[i] = (vi)malloc(size * sizeof(int));
    return matrix;
}

void initMatrix(vii matrix, int value, int size) {
    for(int i = 0; i < size; i++)
        for(int j = 0; j < size; j++)
            matrix[i][j] = value;
}

void addEdge(vii graph, int u, int v, int w) {
    graph[u][v] = w;
    graph[v][u] = w;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        vii graph = createMatrix(10);
        initMatrix(graph, 10, -1);
        addEdge(graph, 0, 1, 100);
        addEdge(graph, 2, 5, 50);
        
        NSLog(@"Hello, World!");
    }
    return 0;
}

#import <Foundation/Foundation.h>

void sort(int n[], int left, int right){
    if ( left < right){
        int middle = left + (right-left)/2;
        
        sort(n, left, middle);          //sort is like splitting, we're not actualling sorting
        sort(n, middle + 1, right);

        void Merge(int n, int left, int middle, int right){
        int half1= middle - left + 1;
        int half2 = right - middle;
        int left[half1], right[half2];
        for(int i = 0; i < half1; i++)
            right[i] = n[middle + 1 + i];
        for(int i = 0, j = 0, k = left; k <= right; k++)
            if( i < half1 && j < half2)
                if(left[i] <= right[j])
                    n[k] = left[i++];
                else
                    n[k] = right[j++];
            else
                if(i < half1)
                    n[k] = left[i++];
                else
                    n[k] = right[j++];
    }
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}

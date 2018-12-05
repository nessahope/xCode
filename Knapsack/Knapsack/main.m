#import <Foundation/Foundation.h>
#import <objc/runtime.h>

#define M 3 //maximum of items

struct Item {
    float value, weight;
}; //structs need a semi colon at the end

//-----------------Sort our array----------------------------
void sort(struct Item items[M]){
    for(int i = 0; i < M; i++){
        for(int j=0; j < M - 1; j++){
            if ((items[j].value /items[j].weight) < (items[j + 1].value /items[j +1].weight)){
                struct Item temp = items[j+1];
                items[j+1] = items[j];
                items[j] = temp;
            }
        }
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//----------------fractorial knapsack algo-------------------
//----------------This is a greedy algo----------------------
        //value, weight
        struct Item items[] = {{100,20}, {500, 90}, {450, 80}};
        float capacity = 100.0, value =0.0;
        sort (items);
        for(int i = 0; i < 3; i++) {
            for(i = 0; i < 3 && capacity > 0.0; i++) {
                if(items[i].weight > 0.0){
                    if(capacity < items[i].weight){
                        value += capacity*(items[i].value/items[i].weight);
                        items[i].weight -= capacity;
                        capacity = 0.0;
                    }else{
                        value += items[i].value;
                        capacity -= items[i].weight;
                    }
                }
            }
        }
        printf("value = %f , capacity = %f ", value,capacity);
    }
   return 0;
    }

//---------------------PSEUDO CODE---------------------------
//int knapsack1(int W(maximum value), int values[], int weights[], int n){
//    define T [0..W];
//    T[0] = 0;
//
//    for(int i = 1; i <= W; ++i){
//
//        T[i] = 0;
//        for(int j = 0; j < n; ++j){
//            if(i - weights[j] >= 0){
//                int temp = values[j] + T[i - weights[j]]);
//                if(T[i] < temp){
//                    T[i] = temp;
//                }
//            }
//        }
//        return T[W]
//    }
//}

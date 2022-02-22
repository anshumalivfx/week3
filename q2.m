#include <Foundation/Foundation.h>

void search(int arr[], int n){
    int ans = -1;
    for(int i = 0; i < n; i++){
        if(arr[i] != arr[i+1]){
            ans = arr[i];
            break;
        }
    }
    if(arr[n-2]!=arr[n-1]){
        ans = arr[n-1];
    }
    NSLog(@"%d", ans);
}

int main(int argc, char **argv){
    @autoreleasepool {
        int arr[] = {1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6};
        int n = sizeof(arr)/sizeof(arr[0]);
        search(arr, n);
    }
    return 0;
}




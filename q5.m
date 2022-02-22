#include <Foundation/Foundation.h>

int main(int argc, char **argv){
    @autoreleasepool {
        int n;
        NSLog(@"Enter the number of elements in the array: ");
        scanf("%d", &n);
        int a[n];
        NSLog(@"Enter the elements of the array: ");
        for(int i = 0; i < n; i++){
            scanf("%d", &a[i]);
        }
        int target;
        NSLog(@"Enter the target sum: ");
        scanf("%d", &target);
        int first = -1;
        int last = -1;
        for(int i = 0; i < n; i++){
            if(a[i] == target){
                if(first == -1){
                    first = i;
                }
                last = i;
            }
        }
        if(first == -1){
            NSLog(@"%d was not found in the array", target);
        }
        else{
            NSLog(@"%d's first occurrence is at %d", target, first);
            NSLog(@"%d's last occurrence is at %d", target, last);
        }
    }
    return 0;
}
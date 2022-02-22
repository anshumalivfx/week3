//
//  main.m
//  Week3
//
//  Created by Anshumali Karna on 22/02/22.
//

#include <Foundation/Foundation.h>

int solve(int a[], int low, int high, int n){
    if(low == high){
        return a[low];
    }
    int mid = (low + high)/2;
    int left = solve(a, low, mid, n);
    int right = solve(a, mid+1, high, n);
    int left_sum = 0;
    int right_sum = 0;
    for(int i = mid; i >= low; i--){
        left_sum += a[i];
    }
    for(int i = mid+1; i <= high; i++){
        right_sum += a[i];
    }
    if(left_sum == right_sum){
        return left;
    }
    else if(left_sum > right_sum){
        return left;
    }
    else{
        return right;
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n;
        scanf("%d", &n);
        int a[n];
        for(int i = 0; i < n; i++){
            scanf("%d", &a[i]);
        }
        NSLog(@"%d", solve(a, 0, n-1, n));
    }
    return 0;
}



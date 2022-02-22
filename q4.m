#include <Foundation/Foundation.h>

@interface QuickSort: NSObject
 
- (NSArray *) quickSortArray:(NSArray *)unsortedArray;
@end
 
@implementation QuickSort
- (NSArray *) quickSortArray:(NSArray *)unsortedArray {
    if ([unsortedArray count] < 2) {
        return unsortedArray;
    }
    NSMutableArray *left = [NSMutableArray array];
    NSMutableArray *right = [NSMutableArray array];
    NSMutableArray *equal = [NSMutableArray array];
    NSNumber *pivot = unsortedArray[0];
    for (NSNumber *number in unsortedArray) {
        if ([number integerValue] < [pivot integerValue]) {
            [left addObject:number];
        } else if ([number integerValue] > [pivot integerValue]) {
            [right addObject:number];
        } else {
            [equal addObject:number];
        }
    }
    NSArray *sortedLeft = [self quickSortArray:left];
    NSArray *sortedRight = [self quickSortArray:right];
    NSMutableArray *sortedArray = [NSMutableArray array];
    [sortedArray addObjectsFromArray:sortedLeft];
    [sortedArray addObjectsFromArray:equal];
    [sortedArray addObjectsFromArray:sortedRight];
    return sortedArray;
}
@end


int main(int argc, char **argv){
    @autoreleasepool {
       for(int i = 0; i <= 10; i++){
           NSLog(@"Array No. %d ", i);
           // create a array with random numbers from 0 to 100
            NSArray *array;
            array = [NSArray arrayWithObjects:@(arc4random() % 100), @(arc4random() % 100), @(arc4random() % 100), @(arc4random() % 100), @(arc4random() % 100), @(arc4random() % 100), @(arc4random() % 100), @(arc4random() % 100), @(arc4random() % 100), @(arc4random() % 100), nil];
            NSLog(@"Unsorted Array: %@", array);
            // sort the array
            QuickSort *quickSort = [[QuickSort alloc] init];
            NSArray *sortedArray = [quickSort quickSortArray:array];
            NSLog(@"Sorted Array: %@", sortedArray);
            // print the sorted array
            NSLog(@"\n");
       }
    }
}
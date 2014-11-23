//
//  main.m
//  RandomItems
//
//  Created by Jan Michael on 23.11.14.
//  Copyright (c) 2014 Jan Michael. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        // Create a mutable array object, store its address in the items variable
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        // Send the message addObject: to the NSMutableArray pointed to
        // by the variable items, passing a string each time
        
        [items addObject:@"One"];
        [items addObject:@"Two"];
        [items addObject:@"Three"];
        
        // Send another message, insertObject:atIndex, to that same array object
        [items insertObject:@"Zero" atIndex:0];
        
        // This is the traditional way of iterating over the mutable array
        // The traditional way is used when objects need to be created or removed within the for loop
        
//        for (int i = 0; i < [items count]; i++) {
//            NSString *item = [items objectAtIndex:i];
//            NSLog(@"%@", item);
//        }
        
        // This is the fast lane
        // For every item in the items array
        
        for (NSString *item in items) {
            // Log the description of the item
            NSLog(@"%@",item);
        }
        
        // Destroy the mutable array object
        items = nil;
        
    }
    return 0;
}

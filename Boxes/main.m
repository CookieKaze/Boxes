//
//  main.m
//  Boxes
//
//  Created by Erin Luu on 2016-11-01.
//  Copyright © 2016 Erin Luu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Box * box = [[Box alloc] initWithWidth:5 andHeight:5 andLength:5];
        NSLog(@"The volume is: %f", [box calculateVolume]);
        
        Box * box2 = [[Box alloc] initWithWidth:1 andHeight:1 andLength:1];
        
        if ([box howManyTimeWillItFit:box2]>0){
            NSLog(@"Times box1 will fit into box2: %i times", [box howManyTimeWillItFit:box2]);
        }else{
            NSLog(@"It won't fit");
        }
        
    }
    return 0;
}

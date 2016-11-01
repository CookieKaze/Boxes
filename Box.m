//
//  Box.m
//  Boxes
//
//  Created by Erin Luu on 2016-11-01.
//  Copyright © 2016 Erin Luu. All rights reserved.
//

#import "Box.h"

@implementation Box

- (instancetype) initWithWidth: (float)width andHeight: (float)height andLength: (float)length
{
    self = [super init];
    if (self) {
        _width = width;
        _length = length;
        _height = height;
    }
    return self;
}

- (float) calculateVolume {
    float volume = self.width * self.height * self.length;
    return volume;
}

- (int) howManyTimeWillItFit: (Box*)otherBox {
    float firstBoxVolume = [self calculateVolume];
    float secondBoxVolume = [otherBox calculateVolume];
    
    int timesItWillFit = firstBoxVolume/secondBoxVolume;
    return timesItWillFit;
}

@end

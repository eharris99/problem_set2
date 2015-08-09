#the folder won't let me push problem 3 so here is the code

## main.m

```
//
//  main.m
//  problem3
//
//  Created by Elise Harris on 8/9/15.
//  Copyright (c) 2015 Elise Harris. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Shape.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Shape *sphere = [[Shape alloc] init];
        
        // Give the instance variables interesting values using setters
        [sphere setWidthInMeters:96];
        [sphere setHeightInMeters:44];
        
        // Log the instance variables using the getters
        float height = [sphere heightInMeters];
        int width = [sphere widthInMeters];
        NSLog(@"sphere is %f meters tall and %d meters wide", height, width);
        
        // Log some values using custom methods
        float sphereArea = [sphere shapeArea];
        NSLog(@"sphere has an area of %f", sphereArea);

    }
    return 0;
}



```
#interface file
```

//
//  Shape.h
//  problem3
//
//  Created by Elise Harris on 8/9/15.
//  Copyright (c) 2015 Elise Harris. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Shape : NSObject

{
    float _heightInMeters;
    int _widthInMeters;
    
}

// Shape has methods to read and set its instance variables
- (float)heightInMeters;
- (void)setHeightInMeters:(float)h;
- (int)widthInMeters;
- (void)setWidthInMeters:(int)w;

// Shape has a method that calculates the area
- (float)shapeArea;



@end

```
#implementation file

```

//
//  Shape.m
//  problem3
//
//  Created by Elise Harris on 8/9/15.
//  Copyright (c) 2015 Elise Harris. All rights reserved.
//

#import "Shape.h"

@implementation Shape

- (float)heightInMeters
{
    return _heightInMeters;
}

- (void)setHeightInMeters:(float)h
{
    _heightInMeters = h;
}

- (int)widthInMeters
{
    return _widthInMeters;
}

- (void)setWidthInMeters:(int)w
{
    _widthInMeters = w;
}

- (float)shapeArea
{
    float h = [self heightInMeters];
    float w = [self widthInMeters];
    return h * w;
}


@end

//
//  main.m
//  hwk2.prob1
//
//  Created by Elise Harris on 8/7/15.
//  Copyright (c) 2015 Elise Harris. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
            @autoreleasepool {
                NSString *text = @"Hi hello how is it going";
                NSArray *words = [text componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
                NSInteger wordCount = [words count];
                NSLog(@"The number of words is %ld", (long)wordCount);
                
            }
            
            
            
            return 0;
        
}

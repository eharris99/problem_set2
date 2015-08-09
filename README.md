# problem_set2
```

#import <Foundation/Foundation.h>

#this is method wordCount for imaginary class Phrase

-(void)wordCount(Phrase*)phrase {
NSArray *words = [phrase componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
NSInteger wordCount = [words count];
NSLog(@"The number of words is %ld", wordCount);
}

#this is method vowelCount for imaginary class Phrase

-(void)vowelCount(Phrase*)phrase {

NSMutableArray *array = [@[] mutableCopy];

[phrase enumerateSubstringsInRange:NSMakeRange(0, [phrase length]) options:NSStringEnumerationByComposedCharacterSequences usingBlock:^(NSString *substring, NSRange substringRange, NSRange enclosingRange, BOOL *stop) {
[array addObject:substring];
}] ;
NSCountedSet *set = [[NSCountedSet alloc] initWithArray:array];

for (NSString *nucleobase in @[@"a", @"e", @"i", @"o",@"u"]){
NSUInteger vowelCount =  [set countForObject:nucleobase];
NSLog(@"%@: %lu", nucleobase, (unsigned long)vowelCount);

}

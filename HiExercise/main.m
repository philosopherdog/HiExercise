//
//  main.m
//  HiExercise
//
//  Created by steve on 2016-03-25.
//  Copyright © 2016 steve. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 Given a string, return true if the string starts with "hi" and false otherwise.
 startHi(“hi there") → true
 startHi(“hi") → true
 startHi(“hello hi") → false
 */

BOOL startHi(NSString *input) {
    // lower the case first
    NSString *inputLower = [input lowercaseString];
    // if you didn't have prefix you would have to call subStringWithRange and make a range that is Location 0 and length 2, and then call isEqualToString:@"hi".
    if ([inputLower hasPrefix:@"hi"]) {
        return YES;
    }
    return NO;
}

int main(int argc, const char * argv[]) {
    BOOL r1 = startHi(@"hi there");
    BOOL r2 = startHi(@"hi");
    BOOL r3 = startHi(@"hello hi");
    
    NSLog(@"\"hi there\" starts with \"hi\": %@", r1 ? @"true" : @"false");
    NSLog(@"\"hi\" starts with \"hi\": %@", r2 ? @"true" : @"false");
    NSLog(@"\"hello hi\" starts with \"hi\": %@", r3 ? @"true" : @"false");
    return 0;
}

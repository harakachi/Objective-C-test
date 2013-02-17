//
//  main.m
//  MyObjCApp2
//
//  Created by 原田 勝信 on 2013/02/17.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSString* str = @"Hello!";
        str = [str stringByAppendingString:@" World!"];
        NSString* format = @",Miss %@. How are %@";
        str = [str stringByAppendingFormat:format,@"Hanako",@"you?"];
        NSLog(@"%@", str);
        
        NSString* str1 = @"Hello";
        NSString* str2 = [@"Hell" stringByAppendingString:@"o"];
        BOOL res = [str1 isEqualToString:str2];
        NSLog(res ? @"YES!" : @"No..");
        
        NSUInteger n = [@"aaaaaaaaaa" length];
        NSLog(@"count: %i",n);
        
        NSString* str3 = @"Welcome to Objective-C.";
        NSString* str4 = [str3 substringToIndex:5];
        NSLog(@"%@",str4);
        
        NSString* str5 = @"Welcome to Objective-C.";
        NSString* str6 = [str5 substringFromIndex:5];
        NSLog(@"%@",str6);
        
        NSString* str7 = @"Welcome to Objective-C.";
        NSString* str8 = [str7 substringWithRange:
                          NSMakeRange(5, 7)];
        NSLog(@"%@",str8);
        
        NSString* str10 = @"Welcome to Objective-C.";
        NSArray* re = [str10 componentsSeparatedByString:@"Object"];
        NSLog(@"%@",re);
        
        NSRange r = [str10 rangeOfString:@"Object"];
        NSLog(@"%i - %i.",r.location,r.length);

        NSString* ret = [str10 stringByReplacingOccurrencesOfString:
                        @"to" withString:@"AppleScripttttttttttttttt"];
        NSLog(@"%@",ret);
        
        NSRange range = NSMakeRange(5, 7);
        ret = [str stringByReplacingCharactersInRange:range
                                           withString:@"****12345***"];
        NSLog(@"%@",ret);
        
        
        NSMutableString* mstr = [NSMutableString stringWithString:@"Welcome"];
        [mstr appendString:@"Objective-C."];
        [mstr insertString:@"=to=" atIndex:7];
        [mstr deleteCharactersInRange:NSMakeRange(14, 6)];
        NSLog(@"%@",mstr);
    }
    return 0;
}


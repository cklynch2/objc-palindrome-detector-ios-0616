//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

    NSString *palindrome = @"palindrome";
    NSString *reversed = [self stringByReversingString:palindrome];
    NSLog(@"%@ : %@", palindrome, reversed);
    
    NSString *racecar = @"racecar";
    BOOL racecarIsPalindrome = [self stringIsPalindrome:racecar];
    NSLog(@"%d : %@", racecarIsPalindrome, racecar);
    
    BOOL palindromeIsPalindrome = [self stringIsPalindrome:palindrome];
    NSLog(@"%d : %@", palindromeIsPalindrome, palindrome);
    
    NSString *bob = @"Bob";
    NSString *kanakanak = @"Kanakanak";
    NSString *aibohphobia = @"Aibohphobia";
    
    BOOL bobIsPalindrome = [self stringIsPalindrome:bob];
    NSLog(@"%d : %@", bobIsPalindrome, bob);
    BOOL kanakanakIsPalindrome = [self stringIsPalindrome:kanakanak];
    NSLog(@"%d : %@", kanakanakIsPalindrome, kanakanak);
    BOOL aibohphobiaIsPalindrome = [self stringIsPalindrome:aibohphobia];
    NSLog(@"%d : %@", aibohphobiaIsPalindrome, aibohphobia);
    
    NSString *notAPalidrome = @"this is not a palindrome";
    NSString *neverOdd = @"never odd or even";
    NSString *preferPi = @"I prefer pi";
    
    BOOL notAPalindromeIsPalindrome = [self stringIsPalindrome:notAPalidrome];
    NSLog(@"%d : %@", notAPalindromeIsPalindrome, notAPalidrome);
    BOOL neverOddIsPalindrome = [self stringIsPalindrome:neverOdd];
    NSLog(@"%d : %@", neverOddIsPalindrome, neverOdd);
    BOOL preferPiIsPalindrome = [self stringIsPalindrome:preferPi];
    NSLog(@"%d : %@", preferPiIsPalindrome, preferPi);
    
    NSString *fleeToMe = @"Flee to me, remote elf.";
    NSString *norma = @"Norma is as selfless as I am, Ron.";
    NSString *papayaWar = @"No sir! Away! A papaya war is on.";
    
    BOOL fleeToMeIsPalindrome = [self stringIsPalindrome:fleeToMe];
    NSLog(@"%d : %@", fleeToMeIsPalindrome, fleeToMe);
    BOOL normaIsPalindrome = [self stringIsPalindrome:norma];
    NSLog(@"%d : %@", normaIsPalindrome, norma);
    BOOL papayaWarIsPalindrome = [self stringIsPalindrome:papayaWar];
    NSLog(@"%d : %@", papayaWarIsPalindrome, papayaWar);
    
    // do not alter
    return YES;  //
}   ///////////////

-(BOOL)stringIsPalindrome:(NSString *)string
{
    NSArray *punctuations = @[@".", @",", @"!", @"?", @":", @";"];
    
    NSString *withoutPunctuation = [string copy];
    for (NSUInteger i = 0; i < [punctuations count]; i++) {
        NSString *punctuation = punctuations[i];
        withoutPunctuation = [withoutPunctuation stringByReplacingOccurrencesOfString:punctuation withString: @""];
    }
    
    NSString *spaceless = [withoutPunctuation stringByReplacingOccurrencesOfString:@" " withString:@""];
    NSString *lowercase = [spaceless lowercaseString];
    NSString *reverse = [self stringByReversingString:lowercase];
    
    BOOL stringIsEqualToReverse = [lowercase isEqualToString:reverse];
    
    return stringIsEqualToReverse;
}

-(NSString *)stringByReversingString:(NSString *)string
{
    NSString *result = @"";
    for (NSUInteger i = [string length]; i > 0; i--) {
        NSUInteger index = i - 1;
        unichar c = [string characterAtIndex:index];
        result = [result stringByAppendingFormat:@"%C", c];
    }
    return result;
}

@end

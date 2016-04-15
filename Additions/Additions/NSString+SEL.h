

#import <Foundation/Foundation.h>


@interface NSString (NSString_SEL)

- (BOOL)isGetter;
- (BOOL)isSetter;

- (NSString *)getterToSetter;
- (NSString *)setterToGetter;

@end

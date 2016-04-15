

#import "NSString+NULL.h"


@implementation NSString (NSStringNULL)
- (id)initWithUTF8NULLString:(const char *)nullTerminatedCString{
 
	if(nullTerminatedCString==NULL)
		return nil;
	else{
		return [self initWithUTF8String:nullTerminatedCString];
	}
	
}
@end

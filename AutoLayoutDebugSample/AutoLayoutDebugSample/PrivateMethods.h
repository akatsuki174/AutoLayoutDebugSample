#import <UIKit/UIKit.h>

@interface NSObject()
- (NSString *)_ivarDescription;
@end

@interface UIView()
- (NSString *)recursiveDescription;
- (NSString *)_autolayoutTrace;
@end

@interface UIViewController()
- (NSString *)_printHierarchy;
@end

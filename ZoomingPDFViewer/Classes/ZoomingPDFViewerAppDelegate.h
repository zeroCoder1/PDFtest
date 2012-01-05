

#import <UIKit/UIKit.h>

@class ZoomingPDFViewerViewController;

@interface ZoomingPDFViewerAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ZoomingPDFViewerViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet ZoomingPDFViewerViewController *viewController;

@end


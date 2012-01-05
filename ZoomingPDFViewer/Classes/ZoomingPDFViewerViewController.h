

#import <UIKit/UIKit.h>
#import "PDFScrollView.h"

@class TiledPDFView;

@interface ZoomingPDFViewerViewController : UIViewController <UIScrollViewDelegate,UIGestureRecognizerDelegate> {

    
    UIScrollView * zoomView;
    UIButton * zoomB;
    

    UIButton * nextP;
    UIButton * prevP;
    
    PDFScrollView *sv; 
    
    
    
}

-(void) previousPage ;

-(void) nextPage;

@end


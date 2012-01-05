

#import <UIKit/UIKit.h>


@interface TiledPDFView : UIView {
	CGPDFPageRef pdfPage;
	CGFloat myScale;
}

- (id)initWithFrame:(CGRect)frame andScale:(CGFloat)scale;
- (void)setPage:(CGPDFPageRef)newPage;

@end

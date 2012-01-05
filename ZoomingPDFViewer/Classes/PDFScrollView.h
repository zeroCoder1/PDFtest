
#import <UIKit/UIKit.h>

@class TiledPDFView;

@interface PDFScrollView : UIScrollView <UIScrollViewDelegate> {
	// The TiledPDFView that is currently front most
	TiledPDFView *pdfView;
	// The old TiledPDFView that we draw on top of when the zooming stops
	TiledPDFView *oldPDFView;
	
	// A low res image of the PDF page that is displayed until the TiledPDFView
	// renders its content.
	UIImageView *backgroundImageView;


	// current pdf zoom scale
	CGFloat pdfScale;
	
	CGPDFPageRef page;
	CGPDFDocumentRef pdf;
    int currentPage;
    

}

-(void)decreasePageNumber;
-(void)increasePageNumber;


@end



#import "ZoomingPDFViewerViewController.h"


@implementation ZoomingPDFViewerViewController


// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
	[super loadView];
	
	// Create our PDFScrollView and add it to the view controller.
	sv = [[PDFScrollView alloc] initWithFrame:[[self view] bounds]];

	
    [[self view] addSubview:sv];
    
    UISwipeGestureRecognizer *swipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(previousPage)];
    swipe.direction = UISwipeGestureRecognizerDirectionRight;
    [[self view ] addGestureRecognizer:swipe];
    
    UISwipeGestureRecognizer *swipe2 = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(nextPage)];
    swipe2.direction = UISwipeGestureRecognizerDirectionLeft;
    [[self view] addGestureRecognizer:swipe2];

    
    nextP = [UIButton buttonWithType:UIButtonTypeCustom];
    nextP.frame=CGRectMake(719, 420, 48, 48);
    [nextP setBackgroundImage:[UIImage imageNamed:@"next.png"] forState:UIControlStateNormal];
    [nextP addTarget:self action:@selector(nextPage) forControlEvents:UIControlEventTouchUpInside];
    [[self view] addSubview:nextP];

    prevP = [UIButton buttonWithType:UIButtonTypeCustom];
    prevP.frame=CGRectMake(1, 420, 48, 48);
     [prevP setBackgroundImage:[UIImage imageNamed:@"prev.png"] forState:UIControlStateNormal];
    [prevP addTarget:self action:@selector(previousPage) forControlEvents:UIControlEventTouchUpInside];
    [[self view] addSubview:prevP];
    
    
    

}



/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}

-(void) previousPage {
    
    [sv decreasePageNumber];
    
    
}
-(void) nextPage {
    
    [sv increasePageNumber];

    
}


- (void)dealloc {
    [super dealloc];
}

@end

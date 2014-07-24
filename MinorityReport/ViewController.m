//
//  ViewController.m
//  MinorityReport
//
//  Created by Iván Mervich on 7/24/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *theFuture;
@property (weak, nonatomic) IBOutlet UILabel *thePrecogs;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)onDrag:(UIPanGestureRecognizer *)panGestureRecognizer
{
    CGPoint point = [panGestureRecognizer translationInView: self.view];
    self.theFuture.transform = CGAffineTransformMakeTranslation(point.x, point.y);

    point.x = point.x + self.theFuture.center.x;
    point.y += self.theFuture.center.y;

    NSLog(@"point: x = %f y = %f", point.x, point.y);

    if (CGRectContainsPoint(self.thePrecogs.frame, point)) {
        self.theFuture.text = @"A ficticious and incriminating future...";
        self.theFuture.backgroundColor = [UIColor redColor];
        [self.theFuture sizeToFit];
    }


    NSLog(@"x = %f y = %f", self.theFuture.center.x, self.theFuture.center.y);
}

@end

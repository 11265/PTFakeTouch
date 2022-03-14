//
//  ViewController.m
//  PTFakeTouchDemo
//
//  Created by xiaoyuan on 2022/3/12.
//

#import "ViewController.h"
#import <PTFakeTouch/PTFakeMetaTouch.h>

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *button;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(4.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        int locationX = self.button.center.x;
        int locationY = self.button.center.y;
        
        NSInteger Id = [PTFakeMetaTouch fakeTouchId:[PTFakeMetaTouch getAvailablePointId] AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseBegan)];
        [PTFakeMetaTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseMoved)];
        [PTFakeMetaTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseEnded)];
        
    });
    
}

- (IBAction)btnClick:(id)sender {
    NSLog(@"哈哈哈");
}

@end

//
//  ViewController.h
//  TrafficSignal_ObjC
//
//  Created by Shivam Patel on 30/11/19.
//  Copyright © 2019 Shivam Patel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    
    NSTimer *timer;
    NSTimer *scoreTimer;
    
    int timerInt;
    int scoreInt;
    
    
}


@property (weak, nonatomic) IBOutlet UIImageView *trafficLight;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@property (weak, nonatomic) IBOutlet UIButton *startButton;

- (IBAction)startGame:(id)sender;


@end


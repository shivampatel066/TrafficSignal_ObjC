//
//  ViewController.m
//  TrafficSignal_ObjC
//
//  Created by Shivam Patel on 30/11/19.
//  Copyright © 2019 Shivam Patel. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    scoreInt = 0;
    self.scoreLabel.text = [NSString stringWithFormat:@"%i",scoreInt];
    
}


- (IBAction)startGame:(id)sender {
    
    if (scoreInt == 0) {
        
        timerInt = 3;
        timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(startTimer) userInfo:nil repeats:true];
        self.scoreLabel.text = [NSString stringWithFormat:@"%i",scoreInt];
        self.startButton.enabled = NO;
        [self.startButton setTitle:@"Stop" forState:(UIControlStateNormal)];
        
    } else {
        [scoreTimer invalidate];
        [self.startButton setTitle:@"Restart" forState:(UIControlStateNormal)];
    
    }
    if (timerInt == 0) {
        scoreInt = 0;
        timerInt = 3;
    }
}

-(void)startTimer {
    timerInt -= 1;
    
    if (timerInt == 2) {
        self.trafficLight.image = [UIImage imageNamed:@"trafficLight3"];
        
    } else if (timerInt == 1) {
        self.trafficLight.image = [UIImage imageNamed:@"trafficLight2"];
    } else if (timerInt == 0) {
        self.trafficLight.image = [UIImage imageNamed:@"trafficLight1"];
        [timer invalidate];
        scoreTimer = [NSTimer scheduledTimerWithTimeInterval:0.0001 target:self selector:@selector(scoreCounter) userInfo:nil repeats:true];
        
        [self.startButton setTitle:@"Stop" forState:UIControlStateNormal];
        self.startButton.enabled = YES;
    }
     
}

-(void)scoreCounter {
    
    scoreInt += 1;
    self.scoreLabel.text = [NSString stringWithFormat:@"%i",scoreInt];
   
    
}

@end

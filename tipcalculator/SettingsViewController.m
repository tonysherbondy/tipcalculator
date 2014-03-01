//
//  SettingsViewController.m
//  tipcalculator
//
//  Created by Anthony Sherbondy on 2/18/14.
//  Copyright (c) 2014 Anthony Sherbondy. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *defaultTipControl;
@end

@implementation SettingsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (IBAction)defaultTipControlChanged:(UISegmentedControl *)sender
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:self.defaultTipControl.selectedSegmentIndex forKey:@"defaultTipPercentSelected"];
    [defaults synchronize];
}

- (void)viewWillAppear:(BOOL)animated {
    
    // Load up the default tip percentage, if none was stored it will default to zero
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    int defaultTipPercentSelected = [defaults integerForKey:@"defaultTipPercentSelected"];
    self.defaultTipControl.selectedSegmentIndex = defaultTipPercentSelected;
}


@end

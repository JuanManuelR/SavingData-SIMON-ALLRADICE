//
//  ViewController.h
//  SavingData SIMON ALLRADICE
//
//  Created by Juan Manuel on 1/25/14.
//  Copyright (c) 2014 Home. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, weak) IBOutlet UITextField *myTextField;
@property (nonatomic, weak) IBOutlet UIDatePicker *myDatePicker;

-(IBAction)dismissKeyboard:(id)sender;

-(NSString *)getFilePath;
-(void)saveData;
-(void)loadData;

@end


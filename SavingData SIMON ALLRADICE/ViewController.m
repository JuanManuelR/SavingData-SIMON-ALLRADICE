//
//  ViewController.m
//  SavingData SIMON ALLRADICE
//
//  Created by Juan Manuel on 1/25/14.
//  Copyright (c) 2014 Home. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize myDatePicker, myTextField;

-(NSString *)getFilePath
{
    
    NSLog(@"get file path");
    NSArray *pathArray = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    return [[pathArray objectAtIndex:0] stringByAppendingPathComponent:@"saved1.plist"];
    
}

-(void)saveData
{
    
    NSLog(@"Save DATA");
    NSArray *value = [[NSArray alloc] initWithObjects:[myTextField text],[myDatePicker date], nil];
    [value writeToFile:[self getFilePath] atomically:YES];
    
}

-(void)loadData
{
    NSLog(@"LOAD DATA");
    
    NSString *myPath = [self getFilePath];
    BOOL fileExists = [[NSFileManager defaultManager] fileExistsAtPath:myPath];
    
    if (fileExists)
    {
        NSLog(@"SI EXISTE");
        NSArray *values = [[NSArray alloc] initWithContentsOfFile:myPath];
        myTextField.text = [values objectAtIndex:0];
        myDatePicker.date = [values objectAtIndex:1];
    }
    
}




- (void)viewDidLoad
{
    [super viewDidLoad];
    [self loadData];
    
  	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)dismissKeyboard:(id)sender
{
    [self.view endEditing:YES];
    NSLog(@"BOTON");
}

@end


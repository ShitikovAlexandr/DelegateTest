//
//  Patient.m
//  DelegateTest
//
//  Created by MacUser on 12.03.16.
//  Copyright © 2016 Shitikov.net. All rights reserved.
//

#import "Patient.h"


@implementation Patient

- (BOOL) howAreYou {
    
    BOOL iFeelGood = arc4random() % 2;
    
    if (!iFeelGood) {
        
        [self.delegate patientFellsBad:self];
    }
    
    return iFeelGood;
}

- (void) takePill {
    
    NSLog(@"%@ takes a Pill", self.name);
    
}

- (void) makeShot {
    
    NSLog(@"%@ make a shot", self.name);

}


@end

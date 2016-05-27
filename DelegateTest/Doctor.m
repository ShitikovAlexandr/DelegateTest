//
//  Doctor.m
//  DelegateTest
//
//  Created by MacUser on 12.03.16.
//  Copyright © 2016 Shitikov.net. All rights reserved.
//

#import "Doctor.h"


@implementation Doctor


#pragma mark - PatientDelegate

- (void) patientFellsBad: (Patient*) patient{
    
    NSLog(@"Patient %@ feels bad", patient.name);
    
    if (patient.temperatur >= 37.f && patient.temperatur <= 40.f) {
        
        [patient takePill];
        
    } else if (patient.temperatur > 40.f){
        
        [patient makeShot];
        
    } else{
        
        NSLog(@"patient %@ shold rest", patient.name);
    }
    
}

- (void) patient:(Patient*) patient hasQuestion:(NSString*) question {
    
    NSLog(@"Patient %@ has a question %@", patient.name, question);
}

@end

//
//  Patient.h
//  DelegateTest
//
//  Created by MacUser on 12.03.16.
//  Copyright © 2016 Shitikov.net. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol PatientDelegate;


@interface Patient : NSObject


@property (strong,nonatomic) NSString* name;
@property (assign, nonatomic) float temperatur;
@property (weak, nonatomic) id <PatientDelegate> delegate;

- (BOOL) howAreYou;
- (void) takePill;
- (void) makeShot;

@end


@protocol PatientDelegate <NSObject>

@required

- (void) patientFellsBad: (Patient*) patient;
- (void) patient:(Patient*) patient hasQuestion:(NSString*) question;

@end

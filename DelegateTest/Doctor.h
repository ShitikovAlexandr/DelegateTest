//
//  Doctor.h
//  DelegateTest
//
//  Created by MacUser on 12.03.16.
//  Copyright © 2016 Shitikov.net. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

@interface Doctor : NSObject <PatientDelegate>


@end

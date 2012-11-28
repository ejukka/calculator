//
//  CalculatorBrain.h
//  Calculator2
//
//  Created by Jukka Edvardsson on 11/28/12.
//  Copyright (c) 2012 Jukka Edvardsson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorBrain : NSObject

- (void)pushOperand:(double)operand;
-(double)performOperation:(NSString *) operation;

@end

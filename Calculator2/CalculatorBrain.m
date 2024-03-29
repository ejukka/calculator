//
//  CalculatorBrain.m
//  Calculator2
//
//  Created by Jukka Edvardsson on 11/28/12.
//  Copyright (c) 2012 Jukka Edvardsson. All rights reserved.
//

#import "CalculatorBrain.h"

@interface CalculatorBrain()
@property(nonatomic, strong) NSMutableArray *operandStack;
@end

@implementation CalculatorBrain

@synthesize operandStack = _operandStack;

- (NSMutableArray *)operandStack
{
    if(!_operandStack){
        _operandStack = [[NSMutableArray alloc]init];
    }
    return _operandStack;
}

- (void)pushOperand:(double)operand
{
    NSNumber *operandObject = [NSNumber numberWithDouble:operand];
    [self.operandStack addObject:operandObject];
}

- (double)popOperand
{
    NSNumber *operandObject = [self.operandStack lastObject];
    if(operandObject){
         [self.operandStack removeLastObject];
    }
    return [operandObject doubleValue];
}

-(double)performOperation:(NSString *) operation
{
    double result = 0;
    
    if([operation isEqualToString:@"+"]){
        result = [self popOperand] + [self popOperand];
    }  else if([operation isEqualToString:@"*"]){
        result = [self popOperand] * [self popOperand];
    } else if([operation isEqualToString:@"-"]){
        result = [self popOperand] - [self popOperand];
    } else if([operation isEqualToString:@"/"]){
        double dividor = [self popOperand];
        if(dividor) result = [self popOperand] / dividor;
    }
    
    [self pushOperand:result];
    
    return result;
}

@end

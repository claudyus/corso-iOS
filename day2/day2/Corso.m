//
//  Corso.m
//  day2
//
//  Created by sviluppatore1 on 21/05/13.
//  Copyright (c) 2013 sviluppatore1. All rights reserved.
//

#import "Corso.h"

@implementation Corso

@synthesize titolo, idCorso, durata;

/* costruttore */
- (id) init {
    self = [super init];
    
    return  self;
}

-(Corso) popolate: (NSString*) titolo andidCorso: (NSInteger*) idCorso anddurata: (NSString*) durata {
    
    Corso *newCorso = [[Corso alloc] init];
    
    

@end

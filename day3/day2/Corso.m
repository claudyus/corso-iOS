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

-(Corso*) popolate: (NSString*) Titolo andidCorso: (int) IdCorso anddurata: (NSString*) Durata andimmagine: (UIImage*) Immagine andattivo: (Boolean) Attivo {
    
    Corso *newCorso = [[Corso alloc] init];
    
    newCorso.titolo = Titolo;
    newCorso.idCorso = IdCorso;
    newCorso.durata = Durata;
    newCorso.immagine = Immagine;
    newCorso.attivo = Attivo;
    
    return newCorso;
}
@end

//
//  Corso.h
//  day2
//
//  Created by sviluppatore1 on 21/05/13.
//  Copyright (c) 2013 sviluppatore1. All rights reserved.
//

#ifndef day2_Corso_h
#define day2_Corso_h

/* modello */
@interface Corso: NSObject{
    /* variabili di istanza qua*/
    }

    /*proprietà ! */
    @property (nonatomic, strong) NSString *titolo;
    @property (nonatomic, assign) int idCorso;
    @property (nonatomic) NSString *durata;
    @property (nonatomic) UIImage *immagine;
    @property (nonatomic) Boolean attivo;


    -(Corso*) popolate: (NSString*) Titolo andidCorso: (int) IdCorso anddurata: (NSString*) Durata andimmagine: (UIImage*) Immagine andattivo: (Boolean) Attivo;
@end

#endif

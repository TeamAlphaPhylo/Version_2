//
//  MasterCard.m
//  Virtual Phylo
//
//  Created by Brandon Wong on 2013-07-05.
//  Copyright (c) 2013 Group_12. All rights reserved.
//

#import "MasterCard.h"
#define CARD_COUNT 50

@implementation MasterCard
@synthesize masterCardList;

- (id) init
{
    if (self = [super init]){
        // (Brandon) how the hell do you make an array? lol
        //masterCard_cards = [[NSArray alloc] arrayWithObjects:(const id *Card) count:(428)];
        // (Roger) Card number is not consecutive
        // (Roger) If we initialize all the card, that would be a huge cost because the cards take around 50mb,
        // (Roger) There are also overhead in this application
//        for (int i = 0; i < count; i++) {
            // masterCard_cards  = [[Card alloc] initWithCardNo:i];
//        }
        // (Roger) Initialization of Mutable array
        masterCardList = [[NSMutableArray alloc] init];
        for(int i = 0; i < CARD_COUNT; i++) {
            Card *cardInstantiation = [Card alloc];
            cardInstantiation = [cardInstantiation initWithCardNo: i];
            [masterCardList addObject: cardInstantiation];
        }
//        NSLog(@"%@", [[masterCardList objectAtIndex: 0] card_imageName]);
        for(int i = 0; i < CARD_COUNT; i++) {
            Card *temp = [masterCardList objectAtIndex:i];
            NSLog(@"%@", temp.card_imageName);
        }
        
    }
    return self;
}

@end

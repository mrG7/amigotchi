//
//  NewsLayer.m
//  Amigotchi
//
//  Created by Elliott Kipper on 5/3/11.
//  Copyright 2011 kipgfx. All rights reserved.
//

#import "NewsLayer.h"


@implementation NewsLayer
@synthesize view = view_;

-(id) init
{
    if((self = [super init]))
    {
        NewsView *theView = [[NewsView alloc] initWithString:@"Welcome back!"]; 
        self.view = theView;
        [theView release];
        
        [self addChild:self.view];
        
        CGSize size = [[CCDirector sharedDirector] winSize];
        self.view.position = ccp(size.width/2, (size.height + self.view.newsStand.contentSize.height/2.0));
    }
    
    return self;
}
-(void)newsWithString:(NSString *)aString
{
    /*[self removeChild:self.view cleanup:YES];
    self.view = nil;
    
    NewsView *theView = [[NewsView alloc] initWithString:aString]; 
    self.view = theView;
    [theView release];
    
    [self addChild:self.view];*/
    self.view.myString = aString;
    self.view.mySprite = nil;
    
    CGSize size = [[CCDirector sharedDirector] winSize];
    self.view.position = ccp(size.width/2, (size.height + self.view.newsStand.contentSize.height/2.0));
    [self.view display];
}

-(void)newsWithString:(NSString *)aString andSprite:(CCSprite *)aSprite
{
    self.view.myString = aString;
    self.view.mySprite = aSprite;
    
    CGSize size = [[CCDirector sharedDirector] winSize];
    self.view.position = ccp(size.width/2, (size.height + self.view.newsStand.contentSize.height/2.0));
    [self.view display];
}



-(void) dealloc
{
    [view_ release];
    [super dealloc];
}

@end

//
//  MapLayer.m
//  Amigotchi
//
//  Created by Kareem Nassar on 4/28/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MapLayer.h"
#import "MapView.h"

@implementation MapLayer

@synthesize wrapper = wrapper_;

+(CCScene *) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	MapLayer *layer = [MapLayer node];
	
	// add layer as a child to scene
	[scene addChild: layer];
    
	
	// return the scene
	return scene;
}

- (id) init {
    self = [super init];
    
    if(self){
        MapView *map = [[MapView alloc] init];
        self.wrapper = [CCUIViewWrapper wrapperForUIView:map];
        
        
        CGSize size = [[CCDirector sharedDirector] winSize];
        self.wrapper.contentSize = size;
        //wrapper.position = ccp(64,64);
        [self addChild:self.wrapper];
        
    }
    
    return self;
}

- (void) setVisible:(BOOL)visible{
    [self.wrapper setVisible:visible];
    [super setVisible:visible];
}

- (void) dealloc {
    [wrapper_ release];
    [super dealloc];
}

@end

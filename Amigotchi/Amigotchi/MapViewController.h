//
//  MapViewController.h
//  Amigotchi
//
//  Created by Elliott Kipper on 5/16/11.
//  Copyright 2011 kipgfx. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MKMapView.h>
#import <MapKit/MKUserLocation.h>


@interface MapViewController : UIViewController<MKMapViewDelegate> {
    IBOutlet MKMapView * mView;
    BOOL centered;
}
- (void) centerOnUserLocation:(CLLocationCoordinate2D)userCoord;
- (void) drawCheckins:(NSArray *)checkins;

@end

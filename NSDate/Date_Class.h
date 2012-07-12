//
//  Date_Class.h
//  moisture calculator iPad
//
//  Created by Jeffry Bobb on 6/18/12.
//
//

#import <UIKit/UIKit.h>
#import <CoreFoundation/CoreFoundation.h>


@interface Date_Class : NSObject <NSObject>






+(Date_Class *)DDate;

+(id)allocWithZone:(NSZone*)zone;
-(id)copy;
-(NSString *)Todays_Date_Long;
-(NSString *)Todays_Date_short;

-(NSString *)Todays_Date_Medium;
-(NSString *)Todays_Date_Full;
@end

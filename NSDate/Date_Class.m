//
//  Date_Class.m
//  moisture calculator iPad
//
//  Created by Jeffry Bobb on 6/18/12.
//
//

#import "Date_Class.h"

@implementation Date_Class


static Date_Class *DDate = nil;
+(Date_Class *)DDate
{
    if (DDate == nil) {
        DDate = [[super allocWithZone:NULL]init];
       
    }
    return DDate;
}
+(id)allocWithZone:(NSZone*)zone
{
    if (DDate == nil ) {
        DDate = [[super allocWithZone:zone]init];
        return DDate;
    }
    return nil;
}
-(id)copy
{
    return self.copy;
}



-(NSString *)Todays_Date_Long{
    NSDateFormatter *dateFormat =[[NSDateFormatter alloc]init];
    [dateFormat setTimeStyle:NSDateFormatterLongStyle];
    [dateFormat setDateStyle:NSDateFormatterLongStyle];
    NSDate *today = [NSDate date];
    NSString *dateString =[dateFormat stringFromDate:today]; 

    return dateString;
}
-(NSString *)Todays_Date_short{
    NSDateFormatter *dateFormat =[[NSDateFormatter alloc]init];
    [dateFormat setTimeStyle:NSDateFormatterShortStyle];
    [dateFormat setDateStyle:NSDateFormatterShortStyle];
    NSDate *today = [NSDate date];
    NSString *dateString =[dateFormat stringFromDate:today]; 
    
    return dateString;
}
#pragma mark Date import

-(NSString *)Todays_Date_Full{
    NSDateFormatter *dateFormat =[[NSDateFormatter alloc]init];
    [dateFormat setTimeStyle:NSDateFormatterFullStyle];
    [dateFormat setDateStyle:NSDateFormatterFullStyle];
    NSDate *today = [NSDate date];
    NSString *dateString =[dateFormat stringFromDate:today]; 
    
    return dateString;

}
-(NSString *)Todays_Date_Medium{
    NSDateFormatter *dateFormat =[[NSDateFormatter alloc]init];
    [dateFormat setTimeStyle:NSDateFormatterMediumStyle];
    [dateFormat setDateStyle:NSDateFormatterMediumStyle];
    NSDate *today = [NSDate date];
    NSString *dateString =[dateFormat stringFromDate:today]; 
    
    return dateString;

}








@end

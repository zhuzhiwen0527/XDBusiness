//
//  Target_Business.m
//  XDBusinessModule
//
//  Created by fancyzzw on 2021/11/5.
//

#import "Target_Business.h"

@implementation Target_Business
- (UIViewController *)Action_BusinessViewController:(NSDictionary *)params{
    typedef  void (^CallBackType)(NSString*);
    CallBackType callback = params[@"callback"];
    if(callback){
        callback(@"回调成功");
    }
    return  [[UIViewController alloc] init];
}
@end

//
//  XDTimerProxy.m
//  XDBusinessModule
//
//  Created by fancyzzw on 2021/11/5.
//

#import "XDTimerProxy.h"
@interface XDTimerProxy ()
@property(nonatomic,weak) id target;
@end
@implementation XDTimerProxy
+ (instancetype)proxyWithTarget:(id)target{
    
    XDTimerProxy * proxy = [XDTimerProxy alloc];
    proxy.target = target;
    return  proxy;
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)sel{
    return  [self.target methodSignatureForSelector:sel];
}


- (void)forwardInvocation:(NSInvocation *)invocation{
    [invocation invokeWithTarget:self.target];
}

@end

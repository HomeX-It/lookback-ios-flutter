#import "LookbackIosFlutterPlugin.h"

#import "Lookback.h"

@implementation LookbackIosFlutterPlugin
LookbackParticipate *_participate;
- (LookbackParticipate*)participate
{
    if(!_participate) {
        _participate = [LookbackParticipate new];
    }
    return _participate;
}

+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
    FlutterMethodChannel* channel = [FlutterMethodChannel
                                     methodChannelWithName:@"lookback_ios_flutter"
                                     binaryMessenger:[registrar messenger]];
    LookbackIosFlutterPlugin* instance = [[LookbackIosFlutterPlugin alloc] init];
    [registrar addMethodCallDelegate:instance channel:channel];
    [registrar addApplicationDelegate:instance];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
    result(FlutterMethodNotImplemented);
}

- (BOOL)application:(UIApplication*)application didFinishLaunchingWithOptions:(NSDictionary*)options
{
    [self.participate setupWithApplicationWindow: [[[UIApplication sharedApplication] windows] firstObject]];
    return YES;
}

- (BOOL)application:(UIApplication*)application openURL:(nonnull NSURL *)url options:(nonnull NSDictionary<UIApplicationOpenURLOptionsKey,id> *)options
{
    return [self.participate startParticipationFromURL:url];
}

@end

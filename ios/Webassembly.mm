#import "turboModuleUtility.h"

#import "Webassembly.h"
#import <React/RCTBridge+Private.h>
#import <jsi/jsi.h>

@implementation Webassembly

RCT_EXPORT_MODULE()

RCT_EXPORT_BLOCKING_SYNCHRONOUS_METHOD(install)
{
    RCTBridge* bridge = [RCTBridge currentBridge];
    RCTCxxBridge* cxxBridge = (RCTCxxBridge*)bridge;
    if (cxxBridge == nil) {
        return @false;
    }
    
    jsi::Runtime* jsiRuntime = (jsi::Runtime*) cxxBridge.runtime;
    if (jsiRuntime == nil) {
        return @false;
    }
    turboModuleUtility::registerTurboModule(*jsiRuntime);
    return @true;
}

@end

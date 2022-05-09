#pragma once

#include <jsi/jsi.h>

//#include <HostObject.h>

using namespace facebook;

namespace turboModuleUtility {

// Install the Turbomodule
void registerTurboModule(jsi::Runtime &rt);

} // namespace turboModuleUtility

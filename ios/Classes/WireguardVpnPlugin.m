#import "WireguardPlugin.h"
#if __has_include(<wireguard_vpn/wireguard_vpn-Swift.h>)
#import <wireguard_vpn/wireguard_vpn-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "wireguard_vpn-Swift.h"
#endif

@implementation WireguardVpnPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftWireguardPlugin registerWithRegistrar:registrar];
}
@end

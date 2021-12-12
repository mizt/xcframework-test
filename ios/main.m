#import "test.h"
#import <UIKit/UIKit.h>

@interface AppDelegate:UIResponder<UIApplicationDelegate> {
}
@end

@implementation AppDelegate

-(BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    NSLog(@"%d",add(random()%128,random()%128));
    
    return YES;
}

-(void)applicationWillTerminate:(UIApplication *)application {
}

@end

int main(int argc, char * argv[]) {
    @autoreleasepool {
        return UIApplicationMain(argc,argv,nil,@"AppDelegate");
    }
}

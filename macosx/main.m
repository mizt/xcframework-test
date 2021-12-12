#import "test.h"
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"%d",add(random()%128,random()%128));
    }
    return 0;
}

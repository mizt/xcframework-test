cd "$(dirname "$0")"
cd ./

clang -O3 ./src/test.c -c -o ./libtest-macos.o
ar rcs ./test.xcframework/macos-arm64/libtest.a ./libtest-macos.o

clang -O3 -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator.sdk ./src/test.c -c -o ./libtest-iphonesimulator.o
ar rcs ./test.xcframework/ios-arm64-simulator/libtest.a ./libtest-iphonesimulator.o

clang -O3 -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk ./src/test.c -c -o ./libtest-iphoneos.o
ar rcs ./test.xcframework/ios-arm64/libtest.a ./libtest-iphoneos.o
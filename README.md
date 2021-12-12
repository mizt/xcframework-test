#### Build without Xcode

```
build.sh
```

#### Build with Xcode

```
cd "$(dirname "$0")"
cd ./

xcodebuild -scheme test -sdk macosx -SKIP_INSTALL=NO
xcodebuild -scheme test -sdk iphoneos -SKIP_INSTALL=NO
xcodebuild -scheme test -sdk iphonesimulator -SKIP_INSTALL=NO

cp ./build/Release/libtest.a ./test.xcframework/macos-arm64/libtest.a
cp ./build/Release-iphoneos/libtest.a ./test.xcframework/ios-arm64/libtest.a
cp ./build/Release-iphonesimulator/libtest.a ./test.xcframework/ios-arm64-simulator/libtest.a
```
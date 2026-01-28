# PaymentsSDK

A lightweight iOS Payments SDK (Core-only) built for distribution via **Swift Package Manager** and **CocoaPods**.

## Requirements
- iOS 14+
- Swift 5.9+
- Xcode 15+

## Installation

### Swift Package Manager (SPM)

In Xcode:
1. **File → Add Packages…**
2. Paste the repository URL:
   - `https://github.com/jonathan02rv/PaymentsSDK`
3. Choose a version (or branch) and add **PaymentsSDK** to your app target.

Import:
```swift
import PaymentsSDK
```

### CocoaPods

PaymentsSDK can also be integrated using **CocoaPods**.

#### Requirements
- CocoaPods 1.11+
- iOS 14+

#### Installation

Add the following line to your `Podfile`:

```ruby
platform :ios, '14.0'
use_frameworks!

target 'YourAppTarget' do
  pod 'PaymentsSDK', :git => 'https://github.com/jonathan02rv/PaymentsSDK.git', :branch => 'main'
end
```
**Then run:**
pod install

**Open the generated** .xcworkspace file:

open YourApp.xcworkspace

**Import the SDK**
import PaymentsSDK

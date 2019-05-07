# Floatbot

[![CI Status](https://img.shields.io/travis/connect@floatbot.ai/Floatbot.svg?style=flat)](https://travis-ci.org/connect@floatbot.ai/Floatbot)
[![Version](https://img.shields.io/cocoapods/v/Floatbot.svg?style=flat)](https://cocoapods.org/pods/Floatbot)
[![License](https://img.shields.io/cocoapods/l/Floatbot.svg?style=flat)](https://cocoapods.org/pods/Floatbot)
[![Platform](https://img.shields.io/cocoapods/p/Floatbot.svg?style=flat)](https://cocoapods.org/pods/Floatbot)

# Description
SDK allows the iOS app to integrate with [floatbot.ai](http://floatbot.ai) for iPhone and iPad devices

# Prerequisite

• Bot_ID

• Token/Key

You can get Bot_ID and Token for your app from [floatbot.ai dashboard](https://floatbot.ai/portal/dashboard/login)

# Dependencies

•    SDWebImage

• AFNetworking

## Requirements

## Installation

CocoaPods (recommended)

Floatbot is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
use_frameworks!
    pod 'floatbot_iOS_sdk'
```

## Required Methods
```ruby
 FloatbotView.shared.setEncryptionKey(encryptionKeyStr: "YOUR_ENCRYPTION_KEY")
 ```

### To initialize floatbot user,
```ruby
FloatbotView.shared.fview(withFrame: CGRect(x:0,y: 0,width:UIScreen.main.bounds.size.width,height: UIScreen.main.bounds.size.height - 300),withViewContainer: self, withbot_id:"5cc00545e6293668180a5d12")
```

## Other helper Methods
### To show hide header, use
```ruby
FloatbotView.shared.showHeader(isVisible: false)
```

### To show user sessions, use
```ruby
FloatbotView.shared.showSessions()
```

### To Set Authentication token, use 
```ruby
FloatbotView.shared.setToken(tokenStr: "YOUR_AUTH_TOKEN")
```

### To send APNS token to floatbot server to receive push notification, add following method in your project's -[AppDelegate application:didFinishLaunchingWithOptions:]  method

```ruby
FloatbotView.shared.updateToken(pushTokenStr: "YOUR_PUSH_TOKEN")
```

#### Uploading your App’s SSL Push Certificate

1. Go to the Mac OS finder application, and search for “Keychain Access”. Open it.  
2. Find your App’s push certificate in the Certificates section. It will start with the string "Apple Development iOS Push Services" (Apple Production iOS push services” in case of production certificate)  
3. Expand the row, and you will find the private key.  
4. Select both the private key and certificate and export it as .p12 file and necessarily set a password. 
5. Upload the saved .p12 file in the field below selecting development environment or production environment depending on whether you are using it for dev or production push services.

To generate APNS certificate refer this : https://developer.apple.com/library/content/documentation/IDEs/Conceptual/AppDistributionGuide/AddingCapabilities/AddingCapabilities.html

Upload your development / production certificate in Settings page.

<p align="center"><img src="https://floatbot.ai/images/website/ChatBot%20Setting1%20%20%20Floatbot.png" alt="Floatbot" width="500"/></p>

#### Handle Push notification

To enable floatbot to send push notifications to the application, add this implementation of - application:didRegisterForRemoteNotificationsWithDeviceToken: in your AppDelegate file that captures the device token and sends it to floatbot server

Add below snippet in -[AppDelegate application:didFinishLaunchingWithOptions:] method 
```ruby
if(SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"8.0")) {
UIUserNotificationSettings *settings = [UIUserNotificationSettings settingsForTypes:UIUserNotificationTypeAlert | UIUserNotificationTypeBadge | UIUserNotificationTypeSound categories:nil];
[[UIApplication sharedApplication] registerUserNotificationSettings:settings];
[[UIApplication sharedApplication] registerForRemoteNotifications];
}
else{
[[UIApplication sharedApplication] registerForRemoteNotificationTypes:(UIRemoteNotificationTypeBadge | UIRemoteNotificationTypeSound | UIRemoteNotificationTypeAlert)];
}
```

## Get in touch

For any queries, email us.
Email : [contact@floatbot.ai](contact@floatbot.ai)

## Author

connect@floatbot.ai

## License

Floatbot is available under the MIT license. See the LICENSE file for more info.

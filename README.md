参考http://limboy.me/ios/2013/09/23/build-ios-application.html

目录结构
AppDelegate
Models
Macro
General
Helpers
Vendors
Sections
Resources

===============================================================================
AppDelegate

这个目录下放的是AppDelegate.h(.m)文件，是整个应用的入口文件，所以单独拿出来。

Models

这个目录下放一些与数据相关的Model文件，里面大概是这样：

Models
    |- BaseModel.h
    |- BaseModel.m
    |- CollectionModel.h
    |- CollectionModel.m
    ...
Macro

这个目录下放了整个应用会用到的宏定义，里面大概是这样：

Macro
    |- AppMacro.h
    |- NotificationMacro.h
    |- VendorMacro.h
    |- UtilsMacro.h
    ...
AppMacro.h 里放app相关的宏定义，如:

// 表情相关
#define EMOTION_CACHE_PATH @"cachedemotions"
#define EMOTION_RECENT_USED @"recentusedemotions"
#define EMOTION_CATEGORIES @"categoryemotions"
#define EMOTION_TOPICS @"emotiontopics"

// 收藏相关
#define COLLECT_CACHE_PATH @"collected"

// 配图相关
#define WATERFALL_ITEM_HEIGHT_MAX 300
#define WATERFALL_ITEM_WIDTH 146
NotificationMacro.h 里放的是通知相关的宏定义。

UtilsMacro.h 里放的是一些方便使用的宏定义，如：

#define UIColorFromRGB(r,g,b) [UIColor \
colorWithRed:r/255.0 \
green:g/255.0 \
blue:b/255.0 alpha:1]

#define NSStringFromInt(intValue) [NSString stringWithFormat:@"%d",intValue]
VendorMacro.h 里放一些第三方常量，如：

#define UMENG_KEY @"xxxxx"
#define UMENG_CHANNEL_ID @"xxx"
如果有新的类型的宏定义，可以再新建一个相关的Macro.h。

General

这个目录放会被重用的Views/Classes和Categories。里面大概是这样：

General
    |- Views
        |- TPKScollView
        |- TPKPullToRefresh
        ...
    |- Classes
        |- TPKBaseViewController
        |- TPKHorizontalView
        ...
    | - Categories
        |- UIViewController+Sizzle
        |- UIImageView+Downloader
        ...
这里的TPK是项目的首字母缩写。

Helpers

这个目录放一些助手类，文件名与功能挂钩。里面大概是这样：

Helpers
    |- TPKShareHelper
    |- TPDBHelper
    |- TPKEmotionHelper
    ...
助手类的主要作用是帮助Controller瘦身，也可以提供一定程度的复用。

Vendors

这个目录放第三方的类库/SDK，如UMeng、WeiboSDK、WeixinSDK等等。

Sections

这个目录下面的文件对应的是app的具体单元，如导航、瀑布流等等。里面大概是这样：

Sections
    |- Menu
    |- Setting
    |- Collection
    ...
Resources

这个目录下放的是app会用到的一些资源，主要是图片。


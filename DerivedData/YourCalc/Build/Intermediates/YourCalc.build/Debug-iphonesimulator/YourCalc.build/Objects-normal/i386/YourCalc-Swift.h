// Generated by Apple Swift version 2.2 (swiftlang-703.0.18.8 clang-703.0.31)
#pragma clang diagnostic push

#if defined(__has_include) && __has_include(<swift/objc-prologue.h>)
# include <swift/objc-prologue.h>
#endif

#pragma clang diagnostic ignored "-Wauto-import"
#include <objc/NSObject.h>
#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>

#if !defined(SWIFT_TYPEDEFS)
# define SWIFT_TYPEDEFS 1
# if defined(__has_include) && __has_include(<uchar.h>)
#  include <uchar.h>
# elif !defined(__cplusplus) || __cplusplus < 201103L
typedef uint_least16_t char16_t;
typedef uint_least32_t char32_t;
# endif
typedef float swift_float2  __attribute__((__ext_vector_type__(2)));
typedef float swift_float3  __attribute__((__ext_vector_type__(3)));
typedef float swift_float4  __attribute__((__ext_vector_type__(4)));
typedef double swift_double2  __attribute__((__ext_vector_type__(2)));
typedef double swift_double3  __attribute__((__ext_vector_type__(3)));
typedef double swift_double4  __attribute__((__ext_vector_type__(4)));
typedef int swift_int2  __attribute__((__ext_vector_type__(2)));
typedef int swift_int3  __attribute__((__ext_vector_type__(3)));
typedef int swift_int4  __attribute__((__ext_vector_type__(4)));
#endif

#if !defined(SWIFT_PASTE)
# define SWIFT_PASTE_HELPER(x, y) x##y
# define SWIFT_PASTE(x, y) SWIFT_PASTE_HELPER(x, y)
#endif
#if !defined(SWIFT_METATYPE)
# define SWIFT_METATYPE(X) Class
#endif

#if defined(__has_attribute) && __has_attribute(objc_runtime_name)
# define SWIFT_RUNTIME_NAME(X) __attribute__((objc_runtime_name(X)))
#else
# define SWIFT_RUNTIME_NAME(X)
#endif
#if defined(__has_attribute) && __has_attribute(swift_name)
# define SWIFT_COMPILE_NAME(X) __attribute__((swift_name(X)))
#else
# define SWIFT_COMPILE_NAME(X)
#endif
#if !defined(SWIFT_CLASS_EXTRA)
# define SWIFT_CLASS_EXTRA
#endif
#if !defined(SWIFT_PROTOCOL_EXTRA)
# define SWIFT_PROTOCOL_EXTRA
#endif
#if !defined(SWIFT_ENUM_EXTRA)
# define SWIFT_ENUM_EXTRA
#endif
#if !defined(SWIFT_CLASS)
# if defined(__has_attribute) && __has_attribute(objc_subclassing_restricted)
#  define SWIFT_CLASS(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) __attribute__((objc_subclassing_restricted)) SWIFT_CLASS_EXTRA
#  define SWIFT_CLASS_NAMED(SWIFT_NAME) __attribute__((objc_subclassing_restricted)) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
# else
#  define SWIFT_CLASS(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
#  define SWIFT_CLASS_NAMED(SWIFT_NAME) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
# endif
#endif

#if !defined(SWIFT_PROTOCOL)
# define SWIFT_PROTOCOL(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) SWIFT_PROTOCOL_EXTRA
# define SWIFT_PROTOCOL_NAMED(SWIFT_NAME) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_PROTOCOL_EXTRA
#endif

#if !defined(SWIFT_EXTENSION)
# define SWIFT_EXTENSION(M) SWIFT_PASTE(M##_Swift_, __LINE__)
#endif

#if !defined(OBJC_DESIGNATED_INITIALIZER)
# if defined(__has_attribute) && __has_attribute(objc_designated_initializer)
#  define OBJC_DESIGNATED_INITIALIZER __attribute__((objc_designated_initializer))
# else
#  define OBJC_DESIGNATED_INITIALIZER
# endif
#endif
#if !defined(SWIFT_ENUM)
# define SWIFT_ENUM(_type, _name) enum _name : _type _name; enum SWIFT_ENUM_EXTRA _name : _type
# if defined(__has_feature) && __has_feature(generalized_swift_name)
#  define SWIFT_ENUM_NAMED(_type, _name, SWIFT_NAME) enum _name : _type _name SWIFT_COMPILE_NAME(SWIFT_NAME); enum SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_ENUM_EXTRA _name : _type
# else
#  define SWIFT_ENUM_NAMED(_type, _name, SWIFT_NAME) SWIFT_ENUM(_type, _name)
# endif
#endif
#if defined(__has_feature) && __has_feature(modules)
@import UIKit;
#endif

#pragma clang diagnostic ignored "-Wproperty-attribute-mismatch"
#pragma clang diagnostic ignored "-Wduplicate-method-arg"
@class UIWindow;
@class UIApplication;
@class NSObject;
@class NSURL;
@class NSManagedObjectModel;
@class NSPersistentStoreCoordinator;
@class NSManagedObjectContext;

SWIFT_CLASS("_TtC8YourCalc11AppDelegate")
@interface AppDelegate : UIResponder <UIApplicationDelegate>
@property (nonatomic, strong) UIWindow * _Nullable window;
- (BOOL)application:(UIApplication * _Nonnull)application didFinishLaunchingWithOptions:(NSDictionary * _Nullable)launchOptions;
- (void)applicationWillResignActive:(UIApplication * _Nonnull)application;
- (void)applicationDidEnterBackground:(UIApplication * _Nonnull)application;
- (void)applicationWillEnterForeground:(UIApplication * _Nonnull)application;
- (void)applicationDidBecomeActive:(UIApplication * _Nonnull)application;
- (void)applicationWillTerminate:(UIApplication * _Nonnull)application;
@property (nonatomic, strong) NSURL * _Nonnull applicationDocumentsDirectory;
@property (nonatomic, strong) NSManagedObjectModel * _Nonnull managedObjectModel;
@property (nonatomic, strong) NSPersistentStoreCoordinator * _Nonnull persistentStoreCoordinator;
@property (nonatomic, strong) NSManagedObjectContext * _Nonnull managedObjectContext;
- (void)saveContext;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end

@class UIImageView;
@class NSBundle;
@class NSCoder;

SWIFT_CLASS("_TtC8YourCalc22SettingsViewController")
@interface SettingsViewController : UIViewController
@property (nonatomic, strong) IBOutlet UIImageView * _Null_unspecified backImage;
- (void)viewDidLoad;
- (void)didReceiveMemoryWarning;
- (IBAction)back1:(id _Nonnull)sender;
- (IBAction)back2:(id _Nonnull)sender;
- (IBAction)back3:(id _Nonnull)sender;
- (IBAction)back4:(id _Nonnull)sender;
- (IBAction)back5:(id _Nonnull)sender;
- (IBAction)back6:(id _Nonnull)sender;
- (IBAction)back7:(id _Nonnull)sender;
- (IBAction)back8:(id _Nonnull)sender;
- (IBAction)back9:(id _Nonnull)sender;
- (IBAction)back10:(id _Nonnull)sender;
- (IBAction)back11:(id _Nonnull)sender;
- (IBAction)back12:(id _Nonnull)sender;
- (IBAction)back13:(id _Nonnull)sender;
- (IBAction)back14:(id _Nonnull)sender;
- (IBAction)back15:(id _Nonnull)sender;
- (IBAction)back16:(id _Nonnull)sender;
- (IBAction)back17:(id _Nonnull)sender;
- (IBAction)back18:(id _Nonnull)sender;
- (IBAction)back19:(id _Nonnull)sender;
- (IBAction)back20:(id _Nonnull)sender;
- (void)save:(NSString * _Nonnull)name;
- (void)deleteAllData:(NSString * _Nonnull)entity;
- (nonnull instancetype)initWithNibName:(NSString * _Nullable)nibNameOrNil bundle:(NSBundle * _Nullable)nibBundleOrNil OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end

@class NSManagedObject;
@class UITextField;

SWIFT_CLASS("_TtC8YourCalc14ViewController")
@interface ViewController : UIViewController
@property (nonatomic, strong) NSManagedObject * _Nonnull storedBackground;
@property (nonatomic, strong) IBOutlet UIImageView * _Null_unspecified aBackground;
@property (nonatomic, copy) NSArray<NSManagedObject *> * _Nonnull cores;
- (void)viewDidLoad;
- (void)didReceiveMemoryWarning;
@property (nonatomic, strong) IBOutlet UITextField * _Null_unspecified resultField;
@property (nonatomic, copy) NSString * _Nonnull inTyping;
@property (nonatomic, copy) NSString * _Nonnull finalString;
@property (nonatomic) NSInteger finalAnswer;
@property (nonatomic) BOOL canDec;
@property (nonatomic) BOOL canIClose;
- (IBAction)sqrt:(id _Nonnull)sender;
- (IBAction)power:(id _Nonnull)sender;
- (IBAction)openpar:(id _Nonnull)sender;
- (IBAction)closepar:(id _Nonnull)sender;
- (IBAction)delKey:(id _Nonnull)sender;
- (IBAction)clearBt:(id _Nonnull)sender;
- (IBAction)seven:(id _Nonnull)sender;
- (IBAction)eight:(id _Nonnull)sender;
- (IBAction)nine:(id _Nonnull)sender;
- (IBAction)four:(id _Nonnull)sender;
- (IBAction)five:(id _Nonnull)sender;
- (IBAction)six:(id _Nonnull)sender;
- (IBAction)one:(id _Nonnull)sender;
- (IBAction)two:(id _Nonnull)sender;
- (IBAction)three:(id _Nonnull)sender;
- (IBAction)zero:(id _Nonnull)sender;
- (IBAction)decpoint:(id _Nonnull)sender;
- (IBAction)divide:(id _Nonnull)sender;
- (IBAction)times:(id _Nonnull)sender;
- (IBAction)minus:(id _Nonnull)sender;
- (IBAction)plus:(id _Nonnull)sender;
- (IBAction)equals:(id _Nonnull)sender;
- (nonnull instancetype)initWithNibName:(NSString * _Nullable)nibNameOrNil bundle:(NSBundle * _Nullable)nibBundleOrNil OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end

#pragma clang diagnostic pop

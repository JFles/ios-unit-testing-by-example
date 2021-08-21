/***
 * Excerpted from "iOS Unit Testing by Example",
 * published by The Pragmatic Bookshelf.
 * Copyrights apply to this code. It may not be used to create training material,
 * courses, books, articles, and the like. Contact us if you are in doubt.
 * We make no guarantees that this code is fit for any purpose.
 * Visit http://www.pragmaticprogrammer.com/titles/jrlegios for more book information.
***/
#ifndef TARGET_OS_SIMULATOR
#include <TargetConditionals.h>
#endif
#if TARGET_OS_SIMULATOR
// Generated by Apple Swift version 5.2 (swiftlang-1103.0.32.1 clang-1103.0.32.29)
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wgcc-compat"

#if !defined(__has_include)
# define __has_include(x) 0
#endif
#if !defined(__has_attribute)
# define __has_attribute(x) 0
#endif
#if !defined(__has_feature)
# define __has_feature(x) 0
#endif
#if !defined(__has_warning)
# define __has_warning(x) 0
#endif

#if __has_include(<swift/objc-prologue.h>)
# include <swift/objc-prologue.h>
#endif

#pragma clang diagnostic ignored "-Wauto-import"
#include <Foundation/Foundation.h>
#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>

#if !defined(SWIFT_TYPEDEFS)
# define SWIFT_TYPEDEFS 1
# if __has_include(<uchar.h>)
#  include <uchar.h>
# elif !defined(__cplusplus)
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
typedef unsigned int swift_uint2  __attribute__((__ext_vector_type__(2)));
typedef unsigned int swift_uint3  __attribute__((__ext_vector_type__(3)));
typedef unsigned int swift_uint4  __attribute__((__ext_vector_type__(4)));
#endif

#if !defined(SWIFT_PASTE)
# define SWIFT_PASTE_HELPER(x, y) x##y
# define SWIFT_PASTE(x, y) SWIFT_PASTE_HELPER(x, y)
#endif
#if !defined(SWIFT_METATYPE)
# define SWIFT_METATYPE(X) Class
#endif
#if !defined(SWIFT_CLASS_PROPERTY)
# if __has_feature(objc_class_property)
#  define SWIFT_CLASS_PROPERTY(...) __VA_ARGS__
# else
#  define SWIFT_CLASS_PROPERTY(...)
# endif
#endif

#if __has_attribute(objc_runtime_name)
# define SWIFT_RUNTIME_NAME(X) __attribute__((objc_runtime_name(X)))
#else
# define SWIFT_RUNTIME_NAME(X)
#endif
#if __has_attribute(swift_name)
# define SWIFT_COMPILE_NAME(X) __attribute__((swift_name(X)))
#else
# define SWIFT_COMPILE_NAME(X)
#endif
#if __has_attribute(objc_method_family)
# define SWIFT_METHOD_FAMILY(X) __attribute__((objc_method_family(X)))
#else
# define SWIFT_METHOD_FAMILY(X)
#endif
#if __has_attribute(noescape)
# define SWIFT_NOESCAPE __attribute__((noescape))
#else
# define SWIFT_NOESCAPE
#endif
#if __has_attribute(ns_consumed)
# define SWIFT_RELEASES_ARGUMENT __attribute__((ns_consumed))
#else
# define SWIFT_RELEASES_ARGUMENT
#endif
#if __has_attribute(warn_unused_result)
# define SWIFT_WARN_UNUSED_RESULT __attribute__((warn_unused_result))
#else
# define SWIFT_WARN_UNUSED_RESULT
#endif
#if __has_attribute(noreturn)
# define SWIFT_NORETURN __attribute__((noreturn))
#else
# define SWIFT_NORETURN
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
# if __has_attribute(objc_subclassing_restricted)
#  define SWIFT_CLASS(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) __attribute__((objc_subclassing_restricted)) SWIFT_CLASS_EXTRA
#  define SWIFT_CLASS_NAMED(SWIFT_NAME) __attribute__((objc_subclassing_restricted)) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
# else
#  define SWIFT_CLASS(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
#  define SWIFT_CLASS_NAMED(SWIFT_NAME) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
# endif
#endif
#if !defined(SWIFT_RESILIENT_CLASS)
# if __has_attribute(objc_class_stub)
#  define SWIFT_RESILIENT_CLASS(SWIFT_NAME) SWIFT_CLASS(SWIFT_NAME) __attribute__((objc_class_stub))
#  define SWIFT_RESILIENT_CLASS_NAMED(SWIFT_NAME) __attribute__((objc_class_stub)) SWIFT_CLASS_NAMED(SWIFT_NAME)
# else
#  define SWIFT_RESILIENT_CLASS(SWIFT_NAME) SWIFT_CLASS(SWIFT_NAME)
#  define SWIFT_RESILIENT_CLASS_NAMED(SWIFT_NAME) SWIFT_CLASS_NAMED(SWIFT_NAME)
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
# if __has_attribute(objc_designated_initializer)
#  define OBJC_DESIGNATED_INITIALIZER __attribute__((objc_designated_initializer))
# else
#  define OBJC_DESIGNATED_INITIALIZER
# endif
#endif
#if !defined(SWIFT_ENUM_ATTR)
# if defined(__has_attribute) && __has_attribute(enum_extensibility)
#  define SWIFT_ENUM_ATTR(_extensibility) __attribute__((enum_extensibility(_extensibility)))
# else
#  define SWIFT_ENUM_ATTR(_extensibility)
# endif
#endif
#if !defined(SWIFT_ENUM)
# define SWIFT_ENUM(_type, _name, _extensibility) enum _name : _type _name; enum SWIFT_ENUM_ATTR(_extensibility) SWIFT_ENUM_EXTRA _name : _type
# if __has_feature(generalized_swift_name)
#  define SWIFT_ENUM_NAMED(_type, _name, SWIFT_NAME, _extensibility) enum _name : _type _name SWIFT_COMPILE_NAME(SWIFT_NAME); enum SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_ENUM_ATTR(_extensibility) SWIFT_ENUM_EXTRA _name : _type
# else
#  define SWIFT_ENUM_NAMED(_type, _name, SWIFT_NAME, _extensibility) SWIFT_ENUM(_type, _name, _extensibility)
# endif
#endif
#if !defined(SWIFT_UNAVAILABLE)
# define SWIFT_UNAVAILABLE __attribute__((unavailable))
#endif
#if !defined(SWIFT_UNAVAILABLE_MSG)
# define SWIFT_UNAVAILABLE_MSG(msg) __attribute__((unavailable(msg)))
#endif
#if !defined(SWIFT_AVAILABILITY)
# define SWIFT_AVAILABILITY(plat, ...) __attribute__((availability(plat, __VA_ARGS__)))
#endif
#if !defined(SWIFT_WEAK_IMPORT)
# define SWIFT_WEAK_IMPORT __attribute__((weak_import))
#endif
#if !defined(SWIFT_DEPRECATED)
# define SWIFT_DEPRECATED __attribute__((deprecated))
#endif
#if !defined(SWIFT_DEPRECATED_MSG)
# define SWIFT_DEPRECATED_MSG(...) __attribute__((deprecated(__VA_ARGS__)))
#endif
#if __has_feature(attribute_diagnose_if_objc)
# define SWIFT_DEPRECATED_OBJC(Msg) __attribute__((diagnose_if(1, Msg, "warning")))
#else
# define SWIFT_DEPRECATED_OBJC(Msg) SWIFT_DEPRECATED_MSG(Msg)
#endif
#if !defined(IBSegueAction)
# define IBSegueAction
#endif
#if __has_feature(modules)
#if __has_warning("-Watimport-in-framework-header")
#pragma clang diagnostic ignored "-Watimport-in-framework-header"
#endif
@import ObjectiveC;
@import UIKit;
#endif

#pragma clang diagnostic ignored "-Wproperty-attribute-mismatch"
#pragma clang diagnostic ignored "-Wduplicate-method-arg"
#if __has_warning("-Wpragma-clang-attribute")
# pragma clang diagnostic ignored "-Wpragma-clang-attribute"
#endif
#pragma clang diagnostic ignored "-Wunknown-pragmas"
#pragma clang diagnostic ignored "-Wnullability"

#if __has_attribute(external_source_symbol)
# pragma push_macro("any")
# undef any
# pragma clang attribute push(__attribute__((external_source_symbol(language="Swift", defined_in="ViewControllerPresentationSpy",generated_declaration))), apply_to=any(function,enum,objc_interface,objc_category,objc_protocol))
# pragma pop_macro("any")
#endif

@class UIViewController;
@class UIAlertAction;
@class UIPopoverPresentationController;
@class UITextField;

/// Captures presented UIAlertControllers.
/// Instantiate an AlertVerifier before the execution phase of the test. Then invoke the code to
/// create and present your alert. Information about the alert is then available through the
/// AlertVerifier.
SWIFT_CLASS_NAMED("AlertVerifier")
@interface QCOAlertVerifier : NSObject
/// Number of times present(_:animated:completion:) was called.
@property (nonatomic) NSInteger presentedCount;
@property (nonatomic, strong) UIViewController * _Nullable presentingViewController;
@property (nonatomic) BOOL animated;
@property (nonatomic, copy) NSString * _Nullable title;
@property (nonatomic, copy) NSString * _Nullable message;
@property (nonatomic) UIAlertControllerStyle preferredStyle;
@property (nonatomic, copy) NSArray<UIAlertAction *> * _Nonnull actions;
@property (nonatomic, strong) UIAlertAction * _Nullable preferredAction;
@property (nonatomic, strong) UIPopoverPresentationController * _Nullable popover;
@property (nonatomic, copy) NSArray<UITextField *> * _Nullable textFields;
/// Production code completion handler passed to present(_:animated:completion:).
@property (nonatomic, copy) void (^ _Nullable capturedCompletion)(void);
/// Test code can provide its own completion handler to fulfill XCTestExpectations.
@property (nonatomic, copy) void (^ _Nullable testCompletion)(void);
/// Initializes a newly allocated verifier.
/// Instantiating an AlertVerifier swizzles UIViewController, UIAlertController, and
/// UIAlertAction. They remain swizzled until the AlertVerifier is deallocated. Only one
/// AlertVerifier may exist at a time, and none may be created while a PresentationVerifier
/// exists. (This is because they both swizzle UIViewController.)
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
/// Executes the action for the button with the specified title.
/// Throws an exception (or returns an error in ObjC) if no button with given title is found.
- (BOOL)executeActionForButton:(NSString * _Nonnull)title andReturnError:(NSError * _Nullable * _Nullable)error;
@end






SWIFT_CLASS_NAMED("ClosureContainer")
@interface QCOClosureContainer : NSObject
- (nonnull instancetype)initWithClosure:(void (^ _Nullable)(void))closure OBJC_DESIGNATED_INITIALIZER;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
+ (nonnull instancetype)new SWIFT_UNAVAILABLE_MSG("-init is unavailable");
@end


/// Captures dismissed view controllers.
/// Instantiate a DismissalVerifier before the execution phase of the test. Then invoke the code to
/// dismiss your view controller. Information about the dismissal is then available through the
/// DismissalVerifier.
SWIFT_CLASS_NAMED("DismissalVerifier")
@interface QCODismissalVerifier : NSObject
/// Number of times dismiss(_:completion:) was called.
@property (nonatomic) NSInteger dismissedCount;
@property (nonatomic, strong) UIViewController * _Nullable dismissedViewController;
@property (nonatomic) BOOL animated;
/// Production code completion handler passed to dismiss(_:completion:).
@property (nonatomic, copy) void (^ _Nullable capturedCompletion)(void);
/// Test code can provide its own completion handler to fulfill XCTestExpectations.
@property (nonatomic, copy) void (^ _Nullable testCompletion)(void);
/// Initializes a newly allocated verifier.
/// Instantiating a DismissalVerifier swizzles UIViewController. It remains swizzled until the
/// DismissalVerifier is deallocated. Only one DismissalVerifier may exist at a time.
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end




/// Captures presented view controllers.
/// Instantiate a PresentationVerifier before the execution phase of the test. Then invoke the code
/// to create and present your view controller. Information about the presentation is then available
/// through the PresentationVerifier.
SWIFT_CLASS_NAMED("PresentationVerifier")
@interface QCOPresentationVerifier : NSObject
/// Number of times present(_:animated:completion:) was called.
@property (nonatomic) NSInteger presentedCount;
@property (nonatomic, strong) UIViewController * _Nullable presentedViewController;
@property (nonatomic, strong) UIViewController * _Nullable presentingViewController;
@property (nonatomic) BOOL animated;
/// Production code completion handler passed to present(_:animated:completion:).
@property (nonatomic, copy) void (^ _Nullable capturedCompletion)(void);
/// Test code can provide its own completion handler to fulfill XCTestExpectations.
@property (nonatomic, copy) void (^ _Nullable testCompletion)(void);
/// Initializes a newly allocated verifier.
/// Instantiating a PresentationVerifier swizzles UIViewController. It remains swizzled until
/// the PresentationVerifier is deallocated. Only one PresentationVerifier may exist at a time,
/// and none may be created while an AlertVerifier exists. (This is because they both swizzle
/// UIViewController.)
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end



#if __has_attribute(external_source_symbol)
# pragma clang attribute pop
#endif
#pragma clang diagnostic pop

#else
// Generated by Apple Swift version 5.2 (swiftlang-1103.0.32.1 clang-1103.0.32.29)
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wgcc-compat"

#if !defined(__has_include)
# define __has_include(x) 0
#endif
#if !defined(__has_attribute)
# define __has_attribute(x) 0
#endif
#if !defined(__has_feature)
# define __has_feature(x) 0
#endif
#if !defined(__has_warning)
# define __has_warning(x) 0
#endif

#if __has_include(<swift/objc-prologue.h>)
# include <swift/objc-prologue.h>
#endif

#pragma clang diagnostic ignored "-Wauto-import"
#include <Foundation/Foundation.h>
#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>

#if !defined(SWIFT_TYPEDEFS)
# define SWIFT_TYPEDEFS 1
# if __has_include(<uchar.h>)
#  include <uchar.h>
# elif !defined(__cplusplus)
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
typedef unsigned int swift_uint2  __attribute__((__ext_vector_type__(2)));
typedef unsigned int swift_uint3  __attribute__((__ext_vector_type__(3)));
typedef unsigned int swift_uint4  __attribute__((__ext_vector_type__(4)));
#endif

#if !defined(SWIFT_PASTE)
# define SWIFT_PASTE_HELPER(x, y) x##y
# define SWIFT_PASTE(x, y) SWIFT_PASTE_HELPER(x, y)
#endif
#if !defined(SWIFT_METATYPE)
# define SWIFT_METATYPE(X) Class
#endif
#if !defined(SWIFT_CLASS_PROPERTY)
# if __has_feature(objc_class_property)
#  define SWIFT_CLASS_PROPERTY(...) __VA_ARGS__
# else
#  define SWIFT_CLASS_PROPERTY(...)
# endif
#endif

#if __has_attribute(objc_runtime_name)
# define SWIFT_RUNTIME_NAME(X) __attribute__((objc_runtime_name(X)))
#else
# define SWIFT_RUNTIME_NAME(X)
#endif
#if __has_attribute(swift_name)
# define SWIFT_COMPILE_NAME(X) __attribute__((swift_name(X)))
#else
# define SWIFT_COMPILE_NAME(X)
#endif
#if __has_attribute(objc_method_family)
# define SWIFT_METHOD_FAMILY(X) __attribute__((objc_method_family(X)))
#else
# define SWIFT_METHOD_FAMILY(X)
#endif
#if __has_attribute(noescape)
# define SWIFT_NOESCAPE __attribute__((noescape))
#else
# define SWIFT_NOESCAPE
#endif
#if __has_attribute(ns_consumed)
# define SWIFT_RELEASES_ARGUMENT __attribute__((ns_consumed))
#else
# define SWIFT_RELEASES_ARGUMENT
#endif
#if __has_attribute(warn_unused_result)
# define SWIFT_WARN_UNUSED_RESULT __attribute__((warn_unused_result))
#else
# define SWIFT_WARN_UNUSED_RESULT
#endif
#if __has_attribute(noreturn)
# define SWIFT_NORETURN __attribute__((noreturn))
#else
# define SWIFT_NORETURN
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
# if __has_attribute(objc_subclassing_restricted)
#  define SWIFT_CLASS(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) __attribute__((objc_subclassing_restricted)) SWIFT_CLASS_EXTRA
#  define SWIFT_CLASS_NAMED(SWIFT_NAME) __attribute__((objc_subclassing_restricted)) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
# else
#  define SWIFT_CLASS(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
#  define SWIFT_CLASS_NAMED(SWIFT_NAME) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
# endif
#endif
#if !defined(SWIFT_RESILIENT_CLASS)
# if __has_attribute(objc_class_stub)
#  define SWIFT_RESILIENT_CLASS(SWIFT_NAME) SWIFT_CLASS(SWIFT_NAME) __attribute__((objc_class_stub))
#  define SWIFT_RESILIENT_CLASS_NAMED(SWIFT_NAME) __attribute__((objc_class_stub)) SWIFT_CLASS_NAMED(SWIFT_NAME)
# else
#  define SWIFT_RESILIENT_CLASS(SWIFT_NAME) SWIFT_CLASS(SWIFT_NAME)
#  define SWIFT_RESILIENT_CLASS_NAMED(SWIFT_NAME) SWIFT_CLASS_NAMED(SWIFT_NAME)
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
# if __has_attribute(objc_designated_initializer)
#  define OBJC_DESIGNATED_INITIALIZER __attribute__((objc_designated_initializer))
# else
#  define OBJC_DESIGNATED_INITIALIZER
# endif
#endif
#if !defined(SWIFT_ENUM_ATTR)
# if defined(__has_attribute) && __has_attribute(enum_extensibility)
#  define SWIFT_ENUM_ATTR(_extensibility) __attribute__((enum_extensibility(_extensibility)))
# else
#  define SWIFT_ENUM_ATTR(_extensibility)
# endif
#endif
#if !defined(SWIFT_ENUM)
# define SWIFT_ENUM(_type, _name, _extensibility) enum _name : _type _name; enum SWIFT_ENUM_ATTR(_extensibility) SWIFT_ENUM_EXTRA _name : _type
# if __has_feature(generalized_swift_name)
#  define SWIFT_ENUM_NAMED(_type, _name, SWIFT_NAME, _extensibility) enum _name : _type _name SWIFT_COMPILE_NAME(SWIFT_NAME); enum SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_ENUM_ATTR(_extensibility) SWIFT_ENUM_EXTRA _name : _type
# else
#  define SWIFT_ENUM_NAMED(_type, _name, SWIFT_NAME, _extensibility) SWIFT_ENUM(_type, _name, _extensibility)
# endif
#endif
#if !defined(SWIFT_UNAVAILABLE)
# define SWIFT_UNAVAILABLE __attribute__((unavailable))
#endif
#if !defined(SWIFT_UNAVAILABLE_MSG)
# define SWIFT_UNAVAILABLE_MSG(msg) __attribute__((unavailable(msg)))
#endif
#if !defined(SWIFT_AVAILABILITY)
# define SWIFT_AVAILABILITY(plat, ...) __attribute__((availability(plat, __VA_ARGS__)))
#endif
#if !defined(SWIFT_WEAK_IMPORT)
# define SWIFT_WEAK_IMPORT __attribute__((weak_import))
#endif
#if !defined(SWIFT_DEPRECATED)
# define SWIFT_DEPRECATED __attribute__((deprecated))
#endif
#if !defined(SWIFT_DEPRECATED_MSG)
# define SWIFT_DEPRECATED_MSG(...) __attribute__((deprecated(__VA_ARGS__)))
#endif
#if __has_feature(attribute_diagnose_if_objc)
# define SWIFT_DEPRECATED_OBJC(Msg) __attribute__((diagnose_if(1, Msg, "warning")))
#else
# define SWIFT_DEPRECATED_OBJC(Msg) SWIFT_DEPRECATED_MSG(Msg)
#endif
#if !defined(IBSegueAction)
# define IBSegueAction
#endif
#if __has_feature(modules)
#if __has_warning("-Watimport-in-framework-header")
#pragma clang diagnostic ignored "-Watimport-in-framework-header"
#endif
@import ObjectiveC;
@import UIKit;
#endif

#pragma clang diagnostic ignored "-Wproperty-attribute-mismatch"
#pragma clang diagnostic ignored "-Wduplicate-method-arg"
#if __has_warning("-Wpragma-clang-attribute")
# pragma clang diagnostic ignored "-Wpragma-clang-attribute"
#endif
#pragma clang diagnostic ignored "-Wunknown-pragmas"
#pragma clang diagnostic ignored "-Wnullability"

#if __has_attribute(external_source_symbol)
# pragma push_macro("any")
# undef any
# pragma clang attribute push(__attribute__((external_source_symbol(language="Swift", defined_in="ViewControllerPresentationSpy",generated_declaration))), apply_to=any(function,enum,objc_interface,objc_category,objc_protocol))
# pragma pop_macro("any")
#endif

@class UIViewController;
@class UIAlertAction;
@class UIPopoverPresentationController;
@class UITextField;

/// Captures presented UIAlertControllers.
/// Instantiate an AlertVerifier before the execution phase of the test. Then invoke the code to
/// create and present your alert. Information about the alert is then available through the
/// AlertVerifier.
SWIFT_CLASS_NAMED("AlertVerifier")
@interface QCOAlertVerifier : NSObject
/// Number of times present(_:animated:completion:) was called.
@property (nonatomic) NSInteger presentedCount;
@property (nonatomic, strong) UIViewController * _Nullable presentingViewController;
@property (nonatomic) BOOL animated;
@property (nonatomic, copy) NSString * _Nullable title;
@property (nonatomic, copy) NSString * _Nullable message;
@property (nonatomic) UIAlertControllerStyle preferredStyle;
@property (nonatomic, copy) NSArray<UIAlertAction *> * _Nonnull actions;
@property (nonatomic, strong) UIAlertAction * _Nullable preferredAction;
@property (nonatomic, strong) UIPopoverPresentationController * _Nullable popover;
@property (nonatomic, copy) NSArray<UITextField *> * _Nullable textFields;
/// Production code completion handler passed to present(_:animated:completion:).
@property (nonatomic, copy) void (^ _Nullable capturedCompletion)(void);
/// Test code can provide its own completion handler to fulfill XCTestExpectations.
@property (nonatomic, copy) void (^ _Nullable testCompletion)(void);
/// Initializes a newly allocated verifier.
/// Instantiating an AlertVerifier swizzles UIViewController, UIAlertController, and
/// UIAlertAction. They remain swizzled until the AlertVerifier is deallocated. Only one
/// AlertVerifier may exist at a time, and none may be created while a PresentationVerifier
/// exists. (This is because they both swizzle UIViewController.)
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
/// Executes the action for the button with the specified title.
/// Throws an exception (or returns an error in ObjC) if no button with given title is found.
- (BOOL)executeActionForButton:(NSString * _Nonnull)title andReturnError:(NSError * _Nullable * _Nullable)error;
@end






SWIFT_CLASS_NAMED("ClosureContainer")
@interface QCOClosureContainer : NSObject
- (nonnull instancetype)initWithClosure:(void (^ _Nullable)(void))closure OBJC_DESIGNATED_INITIALIZER;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
+ (nonnull instancetype)new SWIFT_UNAVAILABLE_MSG("-init is unavailable");
@end


/// Captures dismissed view controllers.
/// Instantiate a DismissalVerifier before the execution phase of the test. Then invoke the code to
/// dismiss your view controller. Information about the dismissal is then available through the
/// DismissalVerifier.
SWIFT_CLASS_NAMED("DismissalVerifier")
@interface QCODismissalVerifier : NSObject
/// Number of times dismiss(_:completion:) was called.
@property (nonatomic) NSInteger dismissedCount;
@property (nonatomic, strong) UIViewController * _Nullable dismissedViewController;
@property (nonatomic) BOOL animated;
/// Production code completion handler passed to dismiss(_:completion:).
@property (nonatomic, copy) void (^ _Nullable capturedCompletion)(void);
/// Test code can provide its own completion handler to fulfill XCTestExpectations.
@property (nonatomic, copy) void (^ _Nullable testCompletion)(void);
/// Initializes a newly allocated verifier.
/// Instantiating a DismissalVerifier swizzles UIViewController. It remains swizzled until the
/// DismissalVerifier is deallocated. Only one DismissalVerifier may exist at a time.
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end




/// Captures presented view controllers.
/// Instantiate a PresentationVerifier before the execution phase of the test. Then invoke the code
/// to create and present your view controller. Information about the presentation is then available
/// through the PresentationVerifier.
SWIFT_CLASS_NAMED("PresentationVerifier")
@interface QCOPresentationVerifier : NSObject
/// Number of times present(_:animated:completion:) was called.
@property (nonatomic) NSInteger presentedCount;
@property (nonatomic, strong) UIViewController * _Nullable presentedViewController;
@property (nonatomic, strong) UIViewController * _Nullable presentingViewController;
@property (nonatomic) BOOL animated;
/// Production code completion handler passed to present(_:animated:completion:).
@property (nonatomic, copy) void (^ _Nullable capturedCompletion)(void);
/// Test code can provide its own completion handler to fulfill XCTestExpectations.
@property (nonatomic, copy) void (^ _Nullable testCompletion)(void);
/// Initializes a newly allocated verifier.
/// Instantiating a PresentationVerifier swizzles UIViewController. It remains swizzled until
/// the PresentationVerifier is deallocated. Only one PresentationVerifier may exist at a time,
/// and none may be created while an AlertVerifier exists. (This is because they both swizzle
/// UIViewController.)
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end



#if __has_attribute(external_source_symbol)
# pragma clang attribute pop
#endif
#pragma clang diagnostic pop

#endif

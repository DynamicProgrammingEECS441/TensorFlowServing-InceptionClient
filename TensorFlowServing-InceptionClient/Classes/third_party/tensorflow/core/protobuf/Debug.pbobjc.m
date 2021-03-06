// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: tensorflow/core/protobuf/debug.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers_RuntimeSupport.h>
#else
 #import "GPBProtocolBuffers_RuntimeSupport.h"
#endif

 #import "tensorflow/core/protobuf/Debug.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - DebugRoot

@implementation DebugRoot

// No extensions in the file and no imports, so no need to generate
// +extensionRegistry.

@end

#pragma mark - DebugRoot_FileDescriptor

static GPBFileDescriptor *DebugRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"tensorflow"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - DebugTensorWatch

@implementation DebugTensorWatch

@dynamic nodeName;
@dynamic outputSlot;
@dynamic debugOpsArray, debugOpsArray_Count;
@dynamic debugUrlsArray, debugUrlsArray_Count;
@dynamic tolerateDebugOpCreationFailures;

typedef struct DebugTensorWatch__storage_ {
  uint32_t _has_storage_[1];
  int32_t outputSlot;
  NSString *nodeName;
  NSMutableArray *debugOpsArray;
  NSMutableArray *debugUrlsArray;
} DebugTensorWatch__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "nodeName",
        .dataTypeSpecific.className = NULL,
        .number = DebugTensorWatch_FieldNumber_NodeName,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(DebugTensorWatch__storage_, nodeName),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "outputSlot",
        .dataTypeSpecific.className = NULL,
        .number = DebugTensorWatch_FieldNumber_OutputSlot,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(DebugTensorWatch__storage_, outputSlot),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "debugOpsArray",
        .dataTypeSpecific.className = NULL,
        .number = DebugTensorWatch_FieldNumber_DebugOpsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(DebugTensorWatch__storage_, debugOpsArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "debugUrlsArray",
        .dataTypeSpecific.className = NULL,
        .number = DebugTensorWatch_FieldNumber_DebugUrlsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(DebugTensorWatch__storage_, debugUrlsArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "tolerateDebugOpCreationFailures",
        .dataTypeSpecific.className = NULL,
        .number = DebugTensorWatch_FieldNumber_TolerateDebugOpCreationFailures,
        .hasIndex = 2,
        .offset = 3,  // Stored in _has_storage_ to save space.
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBool,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[DebugTensorWatch class]
                                     rootClass:[DebugRoot class]
                                          file:DebugRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(DebugTensorWatch__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - DebugOptions

@implementation DebugOptions

@dynamic debugTensorWatchOptsArray, debugTensorWatchOptsArray_Count;
@dynamic globalStep;

typedef struct DebugOptions__storage_ {
  uint32_t _has_storage_[1];
  NSMutableArray *debugTensorWatchOptsArray;
  int64_t globalStep;
} DebugOptions__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "debugTensorWatchOptsArray",
        .dataTypeSpecific.className = GPBStringifySymbol(DebugTensorWatch),
        .number = DebugOptions_FieldNumber_DebugTensorWatchOptsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(DebugOptions__storage_, debugTensorWatchOptsArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "globalStep",
        .dataTypeSpecific.className = NULL,
        .number = DebugOptions_FieldNumber_GlobalStep,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(DebugOptions__storage_, globalStep),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt64,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[DebugOptions class]
                                     rootClass:[DebugRoot class]
                                          file:DebugRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(DebugOptions__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)

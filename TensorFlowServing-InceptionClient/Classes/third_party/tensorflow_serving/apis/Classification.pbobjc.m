// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: tensorflow_serving/apis/classification.proto

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

 #import "tensorflow_serving/apis/Classification.pbobjc.h"
 #import "tensorflow_serving/apis/Input.pbobjc.h"
 #import "tensorflow_serving/apis/Model.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - XTDSClassificationRoot

@implementation XTDSClassificationRoot

// No extensions in the file and none of the imports (direct or indirect)
// defined extensions, so no need to generate +extensionRegistry.

@end

#pragma mark - XTDSClassificationRoot_FileDescriptor

static GPBFileDescriptor *XTDSClassificationRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"tensorflow.serving"
                                                 objcPrefix:@"XTDS"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - XTDSClass

@implementation XTDSClass

@dynamic label;
@dynamic score;

typedef struct XTDSClass__storage_ {
  uint32_t _has_storage_[1];
  float score;
  NSString *label;
} XTDSClass__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "label",
        .dataTypeSpecific.className = NULL,
        .number = XTDSClass_FieldNumber_Label,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(XTDSClass__storage_, label),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "score",
        .dataTypeSpecific.className = NULL,
        .number = XTDSClass_FieldNumber_Score,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(XTDSClass__storage_, score),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeFloat,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[XTDSClass class]
                                     rootClass:[XTDSClassificationRoot class]
                                          file:XTDSClassificationRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(XTDSClass__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - XTDSClassifications

@implementation XTDSClassifications

@dynamic classesArray, classesArray_Count;

typedef struct XTDSClassifications__storage_ {
  uint32_t _has_storage_[1];
  NSMutableArray *classesArray;
} XTDSClassifications__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "classesArray",
        .dataTypeSpecific.className = GPBStringifySymbol(XTDSClass),
        .number = XTDSClassifications_FieldNumber_ClassesArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(XTDSClassifications__storage_, classesArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[XTDSClassifications class]
                                     rootClass:[XTDSClassificationRoot class]
                                          file:XTDSClassificationRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(XTDSClassifications__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - XTDSClassificationResult

@implementation XTDSClassificationResult

@dynamic classificationsArray, classificationsArray_Count;

typedef struct XTDSClassificationResult__storage_ {
  uint32_t _has_storage_[1];
  NSMutableArray *classificationsArray;
} XTDSClassificationResult__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "classificationsArray",
        .dataTypeSpecific.className = GPBStringifySymbol(XTDSClassifications),
        .number = XTDSClassificationResult_FieldNumber_ClassificationsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(XTDSClassificationResult__storage_, classificationsArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[XTDSClassificationResult class]
                                     rootClass:[XTDSClassificationRoot class]
                                          file:XTDSClassificationRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(XTDSClassificationResult__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - XTDSClassificationRequest

@implementation XTDSClassificationRequest

@dynamic hasModelSpec, modelSpec;
@dynamic hasInput, input;

typedef struct XTDSClassificationRequest__storage_ {
  uint32_t _has_storage_[1];
  ModelSpec *modelSpec;
  Input *input;
} XTDSClassificationRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "modelSpec",
        .dataTypeSpecific.className = GPBStringifySymbol(ModelSpec),
        .number = XTDSClassificationRequest_FieldNumber_ModelSpec,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(XTDSClassificationRequest__storage_, modelSpec),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "input",
        .dataTypeSpecific.className = GPBStringifySymbol(Input),
        .number = XTDSClassificationRequest_FieldNumber_Input,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(XTDSClassificationRequest__storage_, input),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[XTDSClassificationRequest class]
                                     rootClass:[XTDSClassificationRoot class]
                                          file:XTDSClassificationRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(XTDSClassificationRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - XTDSClassificationResponse

@implementation XTDSClassificationResponse

@dynamic hasResult, result;

typedef struct XTDSClassificationResponse__storage_ {
  uint32_t _has_storage_[1];
  XTDSClassificationResult *result;
} XTDSClassificationResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "result",
        .dataTypeSpecific.className = GPBStringifySymbol(XTDSClassificationResult),
        .number = XTDSClassificationResponse_FieldNumber_Result,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(XTDSClassificationResponse__storage_, result),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[XTDSClassificationResponse class]
                                     rootClass:[XTDSClassificationRoot class]
                                          file:XTDSClassificationRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(XTDSClassificationResponse__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)

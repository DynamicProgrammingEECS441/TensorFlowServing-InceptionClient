// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: tensorflow/core/framework/graph.proto

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

 #import "tensorflow/core/framework/Graph.pbobjc.h"
 #import "tensorflow/core/framework/NodeDef.pbobjc.h"
 #import "tensorflow/core/framework/Function.pbobjc.h"
 #import "tensorflow/core/framework/Versions.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - GraphRoot

@implementation GraphRoot

// No extensions in the file and none of the imports (direct or indirect)
// defined extensions, so no need to generate +extensionRegistry.

@end

#pragma mark - GraphRoot_FileDescriptor

static GPBFileDescriptor *GraphRoot_FileDescriptor(void) {
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

#pragma mark - GraphDef

@implementation GraphDef

@dynamic nodeArray, nodeArray_Count;
@dynamic hasVersions, versions;
@dynamic version;
@dynamic hasLibrary, library;

typedef struct GraphDef__storage_ {
  uint32_t _has_storage_[1];
  int32_t version;
  NSMutableArray *nodeArray;
  FunctionDefLibrary *library;
  VersionDef *versions;
} GraphDef__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "nodeArray",
        .dataTypeSpecific.className = GPBStringifySymbol(NodeDef),
        .number = GraphDef_FieldNumber_NodeArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(GraphDef__storage_, nodeArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "library",
        .dataTypeSpecific.className = GPBStringifySymbol(FunctionDefLibrary),
        .number = GraphDef_FieldNumber_Library,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(GraphDef__storage_, library),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "version",
        .dataTypeSpecific.className = NULL,
        .number = GraphDef_FieldNumber_Version,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GraphDef__storage_, version),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "versions",
        .dataTypeSpecific.className = GPBStringifySymbol(VersionDef),
        .number = GraphDef_FieldNumber_Versions,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GraphDef__storage_, versions),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GraphDef class]
                                     rootClass:[GraphRoot class]
                                          file:GraphRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GraphDef__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
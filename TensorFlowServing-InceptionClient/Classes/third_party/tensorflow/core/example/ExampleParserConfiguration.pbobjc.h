// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: tensorflow/core/example/example_parser_configuration.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers.h>
#else
 #import "GPBProtocolBuffers.h"
#endif

#if GOOGLE_PROTOBUF_OBJC_VERSION < 30002
#error This file was generated by a newer version of protoc which is incompatible with your Protocol Buffer library sources.
#endif
#if 30002 < GOOGLE_PROTOBUF_OBJC_MIN_SUPPORTED_VERSION
#error This file was generated by an older version of protoc which is incompatible with your Protocol Buffer library sources.
#endif

// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

CF_EXTERN_C_BEGIN

@class FeatureConfiguration;
@class FixedLenFeatureProto;
@class TensorProto;
@class TensorShapeProto;
@class VarLenFeatureProto;
GPB_ENUM_FWD_DECLARE(DataType);

NS_ASSUME_NONNULL_BEGIN

#pragma mark - ExampleParserConfigurationRoot

/**
 * Exposes the extension registry for this file.
 *
 * The base class provides:
 * @code
 *   + (GPBExtensionRegistry *)extensionRegistry;
 * @endcode
 * which is a @c GPBExtensionRegistry that includes all the extensions defined by
 * this file and all files that it depends on.
 **/
@interface ExampleParserConfigurationRoot : GPBRootObject
@end

#pragma mark - VarLenFeatureProto

typedef GPB_ENUM(VarLenFeatureProto_FieldNumber) {
  VarLenFeatureProto_FieldNumber_Dtype = 1,
  VarLenFeatureProto_FieldNumber_ValuesOutputTensorName = 2,
  VarLenFeatureProto_FieldNumber_IndicesOutputTensorName = 3,
  VarLenFeatureProto_FieldNumber_ShapesOutputTensorName = 4,
};

@interface VarLenFeatureProto : GPBMessage

@property(nonatomic, readwrite) enum DataType dtype;

@property(nonatomic, readwrite, copy, null_resettable) NSString *valuesOutputTensorName;

@property(nonatomic, readwrite, copy, null_resettable) NSString *indicesOutputTensorName;

@property(nonatomic, readwrite, copy, null_resettable) NSString *shapesOutputTensorName;

@end

/**
 * Fetches the raw value of a @c VarLenFeatureProto's @c dtype property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t VarLenFeatureProto_Dtype_RawValue(VarLenFeatureProto *message);
/**
 * Sets the raw value of an @c VarLenFeatureProto's @c dtype property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetVarLenFeatureProto_Dtype_RawValue(VarLenFeatureProto *message, int32_t value);

#pragma mark - FixedLenFeatureProto

typedef GPB_ENUM(FixedLenFeatureProto_FieldNumber) {
  FixedLenFeatureProto_FieldNumber_Dtype = 1,
  FixedLenFeatureProto_FieldNumber_Shape = 2,
  FixedLenFeatureProto_FieldNumber_DefaultValue = 3,
  FixedLenFeatureProto_FieldNumber_ValuesOutputTensorName = 4,
};

@interface FixedLenFeatureProto : GPBMessage

@property(nonatomic, readwrite) enum DataType dtype;

@property(nonatomic, readwrite, strong, null_resettable) TensorShapeProto *shape;
/** Test to see if @c shape has been set. */
@property(nonatomic, readwrite) BOOL hasShape;

@property(nonatomic, readwrite, strong, null_resettable) TensorProto *defaultValue;
/** Test to see if @c defaultValue has been set. */
@property(nonatomic, readwrite) BOOL hasDefaultValue;

@property(nonatomic, readwrite, copy, null_resettable) NSString *valuesOutputTensorName;

@end

/**
 * Fetches the raw value of a @c FixedLenFeatureProto's @c dtype property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t FixedLenFeatureProto_Dtype_RawValue(FixedLenFeatureProto *message);
/**
 * Sets the raw value of an @c FixedLenFeatureProto's @c dtype property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetFixedLenFeatureProto_Dtype_RawValue(FixedLenFeatureProto *message, int32_t value);

#pragma mark - FeatureConfiguration

typedef GPB_ENUM(FeatureConfiguration_FieldNumber) {
  FeatureConfiguration_FieldNumber_FixedLenFeature = 1,
  FeatureConfiguration_FieldNumber_VarLenFeature = 2,
};

typedef GPB_ENUM(FeatureConfiguration_Config_OneOfCase) {
  FeatureConfiguration_Config_OneOfCase_GPBUnsetOneOfCase = 0,
  FeatureConfiguration_Config_OneOfCase_FixedLenFeature = 1,
  FeatureConfiguration_Config_OneOfCase_VarLenFeature = 2,
};

@interface FeatureConfiguration : GPBMessage

@property(nonatomic, readonly) FeatureConfiguration_Config_OneOfCase configOneOfCase;

@property(nonatomic, readwrite, strong, null_resettable) FixedLenFeatureProto *fixedLenFeature;

@property(nonatomic, readwrite, strong, null_resettable) VarLenFeatureProto *varLenFeature;

@end

/**
 * Clears whatever value was set for the oneof 'config'.
 **/
void FeatureConfiguration_ClearConfigOneOfCase(FeatureConfiguration *message);

#pragma mark - ExampleParserConfiguration

typedef GPB_ENUM(ExampleParserConfiguration_FieldNumber) {
  ExampleParserConfiguration_FieldNumber_FeatureMap = 1,
};

@interface ExampleParserConfiguration : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) NSMutableDictionary<NSString*, FeatureConfiguration*> *featureMap;
/** The number of items in @c featureMap without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger featureMap_Count;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)

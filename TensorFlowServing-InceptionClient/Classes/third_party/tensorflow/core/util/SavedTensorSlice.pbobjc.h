// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: tensorflow/core/util/saved_tensor_slice.proto

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

@class SavedSlice;
@class SavedSliceMeta;
@class SavedTensorSliceMeta;
@class TensorProto;
@class TensorShapeProto;
@class TensorSliceProto;
@class VersionDef;
GPB_ENUM_FWD_DECLARE(DataType);

NS_ASSUME_NONNULL_BEGIN

#pragma mark - SavedTensorSliceRoot

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
@interface SavedTensorSliceRoot : GPBRootObject
@end

#pragma mark - SavedSliceMeta

typedef GPB_ENUM(SavedSliceMeta_FieldNumber) {
  SavedSliceMeta_FieldNumber_Name = 1,
  SavedSliceMeta_FieldNumber_Shape = 2,
  SavedSliceMeta_FieldNumber_Type = 3,
  SavedSliceMeta_FieldNumber_SliceArray = 4,
};

/**
 * Metadata describing the set of slices of the same tensor saved in a
 * checkpoint file.
 **/
@interface SavedSliceMeta : GPBMessage

/** Name of the tensor. */
@property(nonatomic, readwrite, copy, null_resettable) NSString *name;

/** Shape of the tensor */
@property(nonatomic, readwrite, strong, null_resettable) TensorShapeProto *shape;
/** Test to see if @c shape has been set. */
@property(nonatomic, readwrite) BOOL hasShape;

/** Type of the tensor */
@property(nonatomic, readwrite) enum DataType type;

/** Explicit list of slices saved in the checkpoint file. */
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<TensorSliceProto*> *sliceArray;
/** The number of items in @c sliceArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger sliceArray_Count;

@end

/**
 * Fetches the raw value of a @c SavedSliceMeta's @c type property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t SavedSliceMeta_Type_RawValue(SavedSliceMeta *message);
/**
 * Sets the raw value of an @c SavedSliceMeta's @c type property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetSavedSliceMeta_Type_RawValue(SavedSliceMeta *message, int32_t value);

#pragma mark - SavedTensorSliceMeta

typedef GPB_ENUM(SavedTensorSliceMeta_FieldNumber) {
  SavedTensorSliceMeta_FieldNumber_TensorArray = 1,
  SavedTensorSliceMeta_FieldNumber_Versions = 2,
};

/**
 * Metadata describing the set of tensor slices saved in a checkpoint file.
 * It is always stored at the beginning of each checkpoint file.
 **/
@interface SavedTensorSliceMeta : GPBMessage

/** Each SavedSliceMeta describes the slices for one tensor. */
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<SavedSliceMeta*> *tensorArray;
/** The number of items in @c tensorArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger tensorArray_Count;

/**
 * Compatibility version of this checkpoint.  See core/public/version.h
 * for version history.
 **/
@property(nonatomic, readwrite, strong, null_resettable) VersionDef *versions;
/** Test to see if @c versions has been set. */
@property(nonatomic, readwrite) BOOL hasVersions;

@end

#pragma mark - SavedSlice

typedef GPB_ENUM(SavedSlice_FieldNumber) {
  SavedSlice_FieldNumber_Name = 1,
  SavedSlice_FieldNumber_Slice = 2,
  SavedSlice_FieldNumber_Data_p = 3,
};

/**
 * Saved tensor slice: it stores the name of the tensors, the slice, and the
 * raw data.
 **/
@interface SavedSlice : GPBMessage

/**
 * Name of the tensor that this slice belongs to. This must be identical to
 * the name used to encode the key for this record.
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSString *name;

/**
 * Extent of the slice.  Must have one entry for each of the dimension of the
 * tensor that this slice belongs to.
 **/
@property(nonatomic, readwrite, strong, null_resettable) TensorSliceProto *slice;
/** Test to see if @c slice has been set. */
@property(nonatomic, readwrite) BOOL hasSlice;

/**
 * The raw data of the slice is stored as a TensorProto. Only raw data are
 * stored (we don't fill in fields such as dtype or tensor_shape).
 **/
@property(nonatomic, readwrite, strong, null_resettable) TensorProto *data_p;
/** Test to see if @c data_p has been set. */
@property(nonatomic, readwrite) BOOL hasData_p;

@end

#pragma mark - SavedTensorSlices

typedef GPB_ENUM(SavedTensorSlices_FieldNumber) {
  SavedTensorSlices_FieldNumber_Meta = 1,
  SavedTensorSlices_FieldNumber_Data_p = 2,
};

/**
 * Each record in a v3 checkpoint file is a serialized SavedTensorSlices
 * message.
 **/
@interface SavedTensorSlices : GPBMessage

/**
 * This is only present at the first item of each checkpoint file and serves
 * as a table of contents, listing all the tensor slices saved in this file.
 **/
@property(nonatomic, readwrite, strong, null_resettable) SavedTensorSliceMeta *meta;
/** Test to see if @c meta has been set. */
@property(nonatomic, readwrite) BOOL hasMeta;

/** This exists in all but the first item of each checkpoint file. */
@property(nonatomic, readwrite, strong, null_resettable) SavedSlice *data_p;
/** Test to see if @c data_p has been set. */
@property(nonatomic, readwrite) BOOL hasData_p;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
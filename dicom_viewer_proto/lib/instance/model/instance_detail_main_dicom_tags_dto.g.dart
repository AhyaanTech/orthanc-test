// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance_detail_main_dicom_tags_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InstanceMainDicomTagsDto _$$_InstanceMainDicomTagsDtoFromJson(
        Map<String, dynamic> json) =>
    _$_InstanceMainDicomTagsDto(
      acquisitionNumber: Option<String>.fromJson(json['AcquisitionNumber']),
      bitsAllocated: Option<String>.fromJson(json['BitsAllocated']),
      bitsStored: Option<String>.fromJson(json['BitsStored']),
      columns: Option<String>.fromJson(json['Columns']),
      contentDate: Option<String>.fromJson(json['ContentDate']),
      contentTime: Option<String>.fromJson(json['ContentTime']),
      imageOrientationPatient:
          Option<String>.fromJson(json['ImageOrientationPatient']),
      imagePositionPatient:
          Option<String>.fromJson(json['ImagePositionPatient']),
      imageType: Option<String>.fromJson(json['ImageType']),
      instanceCreationDate:
          Option<String>.fromJson(json['InstanceCreationDate']),
      instanceCreationTime:
          Option<String>.fromJson(json['InstanceCreationTime']),
      instanceNumber: Option<String>.fromJson(json['InstanceNumber']),
      photometricInterpretation:
          Option<String>.fromJson(json['PhotometricInterpretation']),
      pixelRepresentation: Option<String>.fromJson(json['PixelRepresentation']),
      pixelSpacing: Option<String>.fromJson(json['PixelSpacing']),
      rescaleIntercept: Option<String>.fromJson(json['RescaleIntercept']),
      rescaleSlope: Option<String>.fromJson(json['RescaleSlope']),
      rows: Option<String>.fromJson(json['Rows']),
      sOPClassUID: Option<String>.fromJson(json['SOPClassUID']),
      sOPInstanceUID: Option<String>.fromJson(json['SOPInstanceUID']),
      sliceThickness: Option<String>.fromJson(json['SliceThickness']),
      specificCharacterSet:
          Option<String>.fromJson(json['SpecificCharacterSet']),
      windowCenter: Option<String>.fromJson(json['WindowCenter']),
      windowWidth: Option<String>.fromJson(json['WindowWidth']),
    );

Map<String, dynamic> _$$_InstanceMainDicomTagsDtoToJson(
        _$_InstanceMainDicomTagsDto instance) =>
    <String, dynamic>{
      'AcquisitionNumber': instance.acquisitionNumber.toJson(
        (value) => value,
      ),
      'BitsAllocated': instance.bitsAllocated.toJson(
        (value) => value,
      ),
      'BitsStored': instance.bitsStored.toJson(
        (value) => value,
      ),
      'Columns': instance.columns.toJson(
        (value) => value,
      ),
      'ContentDate': instance.contentDate.toJson(
        (value) => value,
      ),
      'ContentTime': instance.contentTime.toJson(
        (value) => value,
      ),
      'ImageOrientationPatient': instance.imageOrientationPatient.toJson(
        (value) => value,
      ),
      'ImagePositionPatient': instance.imagePositionPatient.toJson(
        (value) => value,
      ),
      'ImageType': instance.imageType.toJson(
        (value) => value,
      ),
      'InstanceCreationDate': instance.instanceCreationDate.toJson(
        (value) => value,
      ),
      'InstanceCreationTime': instance.instanceCreationTime.toJson(
        (value) => value,
      ),
      'InstanceNumber': instance.instanceNumber.toJson(
        (value) => value,
      ),
      'PhotometricInterpretation': instance.photometricInterpretation.toJson(
        (value) => value,
      ),
      'PixelRepresentation': instance.pixelRepresentation.toJson(
        (value) => value,
      ),
      'PixelSpacing': instance.pixelSpacing.toJson(
        (value) => value,
      ),
      'RescaleIntercept': instance.rescaleIntercept.toJson(
        (value) => value,
      ),
      'RescaleSlope': instance.rescaleSlope.toJson(
        (value) => value,
      ),
      'Rows': instance.rows.toJson(
        (value) => value,
      ),
      'SOPClassUID': instance.sOPClassUID.toJson(
        (value) => value,
      ),
      'SOPInstanceUID': instance.sOPInstanceUID.toJson(
        (value) => value,
      ),
      'SliceThickness': instance.sliceThickness.toJson(
        (value) => value,
      ),
      'SpecificCharacterSet': instance.specificCharacterSet.toJson(
        (value) => value,
      ),
      'WindowCenter': instance.windowCenter.toJson(
        (value) => value,
      ),
      'WindowWidth': instance.windowWidth.toJson(
        (value) => value,
      ),
    };

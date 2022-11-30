// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance_detail_main_dicom_tags_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InstanceDetailMainDicomTagsDto _$$_InstanceDetailMainDicomTagsDtoFromJson(
        Map<String, dynamic> json) =>
    _$_InstanceDetailMainDicomTagsDto(
      acquisitionNumber: Option<String>.fromJson(json['acquisitionNumber']),
      bitsAllocated: Option<String>.fromJson(json['bitsAllocated']),
      bitsStored: Option<String>.fromJson(json['bitsStored']),
      columns: Option<String>.fromJson(json['columns']),
      contentDate: Option<String>.fromJson(json['contentDate']),
      contentTime: Option<String>.fromJson(json['contentTime']),
      imageOrientationPatient:
          Option<String>.fromJson(json['imageOrientationPatient']),
      imagePositionPatient:
          Option<String>.fromJson(json['imagePositionPatient']),
      imageType: Option<String>.fromJson(json['imageType']),
      instanceCreationDate:
          Option<String>.fromJson(json['instanceCreationDate']),
      instanceCreationTime:
          Option<String>.fromJson(json['instanceCreationTime']),
      instanceNumber: Option<String>.fromJson(json['instanceNumber']),
      photometricInterpretation:
          Option<String>.fromJson(json['photometricInterpretation']),
      pixelRepresentation: Option<String>.fromJson(json['pixelRepresentation']),
      pixelSpacing: Option<String>.fromJson(json['pixelSpacing']),
      rescaleIntercept: Option<String>.fromJson(json['rescaleIntercept']),
      rescaleSlope: Option<String>.fromJson(json['rescaleSlope']),
      rows: Option<String>.fromJson(json['rows']),
      sOPClassUID: Option<String>.fromJson(json['sOPClassUID']),
      sOPInstanceUID: Option<String>.fromJson(json['sOPInstanceUID']),
      sliceThickness: Option<String>.fromJson(json['sliceThickness']),
      specificCharacterSet:
          Option<String>.fromJson(json['specificCharacterSet']),
      windowCenter: Option<String>.fromJson(json['windowCenter']),
      windowWidth: Option<String>.fromJson(json['windowWidth']),
    );

Map<String, dynamic> _$$_InstanceDetailMainDicomTagsDtoToJson(
        _$_InstanceDetailMainDicomTagsDto instance) =>
    <String, dynamic>{
      'acquisitionNumber': instance.acquisitionNumber.toJson(
        (value) => value,
      ),
      'bitsAllocated': instance.bitsAllocated.toJson(
        (value) => value,
      ),
      'bitsStored': instance.bitsStored.toJson(
        (value) => value,
      ),
      'columns': instance.columns.toJson(
        (value) => value,
      ),
      'contentDate': instance.contentDate.toJson(
        (value) => value,
      ),
      'contentTime': instance.contentTime.toJson(
        (value) => value,
      ),
      'imageOrientationPatient': instance.imageOrientationPatient.toJson(
        (value) => value,
      ),
      'imagePositionPatient': instance.imagePositionPatient.toJson(
        (value) => value,
      ),
      'imageType': instance.imageType.toJson(
        (value) => value,
      ),
      'instanceCreationDate': instance.instanceCreationDate.toJson(
        (value) => value,
      ),
      'instanceCreationTime': instance.instanceCreationTime.toJson(
        (value) => value,
      ),
      'instanceNumber': instance.instanceNumber.toJson(
        (value) => value,
      ),
      'photometricInterpretation': instance.photometricInterpretation.toJson(
        (value) => value,
      ),
      'pixelRepresentation': instance.pixelRepresentation.toJson(
        (value) => value,
      ),
      'pixelSpacing': instance.pixelSpacing.toJson(
        (value) => value,
      ),
      'rescaleIntercept': instance.rescaleIntercept.toJson(
        (value) => value,
      ),
      'rescaleSlope': instance.rescaleSlope.toJson(
        (value) => value,
      ),
      'rows': instance.rows.toJson(
        (value) => value,
      ),
      'sOPClassUID': instance.sOPClassUID.toJson(
        (value) => value,
      ),
      'sOPInstanceUID': instance.sOPInstanceUID.toJson(
        (value) => value,
      ),
      'sliceThickness': instance.sliceThickness.toJson(
        (value) => value,
      ),
      'specificCharacterSet': instance.specificCharacterSet.toJson(
        (value) => value,
      ),
      'windowCenter': instance.windowCenter.toJson(
        (value) => value,
      ),
      'windowWidth': instance.windowWidth.toJson(
        (value) => value,
      ),
    };

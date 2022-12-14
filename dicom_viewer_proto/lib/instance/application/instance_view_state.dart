import 'package:dicom_viewer_proto/instance/model/instance_detail_main_dicom_tags_dto.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:ui' as ui;

part 'instance_view_state.freezed.dart';

@freezed
class InstanceViewState with _$InstanceViewState {
  const InstanceViewState._();
  const factory InstanceViewState.fetching() = _Fetching;
  const factory InstanceViewState.rendered(
      InstanceViewStateData instanceState) = _Rendered;
  const factory InstanceViewState.error(String error) = _Error;
  const factory InstanceViewState.rawUi(ui.Image image) = _RawUi;
}

@freezed
class InstanceViewStateData with _$InstanceViewStateData {
  const InstanceViewStateData._();
  const factory InstanceViewStateData({
    required Uint8List imageData,
    @Default(100) int contrast,
    required InstanceDicomTags tags,
  }) = _InstanceViewStateData;
}

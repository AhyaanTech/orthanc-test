import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient_list.freezed.dart';
part 'patient_list.g.dart';

@freezed
class PatientsList with _$PatientsList {
  const PatientsList._();
  const factory PatientsList() = _PatientsList;

  factory PatientsList.fromJson(Map<String, dynamic> json) =>
      _$PatientsListFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';

@freezed
class Weather with _$Weather {
  factory Weather({
    required String success,
    required Result result,
    required Records records,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}

@freezed
class Result with _$Result {
  factory Result({
    @JsonKey(name: 'resource_id') required String resourceId,
    required List<Field> fields,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class Field with _$Field {
  factory Field({
    required String id,
    required String type,
  }) = _Field;

  factory Field.fromJson(Map<String, dynamic> json) => _$FieldFromJson(json);
}

@freezed
class Records with _$Records {
  factory Records({
    @JsonKey(name: 'datasetDescription') required String datasetDescription,
    required List<Location> location,
  }) = _Records;

  factory Records.fromJson(Map<String, dynamic> json) =>
      _$RecordsFromJson(json);
}

@freezed
class Location with _$Location {
  factory Location({
    @JsonKey(name: 'locationName') required String locationName,
    @JsonKey(name: 'weatherElement')
    required List<WeatherElement> weatherElement,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}

@freezed
class WeatherElement with _$WeatherElement {
  factory WeatherElement({
    @JsonKey(name: 'elementName') required String elementName,
    required List<Time> time,
  }) = _WeatherElement;

  factory WeatherElement.fromJson(Map<String, dynamic> json) =>
      _$WeatherElementFromJson(json);
}

@freezed
class Time with _$Time {
  factory Time({
    @JsonKey(name: 'startTime') required String startTime,
    @JsonKey(name: 'endTime') required String endTime,
    required Parameter parameter,
  }) = _Time;

  factory Time.fromJson(Map<String, dynamic> json) => _$TimeFromJson(json);
}

@freezed
class Parameter with _$Parameter {
  factory Parameter({
    @JsonKey(name: 'parameterName') required String parameterName,
    @JsonKey(name: 'parameterValue') String? parameterValue,
    @JsonKey(name: 'parameterUnit') String? parameterUnit,
  }) = _Parameter;

  factory Parameter.fromJson(Map<String, dynamic> json) =>
      _$ParameterFromJson(json);
}

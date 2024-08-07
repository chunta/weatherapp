// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherImpl _$$WeatherImplFromJson(Map<String, dynamic> json) =>
    _$WeatherImpl(
      success: json['success'] as String,
      result: Result.fromJson(json['result'] as Map<String, dynamic>),
      records: Records.fromJson(json['records'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WeatherImplToJson(_$WeatherImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'result': instance.result,
      'records': instance.records,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      resourceId: json['resource_id'] as String,
      fields: (json['fields'] as List<dynamic>)
          .map((e) => Field.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'resource_id': instance.resourceId,
      'fields': instance.fields,
    };

_$FieldImpl _$$FieldImplFromJson(Map<String, dynamic> json) => _$FieldImpl(
      id: json['id'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$$FieldImplToJson(_$FieldImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
    };

_$RecordsImpl _$$RecordsImplFromJson(Map<String, dynamic> json) =>
    _$RecordsImpl(
      datasetDescription: json['datasetDescription'] as String,
      location: (json['location'] as List<dynamic>)
          .map((e) => Location.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RecordsImplToJson(_$RecordsImpl instance) =>
    <String, dynamic>{
      'datasetDescription': instance.datasetDescription,
      'location': instance.location,
    };

_$LocationImpl _$$LocationImplFromJson(Map<String, dynamic> json) =>
    _$LocationImpl(
      locationName: json['locationName'] as String,
      weatherElement: (json['weatherElement'] as List<dynamic>)
          .map((e) => WeatherElement.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$LocationImplToJson(_$LocationImpl instance) =>
    <String, dynamic>{
      'locationName': instance.locationName,
      'weatherElement': instance.weatherElement,
    };

_$WeatherElementImpl _$$WeatherElementImplFromJson(Map<String, dynamic> json) =>
    _$WeatherElementImpl(
      elementName: json['elementName'] as String,
      time: (json['time'] as List<dynamic>)
          .map((e) => Time.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WeatherElementImplToJson(
        _$WeatherElementImpl instance) =>
    <String, dynamic>{
      'elementName': instance.elementName,
      'time': instance.time,
    };

_$TimeImpl _$$TimeImplFromJson(Map<String, dynamic> json) => _$TimeImpl(
      startTime: json['startTime'] as String,
      endTime: json['endTime'] as String,
      parameter: Parameter.fromJson(json['parameter'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TimeImplToJson(_$TimeImpl instance) =>
    <String, dynamic>{
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'parameter': instance.parameter,
    };

_$ParameterImpl _$$ParameterImplFromJson(Map<String, dynamic> json) =>
    _$ParameterImpl(
      parameterName: json['parameterName'] as String,
      parameterValue: json['parameterValue'] as String?,
      parameterUnit: json['parameterUnit'] as String?,
    );

Map<String, dynamic> _$$ParameterImplToJson(_$ParameterImpl instance) =>
    <String, dynamic>{
      'parameterName': instance.parameterName,
      'parameterValue': instance.parameterValue,
      'parameterUnit': instance.parameterUnit,
    };

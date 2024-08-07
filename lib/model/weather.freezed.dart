// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Weather _$WeatherFromJson(Map<String, dynamic> json) {
  return _Weather.fromJson(json);
}

/// @nodoc
mixin _$Weather {
  String get success => throw _privateConstructorUsedError;
  Result get result => throw _privateConstructorUsedError;
  Records get records => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherCopyWith<Weather> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherCopyWith<$Res> {
  factory $WeatherCopyWith(Weather value, $Res Function(Weather) then) =
      _$WeatherCopyWithImpl<$Res, Weather>;
  @useResult
  $Res call({String success, Result result, Records records});

  $ResultCopyWith<$Res> get result;
  $RecordsCopyWith<$Res> get records;
}

/// @nodoc
class _$WeatherCopyWithImpl<$Res, $Val extends Weather>
    implements $WeatherCopyWith<$Res> {
  _$WeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? result = null,
    Object? records = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as String,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result,
      records: null == records
          ? _value.records
          : records // ignore: cast_nullable_to_non_nullable
              as Records,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResultCopyWith<$Res> get result {
    return $ResultCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RecordsCopyWith<$Res> get records {
    return $RecordsCopyWith<$Res>(_value.records, (value) {
      return _then(_value.copyWith(records: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherImplCopyWith<$Res> implements $WeatherCopyWith<$Res> {
  factory _$$WeatherImplCopyWith(
          _$WeatherImpl value, $Res Function(_$WeatherImpl) then) =
      __$$WeatherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String success, Result result, Records records});

  @override
  $ResultCopyWith<$Res> get result;
  @override
  $RecordsCopyWith<$Res> get records;
}

/// @nodoc
class __$$WeatherImplCopyWithImpl<$Res>
    extends _$WeatherCopyWithImpl<$Res, _$WeatherImpl>
    implements _$$WeatherImplCopyWith<$Res> {
  __$$WeatherImplCopyWithImpl(
      _$WeatherImpl _value, $Res Function(_$WeatherImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? result = null,
    Object? records = null,
  }) {
    return _then(_$WeatherImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as String,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result,
      records: null == records
          ? _value.records
          : records // ignore: cast_nullable_to_non_nullable
              as Records,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherImpl implements _Weather {
  _$WeatherImpl(
      {required this.success, required this.result, required this.records});

  factory _$WeatherImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherImplFromJson(json);

  @override
  final String success;
  @override
  final Result result;
  @override
  final Records records;

  @override
  String toString() {
    return 'Weather(success: $success, result: $result, records: $records)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.records, records) || other.records == records));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, result, records);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherImplCopyWith<_$WeatherImpl> get copyWith =>
      __$$WeatherImplCopyWithImpl<_$WeatherImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherImplToJson(
      this,
    );
  }
}

abstract class _Weather implements Weather {
  factory _Weather(
      {required final String success,
      required final Result result,
      required final Records records}) = _$WeatherImpl;

  factory _Weather.fromJson(Map<String, dynamic> json) = _$WeatherImpl.fromJson;

  @override
  String get success;
  @override
  Result get result;
  @override
  Records get records;
  @override
  @JsonKey(ignore: true)
  _$$WeatherImplCopyWith<_$WeatherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  @JsonKey(name: 'resource_id')
  String get resourceId => throw _privateConstructorUsedError;
  List<Field> get fields => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call(
      {@JsonKey(name: 'resource_id') String resourceId, List<Field> fields});
}

/// @nodoc
class _$ResultCopyWithImpl<$Res, $Val extends Result>
    implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceId = null,
    Object? fields = null,
  }) {
    return _then(_value.copyWith(
      resourceId: null == resourceId
          ? _value.resourceId
          : resourceId // ignore: cast_nullable_to_non_nullable
              as String,
      fields: null == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<Field>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResultImplCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$ResultImplCopyWith(
          _$ResultImpl value, $Res Function(_$ResultImpl) then) =
      __$$ResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'resource_id') String resourceId, List<Field> fields});
}

/// @nodoc
class __$$ResultImplCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res, _$ResultImpl>
    implements _$$ResultImplCopyWith<$Res> {
  __$$ResultImplCopyWithImpl(
      _$ResultImpl _value, $Res Function(_$ResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceId = null,
    Object? fields = null,
  }) {
    return _then(_$ResultImpl(
      resourceId: null == resourceId
          ? _value.resourceId
          : resourceId // ignore: cast_nullable_to_non_nullable
              as String,
      fields: null == fields
          ? _value._fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<Field>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl implements _Result {
  _$ResultImpl(
      {@JsonKey(name: 'resource_id') required this.resourceId,
      required final List<Field> fields})
      : _fields = fields;

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

  @override
  @JsonKey(name: 'resource_id')
  final String resourceId;
  final List<Field> _fields;
  @override
  List<Field> get fields {
    if (_fields is EqualUnmodifiableListView) return _fields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fields);
  }

  @override
  String toString() {
    return 'Result(resourceId: $resourceId, fields: $fields)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultImpl &&
            (identical(other.resourceId, resourceId) ||
                other.resourceId == resourceId) &&
            const DeepCollectionEquality().equals(other._fields, _fields));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, resourceId, const DeepCollectionEquality().hash(_fields));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      __$$ResultImplCopyWithImpl<_$ResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultImplToJson(
      this,
    );
  }
}

abstract class _Result implements Result {
  factory _Result(
      {@JsonKey(name: 'resource_id') required final String resourceId,
      required final List<Field> fields}) = _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  @JsonKey(name: 'resource_id')
  String get resourceId;
  @override
  List<Field> get fields;
  @override
  @JsonKey(ignore: true)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Field _$FieldFromJson(Map<String, dynamic> json) {
  return _Field.fromJson(json);
}

/// @nodoc
mixin _$Field {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FieldCopyWith<Field> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FieldCopyWith<$Res> {
  factory $FieldCopyWith(Field value, $Res Function(Field) then) =
      _$FieldCopyWithImpl<$Res, Field>;
  @useResult
  $Res call({String id, String type});
}

/// @nodoc
class _$FieldCopyWithImpl<$Res, $Val extends Field>
    implements $FieldCopyWith<$Res> {
  _$FieldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FieldImplCopyWith<$Res> implements $FieldCopyWith<$Res> {
  factory _$$FieldImplCopyWith(
          _$FieldImpl value, $Res Function(_$FieldImpl) then) =
      __$$FieldImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String type});
}

/// @nodoc
class __$$FieldImplCopyWithImpl<$Res>
    extends _$FieldCopyWithImpl<$Res, _$FieldImpl>
    implements _$$FieldImplCopyWith<$Res> {
  __$$FieldImplCopyWithImpl(
      _$FieldImpl _value, $Res Function(_$FieldImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
  }) {
    return _then(_$FieldImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FieldImpl implements _Field {
  _$FieldImpl({required this.id, required this.type});

  factory _$FieldImpl.fromJson(Map<String, dynamic> json) =>
      _$$FieldImplFromJson(json);

  @override
  final String id;
  @override
  final String type;

  @override
  String toString() {
    return 'Field(id: $id, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FieldImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FieldImplCopyWith<_$FieldImpl> get copyWith =>
      __$$FieldImplCopyWithImpl<_$FieldImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FieldImplToJson(
      this,
    );
  }
}

abstract class _Field implements Field {
  factory _Field({required final String id, required final String type}) =
      _$FieldImpl;

  factory _Field.fromJson(Map<String, dynamic> json) = _$FieldImpl.fromJson;

  @override
  String get id;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$FieldImplCopyWith<_$FieldImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Records _$RecordsFromJson(Map<String, dynamic> json) {
  return _Records.fromJson(json);
}

/// @nodoc
mixin _$Records {
  @JsonKey(name: 'datasetDescription')
  String get datasetDescription => throw _privateConstructorUsedError;
  List<Location> get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecordsCopyWith<Records> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordsCopyWith<$Res> {
  factory $RecordsCopyWith(Records value, $Res Function(Records) then) =
      _$RecordsCopyWithImpl<$Res, Records>;
  @useResult
  $Res call(
      {@JsonKey(name: 'datasetDescription') String datasetDescription,
      List<Location> location});
}

/// @nodoc
class _$RecordsCopyWithImpl<$Res, $Val extends Records>
    implements $RecordsCopyWith<$Res> {
  _$RecordsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datasetDescription = null,
    Object? location = null,
  }) {
    return _then(_value.copyWith(
      datasetDescription: null == datasetDescription
          ? _value.datasetDescription
          : datasetDescription // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as List<Location>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecordsImplCopyWith<$Res> implements $RecordsCopyWith<$Res> {
  factory _$$RecordsImplCopyWith(
          _$RecordsImpl value, $Res Function(_$RecordsImpl) then) =
      __$$RecordsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'datasetDescription') String datasetDescription,
      List<Location> location});
}

/// @nodoc
class __$$RecordsImplCopyWithImpl<$Res>
    extends _$RecordsCopyWithImpl<$Res, _$RecordsImpl>
    implements _$$RecordsImplCopyWith<$Res> {
  __$$RecordsImplCopyWithImpl(
      _$RecordsImpl _value, $Res Function(_$RecordsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datasetDescription = null,
    Object? location = null,
  }) {
    return _then(_$RecordsImpl(
      datasetDescription: null == datasetDescription
          ? _value.datasetDescription
          : datasetDescription // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value._location
          : location // ignore: cast_nullable_to_non_nullable
              as List<Location>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecordsImpl implements _Records {
  _$RecordsImpl(
      {@JsonKey(name: 'datasetDescription') required this.datasetDescription,
      required final List<Location> location})
      : _location = location;

  factory _$RecordsImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecordsImplFromJson(json);

  @override
  @JsonKey(name: 'datasetDescription')
  final String datasetDescription;
  final List<Location> _location;
  @override
  List<Location> get location {
    if (_location is EqualUnmodifiableListView) return _location;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_location);
  }

  @override
  String toString() {
    return 'Records(datasetDescription: $datasetDescription, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordsImpl &&
            (identical(other.datasetDescription, datasetDescription) ||
                other.datasetDescription == datasetDescription) &&
            const DeepCollectionEquality().equals(other._location, _location));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, datasetDescription,
      const DeepCollectionEquality().hash(_location));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordsImplCopyWith<_$RecordsImpl> get copyWith =>
      __$$RecordsImplCopyWithImpl<_$RecordsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecordsImplToJson(
      this,
    );
  }
}

abstract class _Records implements Records {
  factory _Records(
      {@JsonKey(name: 'datasetDescription')
      required final String datasetDescription,
      required final List<Location> location}) = _$RecordsImpl;

  factory _Records.fromJson(Map<String, dynamic> json) = _$RecordsImpl.fromJson;

  @override
  @JsonKey(name: 'datasetDescription')
  String get datasetDescription;
  @override
  List<Location> get location;
  @override
  @JsonKey(ignore: true)
  _$$RecordsImplCopyWith<_$RecordsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
mixin _$Location {
  @JsonKey(name: 'locationName')
  String get locationName => throw _privateConstructorUsedError;
  @JsonKey(name: 'weatherElement')
  List<WeatherElement> get weatherElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationCopyWith<Location> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res, Location>;
  @useResult
  $Res call(
      {@JsonKey(name: 'locationName') String locationName,
      @JsonKey(name: 'weatherElement') List<WeatherElement> weatherElement});
}

/// @nodoc
class _$LocationCopyWithImpl<$Res, $Val extends Location>
    implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationName = null,
    Object? weatherElement = null,
  }) {
    return _then(_value.copyWith(
      locationName: null == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String,
      weatherElement: null == weatherElement
          ? _value.weatherElement
          : weatherElement // ignore: cast_nullable_to_non_nullable
              as List<WeatherElement>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationImplCopyWith<$Res>
    implements $LocationCopyWith<$Res> {
  factory _$$LocationImplCopyWith(
          _$LocationImpl value, $Res Function(_$LocationImpl) then) =
      __$$LocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'locationName') String locationName,
      @JsonKey(name: 'weatherElement') List<WeatherElement> weatherElement});
}

/// @nodoc
class __$$LocationImplCopyWithImpl<$Res>
    extends _$LocationCopyWithImpl<$Res, _$LocationImpl>
    implements _$$LocationImplCopyWith<$Res> {
  __$$LocationImplCopyWithImpl(
      _$LocationImpl _value, $Res Function(_$LocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationName = null,
    Object? weatherElement = null,
  }) {
    return _then(_$LocationImpl(
      locationName: null == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String,
      weatherElement: null == weatherElement
          ? _value._weatherElement
          : weatherElement // ignore: cast_nullable_to_non_nullable
              as List<WeatherElement>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationImpl implements _Location {
  _$LocationImpl(
      {@JsonKey(name: 'locationName') required this.locationName,
      @JsonKey(name: 'weatherElement')
      required final List<WeatherElement> weatherElement})
      : _weatherElement = weatherElement;

  factory _$LocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationImplFromJson(json);

  @override
  @JsonKey(name: 'locationName')
  final String locationName;
  final List<WeatherElement> _weatherElement;
  @override
  @JsonKey(name: 'weatherElement')
  List<WeatherElement> get weatherElement {
    if (_weatherElement is EqualUnmodifiableListView) return _weatherElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weatherElement);
  }

  @override
  String toString() {
    return 'Location(locationName: $locationName, weatherElement: $weatherElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationImpl &&
            (identical(other.locationName, locationName) ||
                other.locationName == locationName) &&
            const DeepCollectionEquality()
                .equals(other._weatherElement, _weatherElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, locationName,
      const DeepCollectionEquality().hash(_weatherElement));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      __$$LocationImplCopyWithImpl<_$LocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationImplToJson(
      this,
    );
  }
}

abstract class _Location implements Location {
  factory _Location(
      {@JsonKey(name: 'locationName') required final String locationName,
      @JsonKey(name: 'weatherElement')
      required final List<WeatherElement> weatherElement}) = _$LocationImpl;

  factory _Location.fromJson(Map<String, dynamic> json) =
      _$LocationImpl.fromJson;

  @override
  @JsonKey(name: 'locationName')
  String get locationName;
  @override
  @JsonKey(name: 'weatherElement')
  List<WeatherElement> get weatherElement;
  @override
  @JsonKey(ignore: true)
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WeatherElement _$WeatherElementFromJson(Map<String, dynamic> json) {
  return _WeatherElement.fromJson(json);
}

/// @nodoc
mixin _$WeatherElement {
  @JsonKey(name: 'elementName')
  String get elementName => throw _privateConstructorUsedError;
  List<Time> get time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherElementCopyWith<WeatherElement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherElementCopyWith<$Res> {
  factory $WeatherElementCopyWith(
          WeatherElement value, $Res Function(WeatherElement) then) =
      _$WeatherElementCopyWithImpl<$Res, WeatherElement>;
  @useResult
  $Res call(
      {@JsonKey(name: 'elementName') String elementName, List<Time> time});
}

/// @nodoc
class _$WeatherElementCopyWithImpl<$Res, $Val extends WeatherElement>
    implements $WeatherElementCopyWith<$Res> {
  _$WeatherElementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? elementName = null,
    Object? time = null,
  }) {
    return _then(_value.copyWith(
      elementName: null == elementName
          ? _value.elementName
          : elementName // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as List<Time>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherElementImplCopyWith<$Res>
    implements $WeatherElementCopyWith<$Res> {
  factory _$$WeatherElementImplCopyWith(_$WeatherElementImpl value,
          $Res Function(_$WeatherElementImpl) then) =
      __$$WeatherElementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'elementName') String elementName, List<Time> time});
}

/// @nodoc
class __$$WeatherElementImplCopyWithImpl<$Res>
    extends _$WeatherElementCopyWithImpl<$Res, _$WeatherElementImpl>
    implements _$$WeatherElementImplCopyWith<$Res> {
  __$$WeatherElementImplCopyWithImpl(
      _$WeatherElementImpl _value, $Res Function(_$WeatherElementImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? elementName = null,
    Object? time = null,
  }) {
    return _then(_$WeatherElementImpl(
      elementName: null == elementName
          ? _value.elementName
          : elementName // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value._time
          : time // ignore: cast_nullable_to_non_nullable
              as List<Time>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherElementImpl implements _WeatherElement {
  _$WeatherElementImpl(
      {@JsonKey(name: 'elementName') required this.elementName,
      required final List<Time> time})
      : _time = time;

  factory _$WeatherElementImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherElementImplFromJson(json);

  @override
  @JsonKey(name: 'elementName')
  final String elementName;
  final List<Time> _time;
  @override
  List<Time> get time {
    if (_time is EqualUnmodifiableListView) return _time;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_time);
  }

  @override
  String toString() {
    return 'WeatherElement(elementName: $elementName, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherElementImpl &&
            (identical(other.elementName, elementName) ||
                other.elementName == elementName) &&
            const DeepCollectionEquality().equals(other._time, _time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, elementName, const DeepCollectionEquality().hash(_time));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherElementImplCopyWith<_$WeatherElementImpl> get copyWith =>
      __$$WeatherElementImplCopyWithImpl<_$WeatherElementImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherElementImplToJson(
      this,
    );
  }
}

abstract class _WeatherElement implements WeatherElement {
  factory _WeatherElement(
      {@JsonKey(name: 'elementName') required final String elementName,
      required final List<Time> time}) = _$WeatherElementImpl;

  factory _WeatherElement.fromJson(Map<String, dynamic> json) =
      _$WeatherElementImpl.fromJson;

  @override
  @JsonKey(name: 'elementName')
  String get elementName;
  @override
  List<Time> get time;
  @override
  @JsonKey(ignore: true)
  _$$WeatherElementImplCopyWith<_$WeatherElementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Time _$TimeFromJson(Map<String, dynamic> json) {
  return _Time.fromJson(json);
}

/// @nodoc
mixin _$Time {
  @JsonKey(name: 'startTime')
  String get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'endTime')
  String get endTime => throw _privateConstructorUsedError;
  Parameter get parameter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimeCopyWith<Time> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeCopyWith<$Res> {
  factory $TimeCopyWith(Time value, $Res Function(Time) then) =
      _$TimeCopyWithImpl<$Res, Time>;
  @useResult
  $Res call(
      {@JsonKey(name: 'startTime') String startTime,
      @JsonKey(name: 'endTime') String endTime,
      Parameter parameter});

  $ParameterCopyWith<$Res> get parameter;
}

/// @nodoc
class _$TimeCopyWithImpl<$Res, $Val extends Time>
    implements $TimeCopyWith<$Res> {
  _$TimeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? endTime = null,
    Object? parameter = null,
  }) {
    return _then(_value.copyWith(
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      parameter: null == parameter
          ? _value.parameter
          : parameter // ignore: cast_nullable_to_non_nullable
              as Parameter,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ParameterCopyWith<$Res> get parameter {
    return $ParameterCopyWith<$Res>(_value.parameter, (value) {
      return _then(_value.copyWith(parameter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TimeImplCopyWith<$Res> implements $TimeCopyWith<$Res> {
  factory _$$TimeImplCopyWith(
          _$TimeImpl value, $Res Function(_$TimeImpl) then) =
      __$$TimeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'startTime') String startTime,
      @JsonKey(name: 'endTime') String endTime,
      Parameter parameter});

  @override
  $ParameterCopyWith<$Res> get parameter;
}

/// @nodoc
class __$$TimeImplCopyWithImpl<$Res>
    extends _$TimeCopyWithImpl<$Res, _$TimeImpl>
    implements _$$TimeImplCopyWith<$Res> {
  __$$TimeImplCopyWithImpl(_$TimeImpl _value, $Res Function(_$TimeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? endTime = null,
    Object? parameter = null,
  }) {
    return _then(_$TimeImpl(
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      parameter: null == parameter
          ? _value.parameter
          : parameter // ignore: cast_nullable_to_non_nullable
              as Parameter,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimeImpl implements _Time {
  _$TimeImpl(
      {@JsonKey(name: 'startTime') required this.startTime,
      @JsonKey(name: 'endTime') required this.endTime,
      required this.parameter});

  factory _$TimeImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimeImplFromJson(json);

  @override
  @JsonKey(name: 'startTime')
  final String startTime;
  @override
  @JsonKey(name: 'endTime')
  final String endTime;
  @override
  final Parameter parameter;

  @override
  String toString() {
    return 'Time(startTime: $startTime, endTime: $endTime, parameter: $parameter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeImpl &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.parameter, parameter) ||
                other.parameter == parameter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, startTime, endTime, parameter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeImplCopyWith<_$TimeImpl> get copyWith =>
      __$$TimeImplCopyWithImpl<_$TimeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimeImplToJson(
      this,
    );
  }
}

abstract class _Time implements Time {
  factory _Time(
      {@JsonKey(name: 'startTime') required final String startTime,
      @JsonKey(name: 'endTime') required final String endTime,
      required final Parameter parameter}) = _$TimeImpl;

  factory _Time.fromJson(Map<String, dynamic> json) = _$TimeImpl.fromJson;

  @override
  @JsonKey(name: 'startTime')
  String get startTime;
  @override
  @JsonKey(name: 'endTime')
  String get endTime;
  @override
  Parameter get parameter;
  @override
  @JsonKey(ignore: true)
  _$$TimeImplCopyWith<_$TimeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Parameter _$ParameterFromJson(Map<String, dynamic> json) {
  return _Parameter.fromJson(json);
}

/// @nodoc
mixin _$Parameter {
  @JsonKey(name: 'parameterName')
  String get parameterName => throw _privateConstructorUsedError;
  @JsonKey(name: 'parameterValue')
  String? get parameterValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'parameterUnit')
  String? get parameterUnit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParameterCopyWith<Parameter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParameterCopyWith<$Res> {
  factory $ParameterCopyWith(Parameter value, $Res Function(Parameter) then) =
      _$ParameterCopyWithImpl<$Res, Parameter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'parameterName') String parameterName,
      @JsonKey(name: 'parameterValue') String? parameterValue,
      @JsonKey(name: 'parameterUnit') String? parameterUnit});
}

/// @nodoc
class _$ParameterCopyWithImpl<$Res, $Val extends Parameter>
    implements $ParameterCopyWith<$Res> {
  _$ParameterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parameterName = null,
    Object? parameterValue = freezed,
    Object? parameterUnit = freezed,
  }) {
    return _then(_value.copyWith(
      parameterName: null == parameterName
          ? _value.parameterName
          : parameterName // ignore: cast_nullable_to_non_nullable
              as String,
      parameterValue: freezed == parameterValue
          ? _value.parameterValue
          : parameterValue // ignore: cast_nullable_to_non_nullable
              as String?,
      parameterUnit: freezed == parameterUnit
          ? _value.parameterUnit
          : parameterUnit // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ParameterImplCopyWith<$Res>
    implements $ParameterCopyWith<$Res> {
  factory _$$ParameterImplCopyWith(
          _$ParameterImpl value, $Res Function(_$ParameterImpl) then) =
      __$$ParameterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'parameterName') String parameterName,
      @JsonKey(name: 'parameterValue') String? parameterValue,
      @JsonKey(name: 'parameterUnit') String? parameterUnit});
}

/// @nodoc
class __$$ParameterImplCopyWithImpl<$Res>
    extends _$ParameterCopyWithImpl<$Res, _$ParameterImpl>
    implements _$$ParameterImplCopyWith<$Res> {
  __$$ParameterImplCopyWithImpl(
      _$ParameterImpl _value, $Res Function(_$ParameterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parameterName = null,
    Object? parameterValue = freezed,
    Object? parameterUnit = freezed,
  }) {
    return _then(_$ParameterImpl(
      parameterName: null == parameterName
          ? _value.parameterName
          : parameterName // ignore: cast_nullable_to_non_nullable
              as String,
      parameterValue: freezed == parameterValue
          ? _value.parameterValue
          : parameterValue // ignore: cast_nullable_to_non_nullable
              as String?,
      parameterUnit: freezed == parameterUnit
          ? _value.parameterUnit
          : parameterUnit // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ParameterImpl implements _Parameter {
  _$ParameterImpl(
      {@JsonKey(name: 'parameterName') required this.parameterName,
      @JsonKey(name: 'parameterValue') this.parameterValue,
      @JsonKey(name: 'parameterUnit') this.parameterUnit});

  factory _$ParameterImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParameterImplFromJson(json);

  @override
  @JsonKey(name: 'parameterName')
  final String parameterName;
  @override
  @JsonKey(name: 'parameterValue')
  final String? parameterValue;
  @override
  @JsonKey(name: 'parameterUnit')
  final String? parameterUnit;

  @override
  String toString() {
    return 'Parameter(parameterName: $parameterName, parameterValue: $parameterValue, parameterUnit: $parameterUnit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParameterImpl &&
            (identical(other.parameterName, parameterName) ||
                other.parameterName == parameterName) &&
            (identical(other.parameterValue, parameterValue) ||
                other.parameterValue == parameterValue) &&
            (identical(other.parameterUnit, parameterUnit) ||
                other.parameterUnit == parameterUnit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, parameterName, parameterValue, parameterUnit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParameterImplCopyWith<_$ParameterImpl> get copyWith =>
      __$$ParameterImplCopyWithImpl<_$ParameterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ParameterImplToJson(
      this,
    );
  }
}

abstract class _Parameter implements Parameter {
  factory _Parameter(
          {@JsonKey(name: 'parameterName') required final String parameterName,
          @JsonKey(name: 'parameterValue') final String? parameterValue,
          @JsonKey(name: 'parameterUnit') final String? parameterUnit}) =
      _$ParameterImpl;

  factory _Parameter.fromJson(Map<String, dynamic> json) =
      _$ParameterImpl.fromJson;

  @override
  @JsonKey(name: 'parameterName')
  String get parameterName;
  @override
  @JsonKey(name: 'parameterValue')
  String? get parameterValue;
  @override
  @JsonKey(name: 'parameterUnit')
  String? get parameterUnit;
  @override
  @JsonKey(ignore: true)
  _$$ParameterImplCopyWith<_$ParameterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'package_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PackageDetails _$PackageDetailsFromJson(Map<String, dynamic> json) {
  return _PackageDetails.fromJson(json);
}

/// @nodoc
mixin _$PackageDetails {
  String get version => throw _privateConstructorUsedError;
  Pubspec get pubspec => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PackageDetailsCopyWith<PackageDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageDetailsCopyWith<$Res> {
  factory $PackageDetailsCopyWith(
          PackageDetails value, $Res Function(PackageDetails) then) =
      _$PackageDetailsCopyWithImpl<$Res, PackageDetails>;
  @useResult
  $Res call({String version, Pubspec pubspec});
}

/// @nodoc
class _$PackageDetailsCopyWithImpl<$Res, $Val extends PackageDetails>
    implements $PackageDetailsCopyWith<$Res> {
  _$PackageDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? pubspec = null,
  }) {
    return _then(_value.copyWith(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      pubspec: null == pubspec
          ? _value.pubspec
          : pubspec // ignore: cast_nullable_to_non_nullable
              as Pubspec,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PackageDetailsImplCopyWith<$Res>
    implements $PackageDetailsCopyWith<$Res> {
  factory _$$PackageDetailsImplCopyWith(_$PackageDetailsImpl value,
          $Res Function(_$PackageDetailsImpl) then) =
      __$$PackageDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String version, Pubspec pubspec});
}

/// @nodoc
class __$$PackageDetailsImplCopyWithImpl<$Res>
    extends _$PackageDetailsCopyWithImpl<$Res, _$PackageDetailsImpl>
    implements _$$PackageDetailsImplCopyWith<$Res> {
  __$$PackageDetailsImplCopyWithImpl(
      _$PackageDetailsImpl _value, $Res Function(_$PackageDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? pubspec = null,
  }) {
    return _then(_$PackageDetailsImpl(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      pubspec: null == pubspec
          ? _value.pubspec
          : pubspec // ignore: cast_nullable_to_non_nullable
              as Pubspec,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PackageDetailsImpl extends _PackageDetails {
  const _$PackageDetailsImpl({required this.version, required this.pubspec})
      : super._();

  factory _$PackageDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackageDetailsImplFromJson(json);

  @override
  final String version;
  @override
  final Pubspec pubspec;

  @override
  String toString() {
    return 'PackageDetails(version: $version, pubspec: $pubspec)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageDetailsImpl &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.pubspec, pubspec) || other.pubspec == pubspec));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, version, pubspec);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PackageDetailsImplCopyWith<_$PackageDetailsImpl> get copyWith =>
      __$$PackageDetailsImplCopyWithImpl<_$PackageDetailsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackageDetailsImplToJson(
      this,
    );
  }
}

abstract class _PackageDetails extends PackageDetails {
  const factory _PackageDetails(
      {required final String version,
      required final Pubspec pubspec}) = _$PackageDetailsImpl;
  const _PackageDetails._() : super._();

  factory _PackageDetails.fromJson(Map<String, dynamic> json) =
      _$PackageDetailsImpl.fromJson;

  @override
  String get version;
  @override
  Pubspec get pubspec;
  @override
  @JsonKey(ignore: true)
  _$$PackageDetailsImplCopyWith<_$PackageDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

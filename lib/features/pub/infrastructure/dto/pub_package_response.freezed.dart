// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pub_package_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PubPackagesResponse _$PubPackagesResponseFromJson(Map<String, dynamic> json) {
  return _PubPackagesResponse.fromJson(json);
}

/// @nodoc
mixin _$PubPackagesResponse {
  List<Package> get packages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PubPackagesResponseCopyWith<PubPackagesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PubPackagesResponseCopyWith<$Res> {
  factory $PubPackagesResponseCopyWith(
          PubPackagesResponse value, $Res Function(PubPackagesResponse) then) =
      _$PubPackagesResponseCopyWithImpl<$Res, PubPackagesResponse>;
  @useResult
  $Res call({List<Package> packages});
}

/// @nodoc
class _$PubPackagesResponseCopyWithImpl<$Res, $Val extends PubPackagesResponse>
    implements $PubPackagesResponseCopyWith<$Res> {
  _$PubPackagesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? packages = null,
  }) {
    return _then(_value.copyWith(
      packages: null == packages
          ? _value.packages
          : packages // ignore: cast_nullable_to_non_nullable
              as List<Package>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PubPackagesResponseImplCopyWith<$Res>
    implements $PubPackagesResponseCopyWith<$Res> {
  factory _$$PubPackagesResponseImplCopyWith(_$PubPackagesResponseImpl value,
          $Res Function(_$PubPackagesResponseImpl) then) =
      __$$PubPackagesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Package> packages});
}

/// @nodoc
class __$$PubPackagesResponseImplCopyWithImpl<$Res>
    extends _$PubPackagesResponseCopyWithImpl<$Res, _$PubPackagesResponseImpl>
    implements _$$PubPackagesResponseImplCopyWith<$Res> {
  __$$PubPackagesResponseImplCopyWithImpl(_$PubPackagesResponseImpl _value,
      $Res Function(_$PubPackagesResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? packages = null,
  }) {
    return _then(_$PubPackagesResponseImpl(
      packages: null == packages
          ? _value._packages
          : packages // ignore: cast_nullable_to_non_nullable
              as List<Package>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PubPackagesResponseImpl implements _PubPackagesResponse {
  _$PubPackagesResponseImpl({required final List<Package> packages})
      : _packages = packages;

  factory _$PubPackagesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PubPackagesResponseImplFromJson(json);

  final List<Package> _packages;
  @override
  List<Package> get packages {
    if (_packages is EqualUnmodifiableListView) return _packages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_packages);
  }

  @override
  String toString() {
    return 'PubPackagesResponse(packages: $packages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PubPackagesResponseImpl &&
            const DeepCollectionEquality().equals(other._packages, _packages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_packages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PubPackagesResponseImplCopyWith<_$PubPackagesResponseImpl> get copyWith =>
      __$$PubPackagesResponseImplCopyWithImpl<_$PubPackagesResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PubPackagesResponseImplToJson(
      this,
    );
  }
}

abstract class _PubPackagesResponse implements PubPackagesResponse {
  factory _PubPackagesResponse({required final List<Package> packages}) =
      _$PubPackagesResponseImpl;

  factory _PubPackagesResponse.fromJson(Map<String, dynamic> json) =
      _$PubPackagesResponseImpl.fromJson;

  @override
  List<Package> get packages;
  @override
  @JsonKey(ignore: true)
  _$$PubPackagesResponseImplCopyWith<_$PubPackagesResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

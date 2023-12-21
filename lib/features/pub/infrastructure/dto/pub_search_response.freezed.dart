// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pub_search_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PubSearchResponse _$PubSearchResponseFromJson(Map<String, dynamic> json) {
  return _PubSearchResponse.fromJson(json);
}

/// @nodoc
mixin _$PubSearchResponse {
  List<SearchPackage> get packages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PubSearchResponseCopyWith<PubSearchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PubSearchResponseCopyWith<$Res> {
  factory $PubSearchResponseCopyWith(
          PubSearchResponse value, $Res Function(PubSearchResponse) then) =
      _$PubSearchResponseCopyWithImpl<$Res, PubSearchResponse>;
  @useResult
  $Res call({List<SearchPackage> packages});
}

/// @nodoc
class _$PubSearchResponseCopyWithImpl<$Res, $Val extends PubSearchResponse>
    implements $PubSearchResponseCopyWith<$Res> {
  _$PubSearchResponseCopyWithImpl(this._value, this._then);

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
              as List<SearchPackage>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PubSearchResponseImplCopyWith<$Res>
    implements $PubSearchResponseCopyWith<$Res> {
  factory _$$PubSearchResponseImplCopyWith(_$PubSearchResponseImpl value,
          $Res Function(_$PubSearchResponseImpl) then) =
      __$$PubSearchResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SearchPackage> packages});
}

/// @nodoc
class __$$PubSearchResponseImplCopyWithImpl<$Res>
    extends _$PubSearchResponseCopyWithImpl<$Res, _$PubSearchResponseImpl>
    implements _$$PubSearchResponseImplCopyWith<$Res> {
  __$$PubSearchResponseImplCopyWithImpl(_$PubSearchResponseImpl _value,
      $Res Function(_$PubSearchResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? packages = null,
  }) {
    return _then(_$PubSearchResponseImpl(
      packages: null == packages
          ? _value._packages
          : packages // ignore: cast_nullable_to_non_nullable
              as List<SearchPackage>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PubSearchResponseImpl implements _PubSearchResponse {
  _$PubSearchResponseImpl({required final List<SearchPackage> packages})
      : _packages = packages;

  factory _$PubSearchResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PubSearchResponseImplFromJson(json);

  final List<SearchPackage> _packages;
  @override
  List<SearchPackage> get packages {
    if (_packages is EqualUnmodifiableListView) return _packages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_packages);
  }

  @override
  String toString() {
    return 'PubSearchResponse(packages: $packages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PubSearchResponseImpl &&
            const DeepCollectionEquality().equals(other._packages, _packages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_packages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PubSearchResponseImplCopyWith<_$PubSearchResponseImpl> get copyWith =>
      __$$PubSearchResponseImplCopyWithImpl<_$PubSearchResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PubSearchResponseImplToJson(
      this,
    );
  }
}

abstract class _PubSearchResponse implements PubSearchResponse {
  factory _PubSearchResponse({required final List<SearchPackage> packages}) =
      _$PubSearchResponseImpl;

  factory _PubSearchResponse.fromJson(Map<String, dynamic> json) =
      _$PubSearchResponseImpl.fromJson;

  @override
  List<SearchPackage> get packages;
  @override
  @JsonKey(ignore: true)
  _$$PubSearchResponseImplCopyWith<_$PubSearchResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

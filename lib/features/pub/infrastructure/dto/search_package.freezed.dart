// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_package.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchPackage _$SearchPackageFromJson(Map<String, dynamic> json) {
  return _SearchPackage.fromJson(json);
}

/// @nodoc
mixin _$SearchPackage {
  String get package => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchPackageCopyWith<SearchPackage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchPackageCopyWith<$Res> {
  factory $SearchPackageCopyWith(
          SearchPackage value, $Res Function(SearchPackage) then) =
      _$SearchPackageCopyWithImpl<$Res, SearchPackage>;
  @useResult
  $Res call({String package});
}

/// @nodoc
class _$SearchPackageCopyWithImpl<$Res, $Val extends SearchPackage>
    implements $SearchPackageCopyWith<$Res> {
  _$SearchPackageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? package = null,
  }) {
    return _then(_value.copyWith(
      package: null == package
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchPackageImplCopyWith<$Res>
    implements $SearchPackageCopyWith<$Res> {
  factory _$$SearchPackageImplCopyWith(
          _$SearchPackageImpl value, $Res Function(_$SearchPackageImpl) then) =
      __$$SearchPackageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String package});
}

/// @nodoc
class __$$SearchPackageImplCopyWithImpl<$Res>
    extends _$SearchPackageCopyWithImpl<$Res, _$SearchPackageImpl>
    implements _$$SearchPackageImplCopyWith<$Res> {
  __$$SearchPackageImplCopyWithImpl(
      _$SearchPackageImpl _value, $Res Function(_$SearchPackageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? package = null,
  }) {
    return _then(_$SearchPackageImpl(
      package: null == package
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchPackageImpl implements _SearchPackage {
  _$SearchPackageImpl({required this.package});

  factory _$SearchPackageImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchPackageImplFromJson(json);

  @override
  final String package;

  @override
  String toString() {
    return 'SearchPackage(package: $package)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchPackageImpl &&
            (identical(other.package, package) || other.package == package));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, package);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchPackageImplCopyWith<_$SearchPackageImpl> get copyWith =>
      __$$SearchPackageImplCopyWithImpl<_$SearchPackageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchPackageImplToJson(
      this,
    );
  }
}

abstract class _SearchPackage implements SearchPackage {
  factory _SearchPackage({required final String package}) = _$SearchPackageImpl;

  factory _SearchPackage.fromJson(Map<String, dynamic> json) =
      _$SearchPackageImpl.fromJson;

  @override
  String get package;
  @override
  @JsonKey(ignore: true)
  _$$SearchPackageImplCopyWith<_$SearchPackageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

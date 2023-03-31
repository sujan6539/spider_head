// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pharma.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PharmaZ {
  String get name => throw _privateConstructorUsedError;
  String get tag => throw _privateConstructorUsedError;
  String get codeName => throw _privateConstructorUsedError;
  PharmaType get pharmaType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PharmaZCopyWith<PharmaZ> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PharmaZCopyWith<$Res> {
  factory $PharmaZCopyWith(PharmaZ value, $Res Function(PharmaZ) then) =
      _$PharmaZCopyWithImpl<$Res, PharmaZ>;
  @useResult
  $Res call({String name, String tag, String codeName, PharmaType pharmaType});
}

/// @nodoc
class _$PharmaZCopyWithImpl<$Res, $Val extends PharmaZ>
    implements $PharmaZCopyWith<$Res> {
  _$PharmaZCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? tag = null,
    Object? codeName = null,
    Object? pharmaType = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      codeName: null == codeName
          ? _value.codeName
          : codeName // ignore: cast_nullable_to_non_nullable
              as String,
      pharmaType: null == pharmaType
          ? _value.pharmaType
          : pharmaType // ignore: cast_nullable_to_non_nullable
              as PharmaType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PharmaZCopyWith<$Res> implements $PharmaZCopyWith<$Res> {
  factory _$$_PharmaZCopyWith(
          _$_PharmaZ value, $Res Function(_$_PharmaZ) then) =
      __$$_PharmaZCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String tag, String codeName, PharmaType pharmaType});
}

/// @nodoc
class __$$_PharmaZCopyWithImpl<$Res>
    extends _$PharmaZCopyWithImpl<$Res, _$_PharmaZ>
    implements _$$_PharmaZCopyWith<$Res> {
  __$$_PharmaZCopyWithImpl(_$_PharmaZ _value, $Res Function(_$_PharmaZ) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? tag = null,
    Object? codeName = null,
    Object? pharmaType = null,
  }) {
    return _then(_$_PharmaZ(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      codeName: null == codeName
          ? _value.codeName
          : codeName // ignore: cast_nullable_to_non_nullable
              as String,
      pharmaType: null == pharmaType
          ? _value.pharmaType
          : pharmaType // ignore: cast_nullable_to_non_nullable
              as PharmaType,
    ));
  }
}

/// @nodoc

class _$_PharmaZ with DiagnosticableTreeMixin implements _PharmaZ {
  const _$_PharmaZ(
      {required this.name,
      required this.tag,
      required this.codeName,
      required this.pharmaType});

  @override
  final String name;
  @override
  final String tag;
  @override
  final String codeName;
  @override
  final PharmaType pharmaType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PharmaZ(name: $name, tag: $tag, codeName: $codeName, pharmaType: $pharmaType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PharmaZ'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('tag', tag))
      ..add(DiagnosticsProperty('codeName', codeName))
      ..add(DiagnosticsProperty('pharmaType', pharmaType));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PharmaZ &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.codeName, codeName) ||
                other.codeName == codeName) &&
            (identical(other.pharmaType, pharmaType) ||
                other.pharmaType == pharmaType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, tag, codeName, pharmaType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PharmaZCopyWith<_$_PharmaZ> get copyWith =>
      __$$_PharmaZCopyWithImpl<_$_PharmaZ>(this, _$identity);
}

abstract class _PharmaZ implements PharmaZ {
  const factory _PharmaZ(
      {required final String name,
      required final String tag,
      required final String codeName,
      required final PharmaType pharmaType}) = _$_PharmaZ;

  @override
  String get name;
  @override
  String get tag;
  @override
  String get codeName;
  @override
  PharmaType get pharmaType;
  @override
  @JsonKey(ignore: true)
  _$$_PharmaZCopyWith<_$_PharmaZ> get copyWith =>
      throw _privateConstructorUsedError;
}

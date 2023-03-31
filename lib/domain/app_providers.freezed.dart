// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_providers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GlobalAppState {
  int get defaultIndex => throw _privateConstructorUsedError;
  PharmaZ? get selectedPharma => throw _privateConstructorUsedError;
  PharmaType get pharmaType => throw _privateConstructorUsedError;
  int get selectedIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GlobalAppStateCopyWith<GlobalAppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GlobalAppStateCopyWith<$Res> {
  factory $GlobalAppStateCopyWith(
          GlobalAppState value, $Res Function(GlobalAppState) then) =
      _$GlobalAppStateCopyWithImpl<$Res, GlobalAppState>;
  @useResult
  $Res call(
      {int defaultIndex,
      PharmaZ? selectedPharma,
      PharmaType pharmaType,
      int selectedIndex});

  $PharmaZCopyWith<$Res>? get selectedPharma;
}

/// @nodoc
class _$GlobalAppStateCopyWithImpl<$Res, $Val extends GlobalAppState>
    implements $GlobalAppStateCopyWith<$Res> {
  _$GlobalAppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? defaultIndex = null,
    Object? selectedPharma = freezed,
    Object? pharmaType = null,
    Object? selectedIndex = null,
  }) {
    return _then(_value.copyWith(
      defaultIndex: null == defaultIndex
          ? _value.defaultIndex
          : defaultIndex // ignore: cast_nullable_to_non_nullable
              as int,
      selectedPharma: freezed == selectedPharma
          ? _value.selectedPharma
          : selectedPharma // ignore: cast_nullable_to_non_nullable
              as PharmaZ?,
      pharmaType: null == pharmaType
          ? _value.pharmaType
          : pharmaType // ignore: cast_nullable_to_non_nullable
              as PharmaType,
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PharmaZCopyWith<$Res>? get selectedPharma {
    if (_value.selectedPharma == null) {
      return null;
    }

    return $PharmaZCopyWith<$Res>(_value.selectedPharma!, (value) {
      return _then(_value.copyWith(selectedPharma: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GlobalAppStateCopyWith<$Res>
    implements $GlobalAppStateCopyWith<$Res> {
  factory _$$_GlobalAppStateCopyWith(
          _$_GlobalAppState value, $Res Function(_$_GlobalAppState) then) =
      __$$_GlobalAppStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int defaultIndex,
      PharmaZ? selectedPharma,
      PharmaType pharmaType,
      int selectedIndex});

  @override
  $PharmaZCopyWith<$Res>? get selectedPharma;
}

/// @nodoc
class __$$_GlobalAppStateCopyWithImpl<$Res>
    extends _$GlobalAppStateCopyWithImpl<$Res, _$_GlobalAppState>
    implements _$$_GlobalAppStateCopyWith<$Res> {
  __$$_GlobalAppStateCopyWithImpl(
      _$_GlobalAppState _value, $Res Function(_$_GlobalAppState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? defaultIndex = null,
    Object? selectedPharma = freezed,
    Object? pharmaType = null,
    Object? selectedIndex = null,
  }) {
    return _then(_$_GlobalAppState(
      defaultIndex: null == defaultIndex
          ? _value.defaultIndex
          : defaultIndex // ignore: cast_nullable_to_non_nullable
              as int,
      selectedPharma: freezed == selectedPharma
          ? _value.selectedPharma
          : selectedPharma // ignore: cast_nullable_to_non_nullable
              as PharmaZ?,
      pharmaType: null == pharmaType
          ? _value.pharmaType
          : pharmaType // ignore: cast_nullable_to_non_nullable
              as PharmaType,
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GlobalAppState implements _GlobalAppState {
  const _$_GlobalAppState(
      {required this.defaultIndex,
      this.selectedPharma,
      this.pharmaType = PharmaType.G_46_LAFFODI,
      this.selectedIndex = 0});

  @override
  final int defaultIndex;
  @override
  final PharmaZ? selectedPharma;
  @override
  @JsonKey()
  final PharmaType pharmaType;
  @override
  @JsonKey()
  final int selectedIndex;

  @override
  String toString() {
    return 'GlobalAppState(defaultIndex: $defaultIndex, selectedPharma: $selectedPharma, pharmaType: $pharmaType, selectedIndex: $selectedIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GlobalAppState &&
            (identical(other.defaultIndex, defaultIndex) ||
                other.defaultIndex == defaultIndex) &&
            (identical(other.selectedPharma, selectedPharma) ||
                other.selectedPharma == selectedPharma) &&
            (identical(other.pharmaType, pharmaType) ||
                other.pharmaType == pharmaType) &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, defaultIndex, selectedPharma, pharmaType, selectedIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GlobalAppStateCopyWith<_$_GlobalAppState> get copyWith =>
      __$$_GlobalAppStateCopyWithImpl<_$_GlobalAppState>(this, _$identity);
}

abstract class _GlobalAppState implements GlobalAppState {
  const factory _GlobalAppState(
      {required final int defaultIndex,
      final PharmaZ? selectedPharma,
      final PharmaType pharmaType,
      final int selectedIndex}) = _$_GlobalAppState;

  @override
  int get defaultIndex;
  @override
  PharmaZ? get selectedPharma;
  @override
  PharmaType get pharmaType;
  @override
  int get selectedIndex;
  @override
  @JsonKey(ignore: true)
  _$$_GlobalAppStateCopyWith<_$_GlobalAppState> get copyWith =>
      throw _privateConstructorUsedError;
}

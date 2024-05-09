// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'language_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LanguageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getLanguageList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getLanguageList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getLanguageList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetLanguageList value) getLanguageList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetLanguageList value)? getLanguageList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetLanguageList value)? getLanguageList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageEventCopyWith<$Res> {
  factory $LanguageEventCopyWith(
          LanguageEvent value, $Res Function(LanguageEvent) then) =
      _$LanguageEventCopyWithImpl<$Res, LanguageEvent>;
}

/// @nodoc
class _$LanguageEventCopyWithImpl<$Res, $Val extends LanguageEvent>
    implements $LanguageEventCopyWith<$Res> {
  _$LanguageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetLanguageListImplCopyWith<$Res> {
  factory _$$GetLanguageListImplCopyWith(_$GetLanguageListImpl value,
          $Res Function(_$GetLanguageListImpl) then) =
      __$$GetLanguageListImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetLanguageListImplCopyWithImpl<$Res>
    extends _$LanguageEventCopyWithImpl<$Res, _$GetLanguageListImpl>
    implements _$$GetLanguageListImplCopyWith<$Res> {
  __$$GetLanguageListImplCopyWithImpl(
      _$GetLanguageListImpl _value, $Res Function(_$GetLanguageListImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetLanguageListImpl implements _GetLanguageList {
  const _$GetLanguageListImpl();

  @override
  String toString() {
    return 'LanguageEvent.getLanguageList()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetLanguageListImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getLanguageList,
  }) {
    return getLanguageList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getLanguageList,
  }) {
    return getLanguageList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getLanguageList,
    required TResult orElse(),
  }) {
    if (getLanguageList != null) {
      return getLanguageList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetLanguageList value) getLanguageList,
  }) {
    return getLanguageList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetLanguageList value)? getLanguageList,
  }) {
    return getLanguageList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetLanguageList value)? getLanguageList,
    required TResult orElse(),
  }) {
    if (getLanguageList != null) {
      return getLanguageList(this);
    }
    return orElse();
  }
}

abstract class _GetLanguageList implements LanguageEvent {
  const factory _GetLanguageList() = _$GetLanguageListImpl;
}

/// @nodoc
mixin _$LanguageState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<LanguageModel>? get languages => throw _privateConstructorUsedError;
  Option<Either<MainFailure, List<LanguageModel>>>
      get languageFailureOrSuccessOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LanguageStateCopyWith<LanguageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageStateCopyWith<$Res> {
  factory $LanguageStateCopyWith(
          LanguageState value, $Res Function(LanguageState) then) =
      _$LanguageStateCopyWithImpl<$Res, LanguageState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<LanguageModel>? languages,
      Option<Either<MainFailure, List<LanguageModel>>>
          languageFailureOrSuccessOption});
}

/// @nodoc
class _$LanguageStateCopyWithImpl<$Res, $Val extends LanguageState>
    implements $LanguageStateCopyWith<$Res> {
  _$LanguageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? languages = freezed,
    Object? languageFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      languages: freezed == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<LanguageModel>?,
      languageFailureOrSuccessOption: null == languageFailureOrSuccessOption
          ? _value.languageFailureOrSuccessOption
          : languageFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<LanguageModel>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LanguageStateImplCopyWith<$Res>
    implements $LanguageStateCopyWith<$Res> {
  factory _$$LanguageStateImplCopyWith(
          _$LanguageStateImpl value, $Res Function(_$LanguageStateImpl) then) =
      __$$LanguageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<LanguageModel>? languages,
      Option<Either<MainFailure, List<LanguageModel>>>
          languageFailureOrSuccessOption});
}

/// @nodoc
class __$$LanguageStateImplCopyWithImpl<$Res>
    extends _$LanguageStateCopyWithImpl<$Res, _$LanguageStateImpl>
    implements _$$LanguageStateImplCopyWith<$Res> {
  __$$LanguageStateImplCopyWithImpl(
      _$LanguageStateImpl _value, $Res Function(_$LanguageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? languages = freezed,
    Object? languageFailureOrSuccessOption = null,
  }) {
    return _then(_$LanguageStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      languages: freezed == languages
          ? _value._languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<LanguageModel>?,
      languageFailureOrSuccessOption: null == languageFailureOrSuccessOption
          ? _value.languageFailureOrSuccessOption
          : languageFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<LanguageModel>>>,
    ));
  }
}

/// @nodoc

class _$LanguageStateImpl implements _LanguageState {
  const _$LanguageStateImpl(
      {required this.isLoading,
      final List<LanguageModel>? languages,
      required this.languageFailureOrSuccessOption})
      : _languages = languages;

  @override
  final bool isLoading;
  final List<LanguageModel>? _languages;
  @override
  List<LanguageModel>? get languages {
    final value = _languages;
    if (value == null) return null;
    if (_languages is EqualUnmodifiableListView) return _languages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Option<Either<MainFailure, List<LanguageModel>>>
      languageFailureOrSuccessOption;

  @override
  String toString() {
    return 'LanguageState(isLoading: $isLoading, languages: $languages, languageFailureOrSuccessOption: $languageFailureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LanguageStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._languages, _languages) &&
            (identical(other.languageFailureOrSuccessOption,
                    languageFailureOrSuccessOption) ||
                other.languageFailureOrSuccessOption ==
                    languageFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_languages),
      languageFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LanguageStateImplCopyWith<_$LanguageStateImpl> get copyWith =>
      __$$LanguageStateImplCopyWithImpl<_$LanguageStateImpl>(this, _$identity);
}

abstract class _LanguageState implements LanguageState {
  const factory _LanguageState(
      {required final bool isLoading,
      final List<LanguageModel>? languages,
      required final Option<Either<MainFailure, List<LanguageModel>>>
          languageFailureOrSuccessOption}) = _$LanguageStateImpl;

  @override
  bool get isLoading;
  @override
  List<LanguageModel>? get languages;
  @override
  Option<Either<MainFailure, List<LanguageModel>>>
      get languageFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$LanguageStateImplCopyWith<_$LanguageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

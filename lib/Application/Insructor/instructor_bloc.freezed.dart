// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'instructor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InstructorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getInstructorList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getInstructorList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getInstructorList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetInstructorList value) getInstructorList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetInstructorList value)? getInstructorList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetInstructorList value)? getInstructorList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstructorEventCopyWith<$Res> {
  factory $InstructorEventCopyWith(
          InstructorEvent value, $Res Function(InstructorEvent) then) =
      _$InstructorEventCopyWithImpl<$Res, InstructorEvent>;
}

/// @nodoc
class _$InstructorEventCopyWithImpl<$Res, $Val extends InstructorEvent>
    implements $InstructorEventCopyWith<$Res> {
  _$InstructorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetInstructorListImplCopyWith<$Res> {
  factory _$$GetInstructorListImplCopyWith(_$GetInstructorListImpl value,
          $Res Function(_$GetInstructorListImpl) then) =
      __$$GetInstructorListImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetInstructorListImplCopyWithImpl<$Res>
    extends _$InstructorEventCopyWithImpl<$Res, _$GetInstructorListImpl>
    implements _$$GetInstructorListImplCopyWith<$Res> {
  __$$GetInstructorListImplCopyWithImpl(_$GetInstructorListImpl _value,
      $Res Function(_$GetInstructorListImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetInstructorListImpl implements _GetInstructorList {
  const _$GetInstructorListImpl();

  @override
  String toString() {
    return 'InstructorEvent.getInstructorList()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetInstructorListImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getInstructorList,
  }) {
    return getInstructorList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getInstructorList,
  }) {
    return getInstructorList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getInstructorList,
    required TResult orElse(),
  }) {
    if (getInstructorList != null) {
      return getInstructorList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetInstructorList value) getInstructorList,
  }) {
    return getInstructorList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetInstructorList value)? getInstructorList,
  }) {
    return getInstructorList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetInstructorList value)? getInstructorList,
    required TResult orElse(),
  }) {
    if (getInstructorList != null) {
      return getInstructorList(this);
    }
    return orElse();
  }
}

abstract class _GetInstructorList implements InstructorEvent {
  const factory _GetInstructorList() = _$GetInstructorListImpl;
}

/// @nodoc
mixin _$InstructorState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<InstructorModel>? get instructorList =>
      throw _privateConstructorUsedError;
  Option<Either<MainFailure, List<InstructorModel>>>
      get instructorFailureOrSuccessOption =>
          throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InstructorStateCopyWith<InstructorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstructorStateCopyWith<$Res> {
  factory $InstructorStateCopyWith(
          InstructorState value, $Res Function(InstructorState) then) =
      _$InstructorStateCopyWithImpl<$Res, InstructorState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<InstructorModel>? instructorList,
      Option<Either<MainFailure, List<InstructorModel>>>
          instructorFailureOrSuccessOption});
}

/// @nodoc
class _$InstructorStateCopyWithImpl<$Res, $Val extends InstructorState>
    implements $InstructorStateCopyWith<$Res> {
  _$InstructorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? instructorList = freezed,
    Object? instructorFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      instructorList: freezed == instructorList
          ? _value.instructorList
          : instructorList // ignore: cast_nullable_to_non_nullable
              as List<InstructorModel>?,
      instructorFailureOrSuccessOption: null == instructorFailureOrSuccessOption
          ? _value.instructorFailureOrSuccessOption
          : instructorFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<InstructorModel>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InstructorStateImplCopyWith<$Res>
    implements $InstructorStateCopyWith<$Res> {
  factory _$$InstructorStateImplCopyWith(_$InstructorStateImpl value,
          $Res Function(_$InstructorStateImpl) then) =
      __$$InstructorStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<InstructorModel>? instructorList,
      Option<Either<MainFailure, List<InstructorModel>>>
          instructorFailureOrSuccessOption});
}

/// @nodoc
class __$$InstructorStateImplCopyWithImpl<$Res>
    extends _$InstructorStateCopyWithImpl<$Res, _$InstructorStateImpl>
    implements _$$InstructorStateImplCopyWith<$Res> {
  __$$InstructorStateImplCopyWithImpl(
      _$InstructorStateImpl _value, $Res Function(_$InstructorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? instructorList = freezed,
    Object? instructorFailureOrSuccessOption = null,
  }) {
    return _then(_$InstructorStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      instructorList: freezed == instructorList
          ? _value._instructorList
          : instructorList // ignore: cast_nullable_to_non_nullable
              as List<InstructorModel>?,
      instructorFailureOrSuccessOption: null == instructorFailureOrSuccessOption
          ? _value.instructorFailureOrSuccessOption
          : instructorFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<InstructorModel>>>,
    ));
  }
}

/// @nodoc

class _$InstructorStateImpl implements _InstructorState {
  const _$InstructorStateImpl(
      {required this.isLoading,
      final List<InstructorModel>? instructorList,
      required this.instructorFailureOrSuccessOption})
      : _instructorList = instructorList;

  @override
  final bool isLoading;
  final List<InstructorModel>? _instructorList;
  @override
  List<InstructorModel>? get instructorList {
    final value = _instructorList;
    if (value == null) return null;
    if (_instructorList is EqualUnmodifiableListView) return _instructorList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Option<Either<MainFailure, List<InstructorModel>>>
      instructorFailureOrSuccessOption;

  @override
  String toString() {
    return 'InstructorState(isLoading: $isLoading, instructorList: $instructorList, instructorFailureOrSuccessOption: $instructorFailureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InstructorStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._instructorList, _instructorList) &&
            (identical(other.instructorFailureOrSuccessOption,
                    instructorFailureOrSuccessOption) ||
                other.instructorFailureOrSuccessOption ==
                    instructorFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_instructorList),
      instructorFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InstructorStateImplCopyWith<_$InstructorStateImpl> get copyWith =>
      __$$InstructorStateImplCopyWithImpl<_$InstructorStateImpl>(
          this, _$identity);
}

abstract class _InstructorState implements InstructorState {
  const factory _InstructorState(
      {required final bool isLoading,
      final List<InstructorModel>? instructorList,
      required final Option<Either<MainFailure, List<InstructorModel>>>
          instructorFailureOrSuccessOption}) = _$InstructorStateImpl;

  @override
  bool get isLoading;
  @override
  List<InstructorModel>? get instructorList;
  @override
  Option<Either<MainFailure, List<InstructorModel>>>
      get instructorFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$InstructorStateImplCopyWith<_$InstructorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

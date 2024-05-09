// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'industry_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$IndustryEvent {
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
abstract class $IndustryEventCopyWith<$Res> {
  factory $IndustryEventCopyWith(
          IndustryEvent value, $Res Function(IndustryEvent) then) =
      _$IndustryEventCopyWithImpl<$Res, IndustryEvent>;
}

/// @nodoc
class _$IndustryEventCopyWithImpl<$Res, $Val extends IndustryEvent>
    implements $IndustryEventCopyWith<$Res> {
  _$IndustryEventCopyWithImpl(this._value, this._then);

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
    extends _$IndustryEventCopyWithImpl<$Res, _$GetInstructorListImpl>
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
    return 'IndustryEvent.getInstructorList()';
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

abstract class _GetInstructorList implements IndustryEvent {
  const factory _GetInstructorList() = _$GetInstructorListImpl;
}

/// @nodoc
mixin _$IndustryState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<IndustryModel>? get industrylist => throw _privateConstructorUsedError;
  Option<Either<MainFailure, List<IndustryModel>>>
      get industryFailureOrSuccessOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IndustryStateCopyWith<IndustryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndustryStateCopyWith<$Res> {
  factory $IndustryStateCopyWith(
          IndustryState value, $Res Function(IndustryState) then) =
      _$IndustryStateCopyWithImpl<$Res, IndustryState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<IndustryModel>? industrylist,
      Option<Either<MainFailure, List<IndustryModel>>>
          industryFailureOrSuccessOption});
}

/// @nodoc
class _$IndustryStateCopyWithImpl<$Res, $Val extends IndustryState>
    implements $IndustryStateCopyWith<$Res> {
  _$IndustryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? industrylist = freezed,
    Object? industryFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      industrylist: freezed == industrylist
          ? _value.industrylist
          : industrylist // ignore: cast_nullable_to_non_nullable
              as List<IndustryModel>?,
      industryFailureOrSuccessOption: null == industryFailureOrSuccessOption
          ? _value.industryFailureOrSuccessOption
          : industryFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<IndustryModel>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IndustryStateImplCopyWith<$Res>
    implements $IndustryStateCopyWith<$Res> {
  factory _$$IndustryStateImplCopyWith(
          _$IndustryStateImpl value, $Res Function(_$IndustryStateImpl) then) =
      __$$IndustryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<IndustryModel>? industrylist,
      Option<Either<MainFailure, List<IndustryModel>>>
          industryFailureOrSuccessOption});
}

/// @nodoc
class __$$IndustryStateImplCopyWithImpl<$Res>
    extends _$IndustryStateCopyWithImpl<$Res, _$IndustryStateImpl>
    implements _$$IndustryStateImplCopyWith<$Res> {
  __$$IndustryStateImplCopyWithImpl(
      _$IndustryStateImpl _value, $Res Function(_$IndustryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? industrylist = freezed,
    Object? industryFailureOrSuccessOption = null,
  }) {
    return _then(_$IndustryStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      industrylist: freezed == industrylist
          ? _value._industrylist
          : industrylist // ignore: cast_nullable_to_non_nullable
              as List<IndustryModel>?,
      industryFailureOrSuccessOption: null == industryFailureOrSuccessOption
          ? _value.industryFailureOrSuccessOption
          : industryFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<IndustryModel>>>,
    ));
  }
}

/// @nodoc

class _$IndustryStateImpl implements _IndustryState {
  const _$IndustryStateImpl(
      {required this.isLoading,
      final List<IndustryModel>? industrylist,
      required this.industryFailureOrSuccessOption})
      : _industrylist = industrylist;

  @override
  final bool isLoading;
  final List<IndustryModel>? _industrylist;
  @override
  List<IndustryModel>? get industrylist {
    final value = _industrylist;
    if (value == null) return null;
    if (_industrylist is EqualUnmodifiableListView) return _industrylist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Option<Either<MainFailure, List<IndustryModel>>>
      industryFailureOrSuccessOption;

  @override
  String toString() {
    return 'IndustryState(isLoading: $isLoading, industrylist: $industrylist, industryFailureOrSuccessOption: $industryFailureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IndustryStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._industrylist, _industrylist) &&
            (identical(other.industryFailureOrSuccessOption,
                    industryFailureOrSuccessOption) ||
                other.industryFailureOrSuccessOption ==
                    industryFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_industrylist),
      industryFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IndustryStateImplCopyWith<_$IndustryStateImpl> get copyWith =>
      __$$IndustryStateImplCopyWithImpl<_$IndustryStateImpl>(this, _$identity);
}

abstract class _IndustryState implements IndustryState {
  const factory _IndustryState(
      {required final bool isLoading,
      final List<IndustryModel>? industrylist,
      required final Option<Either<MainFailure, List<IndustryModel>>>
          industryFailureOrSuccessOption}) = _$IndustryStateImpl;

  @override
  bool get isLoading;
  @override
  List<IndustryModel>? get industrylist;
  @override
  Option<Either<MainFailure, List<IndustryModel>>>
      get industryFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$IndustryStateImplCopyWith<_$IndustryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

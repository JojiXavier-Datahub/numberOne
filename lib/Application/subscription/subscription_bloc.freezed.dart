// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SubscriptionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() subscriptionGet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? subscriptionGet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? subscriptionGet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubscriptionGet value) subscriptionGet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SubscriptionGet value)? subscriptionGet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubscriptionGet value)? subscriptionGet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionEventCopyWith<$Res> {
  factory $SubscriptionEventCopyWith(
          SubscriptionEvent value, $Res Function(SubscriptionEvent) then) =
      _$SubscriptionEventCopyWithImpl<$Res, SubscriptionEvent>;
}

/// @nodoc
class _$SubscriptionEventCopyWithImpl<$Res, $Val extends SubscriptionEvent>
    implements $SubscriptionEventCopyWith<$Res> {
  _$SubscriptionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SubscriptionGetImplCopyWith<$Res> {
  factory _$$SubscriptionGetImplCopyWith(_$SubscriptionGetImpl value,
          $Res Function(_$SubscriptionGetImpl) then) =
      __$$SubscriptionGetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubscriptionGetImplCopyWithImpl<$Res>
    extends _$SubscriptionEventCopyWithImpl<$Res, _$SubscriptionGetImpl>
    implements _$$SubscriptionGetImplCopyWith<$Res> {
  __$$SubscriptionGetImplCopyWithImpl(
      _$SubscriptionGetImpl _value, $Res Function(_$SubscriptionGetImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SubscriptionGetImpl implements _SubscriptionGet {
  const _$SubscriptionGetImpl();

  @override
  String toString() {
    return 'SubscriptionEvent.subscriptionGet()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubscriptionGetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() subscriptionGet,
  }) {
    return subscriptionGet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? subscriptionGet,
  }) {
    return subscriptionGet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? subscriptionGet,
    required TResult orElse(),
  }) {
    if (subscriptionGet != null) {
      return subscriptionGet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubscriptionGet value) subscriptionGet,
  }) {
    return subscriptionGet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SubscriptionGet value)? subscriptionGet,
  }) {
    return subscriptionGet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubscriptionGet value)? subscriptionGet,
    required TResult orElse(),
  }) {
    if (subscriptionGet != null) {
      return subscriptionGet(this);
    }
    return orElse();
  }
}

abstract class _SubscriptionGet implements SubscriptionEvent {
  const factory _SubscriptionGet() = _$SubscriptionGetImpl;
}

/// @nodoc
mixin _$SubscriptionState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<SubscriptionGet>? get subscriptionget =>
      throw _privateConstructorUsedError;
  Option<Either<MainFailure, List<SubscriptionGet>>>
      get subscriptionFailureOrSuccessOption =>
          throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SubscriptionStateCopyWith<SubscriptionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionStateCopyWith<$Res> {
  factory $SubscriptionStateCopyWith(
          SubscriptionState value, $Res Function(SubscriptionState) then) =
      _$SubscriptionStateCopyWithImpl<$Res, SubscriptionState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<SubscriptionGet>? subscriptionget,
      Option<Either<MainFailure, List<SubscriptionGet>>>
          subscriptionFailureOrSuccessOption});
}

/// @nodoc
class _$SubscriptionStateCopyWithImpl<$Res, $Val extends SubscriptionState>
    implements $SubscriptionStateCopyWith<$Res> {
  _$SubscriptionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? subscriptionget = freezed,
    Object? subscriptionFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      subscriptionget: freezed == subscriptionget
          ? _value.subscriptionget
          : subscriptionget // ignore: cast_nullable_to_non_nullable
              as List<SubscriptionGet>?,
      subscriptionFailureOrSuccessOption: null ==
              subscriptionFailureOrSuccessOption
          ? _value.subscriptionFailureOrSuccessOption
          : subscriptionFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<SubscriptionGet>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubscriptionStateImplCopyWith<$Res>
    implements $SubscriptionStateCopyWith<$Res> {
  factory _$$SubscriptionStateImplCopyWith(_$SubscriptionStateImpl value,
          $Res Function(_$SubscriptionStateImpl) then) =
      __$$SubscriptionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<SubscriptionGet>? subscriptionget,
      Option<Either<MainFailure, List<SubscriptionGet>>>
          subscriptionFailureOrSuccessOption});
}

/// @nodoc
class __$$SubscriptionStateImplCopyWithImpl<$Res>
    extends _$SubscriptionStateCopyWithImpl<$Res, _$SubscriptionStateImpl>
    implements _$$SubscriptionStateImplCopyWith<$Res> {
  __$$SubscriptionStateImplCopyWithImpl(_$SubscriptionStateImpl _value,
      $Res Function(_$SubscriptionStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? subscriptionget = freezed,
    Object? subscriptionFailureOrSuccessOption = null,
  }) {
    return _then(_$SubscriptionStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      subscriptionget: freezed == subscriptionget
          ? _value._subscriptionget
          : subscriptionget // ignore: cast_nullable_to_non_nullable
              as List<SubscriptionGet>?,
      subscriptionFailureOrSuccessOption: null ==
              subscriptionFailureOrSuccessOption
          ? _value.subscriptionFailureOrSuccessOption
          : subscriptionFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<SubscriptionGet>>>,
    ));
  }
}

/// @nodoc

class _$SubscriptionStateImpl implements _SubscriptionState {
  const _$SubscriptionStateImpl(
      {required this.isLoading,
      final List<SubscriptionGet>? subscriptionget,
      required this.subscriptionFailureOrSuccessOption})
      : _subscriptionget = subscriptionget;

  @override
  final bool isLoading;
  final List<SubscriptionGet>? _subscriptionget;
  @override
  List<SubscriptionGet>? get subscriptionget {
    final value = _subscriptionget;
    if (value == null) return null;
    if (_subscriptionget is EqualUnmodifiableListView) return _subscriptionget;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Option<Either<MainFailure, List<SubscriptionGet>>>
      subscriptionFailureOrSuccessOption;

  @override
  String toString() {
    return 'SubscriptionState(isLoading: $isLoading, subscriptionget: $subscriptionget, subscriptionFailureOrSuccessOption: $subscriptionFailureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._subscriptionget, _subscriptionget) &&
            (identical(other.subscriptionFailureOrSuccessOption,
                    subscriptionFailureOrSuccessOption) ||
                other.subscriptionFailureOrSuccessOption ==
                    subscriptionFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_subscriptionget),
      subscriptionFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionStateImplCopyWith<_$SubscriptionStateImpl> get copyWith =>
      __$$SubscriptionStateImplCopyWithImpl<_$SubscriptionStateImpl>(
          this, _$identity);
}

abstract class _SubscriptionState implements SubscriptionState {
  const factory _SubscriptionState(
      {required final bool isLoading,
      final List<SubscriptionGet>? subscriptionget,
      required final Option<Either<MainFailure, List<SubscriptionGet>>>
          subscriptionFailureOrSuccessOption}) = _$SubscriptionStateImpl;

  @override
  bool get isLoading;
  @override
  List<SubscriptionGet>? get subscriptionget;
  @override
  Option<Either<MainFailure, List<SubscriptionGet>>>
      get subscriptionFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$SubscriptionStateImplCopyWith<_$SubscriptionStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

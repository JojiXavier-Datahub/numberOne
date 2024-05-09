// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SplashScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) started,
    required TResult Function(BuildContext context) enableLocation,
    required TResult Function() openSetting,
    required TResult Function(String routeName, BuildContext context)
        navigateTo,
    required TResult Function(BuildContext context) isExistingCustomer,
    required TResult Function(BuildContext context) changeSize,
    required TResult Function(BuildContext context) changelogo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? started,
    TResult? Function(BuildContext context)? enableLocation,
    TResult? Function()? openSetting,
    TResult? Function(String routeName, BuildContext context)? navigateTo,
    TResult? Function(BuildContext context)? isExistingCustomer,
    TResult? Function(BuildContext context)? changeSize,
    TResult? Function(BuildContext context)? changelogo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? started,
    TResult Function(BuildContext context)? enableLocation,
    TResult Function()? openSetting,
    TResult Function(String routeName, BuildContext context)? navigateTo,
    TResult Function(BuildContext context)? isExistingCustomer,
    TResult Function(BuildContext context)? changeSize,
    TResult Function(BuildContext context)? changelogo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EnableLocation value) enableLocation,
    required TResult Function(_OpenSetting value) openSetting,
    required TResult Function(_NavigateTo value) navigateTo,
    required TResult Function(_IsExistingCustomer value) isExistingCustomer,
    required TResult Function(_ChangeSize value) changeSize,
    required TResult Function(_Changelogo value) changelogo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_EnableLocation value)? enableLocation,
    TResult? Function(_OpenSetting value)? openSetting,
    TResult? Function(_NavigateTo value)? navigateTo,
    TResult? Function(_IsExistingCustomer value)? isExistingCustomer,
    TResult? Function(_ChangeSize value)? changeSize,
    TResult? Function(_Changelogo value)? changelogo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EnableLocation value)? enableLocation,
    TResult Function(_OpenSetting value)? openSetting,
    TResult Function(_NavigateTo value)? navigateTo,
    TResult Function(_IsExistingCustomer value)? isExistingCustomer,
    TResult Function(_ChangeSize value)? changeSize,
    TResult Function(_Changelogo value)? changelogo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashScreenEventCopyWith<$Res> {
  factory $SplashScreenEventCopyWith(
          SplashScreenEvent value, $Res Function(SplashScreenEvent) then) =
      _$SplashScreenEventCopyWithImpl<$Res, SplashScreenEvent>;
}

/// @nodoc
class _$SplashScreenEventCopyWithImpl<$Res, $Val extends SplashScreenEvent>
    implements $SplashScreenEventCopyWith<$Res> {
  _$SplashScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$SplashScreenEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$StartedImpl(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl(this.context);

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'SplashScreenEvent.started(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) started,
    required TResult Function(BuildContext context) enableLocation,
    required TResult Function() openSetting,
    required TResult Function(String routeName, BuildContext context)
        navigateTo,
    required TResult Function(BuildContext context) isExistingCustomer,
    required TResult Function(BuildContext context) changeSize,
    required TResult Function(BuildContext context) changelogo,
  }) {
    return started(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? started,
    TResult? Function(BuildContext context)? enableLocation,
    TResult? Function()? openSetting,
    TResult? Function(String routeName, BuildContext context)? navigateTo,
    TResult? Function(BuildContext context)? isExistingCustomer,
    TResult? Function(BuildContext context)? changeSize,
    TResult? Function(BuildContext context)? changelogo,
  }) {
    return started?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? started,
    TResult Function(BuildContext context)? enableLocation,
    TResult Function()? openSetting,
    TResult Function(String routeName, BuildContext context)? navigateTo,
    TResult Function(BuildContext context)? isExistingCustomer,
    TResult Function(BuildContext context)? changeSize,
    TResult Function(BuildContext context)? changelogo,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EnableLocation value) enableLocation,
    required TResult Function(_OpenSetting value) openSetting,
    required TResult Function(_NavigateTo value) navigateTo,
    required TResult Function(_IsExistingCustomer value) isExistingCustomer,
    required TResult Function(_ChangeSize value) changeSize,
    required TResult Function(_Changelogo value) changelogo,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_EnableLocation value)? enableLocation,
    TResult? Function(_OpenSetting value)? openSetting,
    TResult? Function(_NavigateTo value)? navigateTo,
    TResult? Function(_IsExistingCustomer value)? isExistingCustomer,
    TResult? Function(_ChangeSize value)? changeSize,
    TResult? Function(_Changelogo value)? changelogo,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EnableLocation value)? enableLocation,
    TResult Function(_OpenSetting value)? openSetting,
    TResult Function(_NavigateTo value)? navigateTo,
    TResult Function(_IsExistingCustomer value)? isExistingCustomer,
    TResult Function(_ChangeSize value)? changeSize,
    TResult Function(_Changelogo value)? changelogo,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SplashScreenEvent {
  const factory _Started(final BuildContext context) = _$StartedImpl;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EnableLocationImplCopyWith<$Res> {
  factory _$$EnableLocationImplCopyWith(_$EnableLocationImpl value,
          $Res Function(_$EnableLocationImpl) then) =
      __$$EnableLocationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$EnableLocationImplCopyWithImpl<$Res>
    extends _$SplashScreenEventCopyWithImpl<$Res, _$EnableLocationImpl>
    implements _$$EnableLocationImplCopyWith<$Res> {
  __$$EnableLocationImplCopyWithImpl(
      _$EnableLocationImpl _value, $Res Function(_$EnableLocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$EnableLocationImpl(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$EnableLocationImpl implements _EnableLocation {
  const _$EnableLocationImpl(this.context);

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'SplashScreenEvent.enableLocation(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnableLocationImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EnableLocationImplCopyWith<_$EnableLocationImpl> get copyWith =>
      __$$EnableLocationImplCopyWithImpl<_$EnableLocationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) started,
    required TResult Function(BuildContext context) enableLocation,
    required TResult Function() openSetting,
    required TResult Function(String routeName, BuildContext context)
        navigateTo,
    required TResult Function(BuildContext context) isExistingCustomer,
    required TResult Function(BuildContext context) changeSize,
    required TResult Function(BuildContext context) changelogo,
  }) {
    return enableLocation(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? started,
    TResult? Function(BuildContext context)? enableLocation,
    TResult? Function()? openSetting,
    TResult? Function(String routeName, BuildContext context)? navigateTo,
    TResult? Function(BuildContext context)? isExistingCustomer,
    TResult? Function(BuildContext context)? changeSize,
    TResult? Function(BuildContext context)? changelogo,
  }) {
    return enableLocation?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? started,
    TResult Function(BuildContext context)? enableLocation,
    TResult Function()? openSetting,
    TResult Function(String routeName, BuildContext context)? navigateTo,
    TResult Function(BuildContext context)? isExistingCustomer,
    TResult Function(BuildContext context)? changeSize,
    TResult Function(BuildContext context)? changelogo,
    required TResult orElse(),
  }) {
    if (enableLocation != null) {
      return enableLocation(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EnableLocation value) enableLocation,
    required TResult Function(_OpenSetting value) openSetting,
    required TResult Function(_NavigateTo value) navigateTo,
    required TResult Function(_IsExistingCustomer value) isExistingCustomer,
    required TResult Function(_ChangeSize value) changeSize,
    required TResult Function(_Changelogo value) changelogo,
  }) {
    return enableLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_EnableLocation value)? enableLocation,
    TResult? Function(_OpenSetting value)? openSetting,
    TResult? Function(_NavigateTo value)? navigateTo,
    TResult? Function(_IsExistingCustomer value)? isExistingCustomer,
    TResult? Function(_ChangeSize value)? changeSize,
    TResult? Function(_Changelogo value)? changelogo,
  }) {
    return enableLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EnableLocation value)? enableLocation,
    TResult Function(_OpenSetting value)? openSetting,
    TResult Function(_NavigateTo value)? navigateTo,
    TResult Function(_IsExistingCustomer value)? isExistingCustomer,
    TResult Function(_ChangeSize value)? changeSize,
    TResult Function(_Changelogo value)? changelogo,
    required TResult orElse(),
  }) {
    if (enableLocation != null) {
      return enableLocation(this);
    }
    return orElse();
  }
}

abstract class _EnableLocation implements SplashScreenEvent {
  const factory _EnableLocation(final BuildContext context) =
      _$EnableLocationImpl;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$EnableLocationImplCopyWith<_$EnableLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OpenSettingImplCopyWith<$Res> {
  factory _$$OpenSettingImplCopyWith(
          _$OpenSettingImpl value, $Res Function(_$OpenSettingImpl) then) =
      __$$OpenSettingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OpenSettingImplCopyWithImpl<$Res>
    extends _$SplashScreenEventCopyWithImpl<$Res, _$OpenSettingImpl>
    implements _$$OpenSettingImplCopyWith<$Res> {
  __$$OpenSettingImplCopyWithImpl(
      _$OpenSettingImpl _value, $Res Function(_$OpenSettingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OpenSettingImpl implements _OpenSetting {
  const _$OpenSettingImpl();

  @override
  String toString() {
    return 'SplashScreenEvent.openSetting()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OpenSettingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) started,
    required TResult Function(BuildContext context) enableLocation,
    required TResult Function() openSetting,
    required TResult Function(String routeName, BuildContext context)
        navigateTo,
    required TResult Function(BuildContext context) isExistingCustomer,
    required TResult Function(BuildContext context) changeSize,
    required TResult Function(BuildContext context) changelogo,
  }) {
    return openSetting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? started,
    TResult? Function(BuildContext context)? enableLocation,
    TResult? Function()? openSetting,
    TResult? Function(String routeName, BuildContext context)? navigateTo,
    TResult? Function(BuildContext context)? isExistingCustomer,
    TResult? Function(BuildContext context)? changeSize,
    TResult? Function(BuildContext context)? changelogo,
  }) {
    return openSetting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? started,
    TResult Function(BuildContext context)? enableLocation,
    TResult Function()? openSetting,
    TResult Function(String routeName, BuildContext context)? navigateTo,
    TResult Function(BuildContext context)? isExistingCustomer,
    TResult Function(BuildContext context)? changeSize,
    TResult Function(BuildContext context)? changelogo,
    required TResult orElse(),
  }) {
    if (openSetting != null) {
      return openSetting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EnableLocation value) enableLocation,
    required TResult Function(_OpenSetting value) openSetting,
    required TResult Function(_NavigateTo value) navigateTo,
    required TResult Function(_IsExistingCustomer value) isExistingCustomer,
    required TResult Function(_ChangeSize value) changeSize,
    required TResult Function(_Changelogo value) changelogo,
  }) {
    return openSetting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_EnableLocation value)? enableLocation,
    TResult? Function(_OpenSetting value)? openSetting,
    TResult? Function(_NavigateTo value)? navigateTo,
    TResult? Function(_IsExistingCustomer value)? isExistingCustomer,
    TResult? Function(_ChangeSize value)? changeSize,
    TResult? Function(_Changelogo value)? changelogo,
  }) {
    return openSetting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EnableLocation value)? enableLocation,
    TResult Function(_OpenSetting value)? openSetting,
    TResult Function(_NavigateTo value)? navigateTo,
    TResult Function(_IsExistingCustomer value)? isExistingCustomer,
    TResult Function(_ChangeSize value)? changeSize,
    TResult Function(_Changelogo value)? changelogo,
    required TResult orElse(),
  }) {
    if (openSetting != null) {
      return openSetting(this);
    }
    return orElse();
  }
}

abstract class _OpenSetting implements SplashScreenEvent {
  const factory _OpenSetting() = _$OpenSettingImpl;
}

/// @nodoc
abstract class _$$NavigateToImplCopyWith<$Res> {
  factory _$$NavigateToImplCopyWith(
          _$NavigateToImpl value, $Res Function(_$NavigateToImpl) then) =
      __$$NavigateToImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String routeName, BuildContext context});
}

/// @nodoc
class __$$NavigateToImplCopyWithImpl<$Res>
    extends _$SplashScreenEventCopyWithImpl<$Res, _$NavigateToImpl>
    implements _$$NavigateToImplCopyWith<$Res> {
  __$$NavigateToImplCopyWithImpl(
      _$NavigateToImpl _value, $Res Function(_$NavigateToImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routeName = null,
    Object? context = null,
  }) {
    return _then(_$NavigateToImpl(
      routeName: null == routeName
          ? _value.routeName
          : routeName // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$NavigateToImpl implements _NavigateTo {
  const _$NavigateToImpl({required this.routeName, required this.context});

  @override
  final String routeName;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'SplashScreenEvent.navigateTo(routeName: $routeName, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigateToImpl &&
            (identical(other.routeName, routeName) ||
                other.routeName == routeName) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, routeName, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NavigateToImplCopyWith<_$NavigateToImpl> get copyWith =>
      __$$NavigateToImplCopyWithImpl<_$NavigateToImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) started,
    required TResult Function(BuildContext context) enableLocation,
    required TResult Function() openSetting,
    required TResult Function(String routeName, BuildContext context)
        navigateTo,
    required TResult Function(BuildContext context) isExistingCustomer,
    required TResult Function(BuildContext context) changeSize,
    required TResult Function(BuildContext context) changelogo,
  }) {
    return navigateTo(routeName, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? started,
    TResult? Function(BuildContext context)? enableLocation,
    TResult? Function()? openSetting,
    TResult? Function(String routeName, BuildContext context)? navigateTo,
    TResult? Function(BuildContext context)? isExistingCustomer,
    TResult? Function(BuildContext context)? changeSize,
    TResult? Function(BuildContext context)? changelogo,
  }) {
    return navigateTo?.call(routeName, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? started,
    TResult Function(BuildContext context)? enableLocation,
    TResult Function()? openSetting,
    TResult Function(String routeName, BuildContext context)? navigateTo,
    TResult Function(BuildContext context)? isExistingCustomer,
    TResult Function(BuildContext context)? changeSize,
    TResult Function(BuildContext context)? changelogo,
    required TResult orElse(),
  }) {
    if (navigateTo != null) {
      return navigateTo(routeName, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EnableLocation value) enableLocation,
    required TResult Function(_OpenSetting value) openSetting,
    required TResult Function(_NavigateTo value) navigateTo,
    required TResult Function(_IsExistingCustomer value) isExistingCustomer,
    required TResult Function(_ChangeSize value) changeSize,
    required TResult Function(_Changelogo value) changelogo,
  }) {
    return navigateTo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_EnableLocation value)? enableLocation,
    TResult? Function(_OpenSetting value)? openSetting,
    TResult? Function(_NavigateTo value)? navigateTo,
    TResult? Function(_IsExistingCustomer value)? isExistingCustomer,
    TResult? Function(_ChangeSize value)? changeSize,
    TResult? Function(_Changelogo value)? changelogo,
  }) {
    return navigateTo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EnableLocation value)? enableLocation,
    TResult Function(_OpenSetting value)? openSetting,
    TResult Function(_NavigateTo value)? navigateTo,
    TResult Function(_IsExistingCustomer value)? isExistingCustomer,
    TResult Function(_ChangeSize value)? changeSize,
    TResult Function(_Changelogo value)? changelogo,
    required TResult orElse(),
  }) {
    if (navigateTo != null) {
      return navigateTo(this);
    }
    return orElse();
  }
}

abstract class _NavigateTo implements SplashScreenEvent {
  const factory _NavigateTo(
      {required final String routeName,
      required final BuildContext context}) = _$NavigateToImpl;

  String get routeName;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$NavigateToImplCopyWith<_$NavigateToImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IsExistingCustomerImplCopyWith<$Res> {
  factory _$$IsExistingCustomerImplCopyWith(_$IsExistingCustomerImpl value,
          $Res Function(_$IsExistingCustomerImpl) then) =
      __$$IsExistingCustomerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$IsExistingCustomerImplCopyWithImpl<$Res>
    extends _$SplashScreenEventCopyWithImpl<$Res, _$IsExistingCustomerImpl>
    implements _$$IsExistingCustomerImplCopyWith<$Res> {
  __$$IsExistingCustomerImplCopyWithImpl(_$IsExistingCustomerImpl _value,
      $Res Function(_$IsExistingCustomerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$IsExistingCustomerImpl(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$IsExistingCustomerImpl implements _IsExistingCustomer {
  const _$IsExistingCustomerImpl(this.context);

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'SplashScreenEvent.isExistingCustomer(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsExistingCustomerImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IsExistingCustomerImplCopyWith<_$IsExistingCustomerImpl> get copyWith =>
      __$$IsExistingCustomerImplCopyWithImpl<_$IsExistingCustomerImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) started,
    required TResult Function(BuildContext context) enableLocation,
    required TResult Function() openSetting,
    required TResult Function(String routeName, BuildContext context)
        navigateTo,
    required TResult Function(BuildContext context) isExistingCustomer,
    required TResult Function(BuildContext context) changeSize,
    required TResult Function(BuildContext context) changelogo,
  }) {
    return isExistingCustomer(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? started,
    TResult? Function(BuildContext context)? enableLocation,
    TResult? Function()? openSetting,
    TResult? Function(String routeName, BuildContext context)? navigateTo,
    TResult? Function(BuildContext context)? isExistingCustomer,
    TResult? Function(BuildContext context)? changeSize,
    TResult? Function(BuildContext context)? changelogo,
  }) {
    return isExistingCustomer?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? started,
    TResult Function(BuildContext context)? enableLocation,
    TResult Function()? openSetting,
    TResult Function(String routeName, BuildContext context)? navigateTo,
    TResult Function(BuildContext context)? isExistingCustomer,
    TResult Function(BuildContext context)? changeSize,
    TResult Function(BuildContext context)? changelogo,
    required TResult orElse(),
  }) {
    if (isExistingCustomer != null) {
      return isExistingCustomer(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EnableLocation value) enableLocation,
    required TResult Function(_OpenSetting value) openSetting,
    required TResult Function(_NavigateTo value) navigateTo,
    required TResult Function(_IsExistingCustomer value) isExistingCustomer,
    required TResult Function(_ChangeSize value) changeSize,
    required TResult Function(_Changelogo value) changelogo,
  }) {
    return isExistingCustomer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_EnableLocation value)? enableLocation,
    TResult? Function(_OpenSetting value)? openSetting,
    TResult? Function(_NavigateTo value)? navigateTo,
    TResult? Function(_IsExistingCustomer value)? isExistingCustomer,
    TResult? Function(_ChangeSize value)? changeSize,
    TResult? Function(_Changelogo value)? changelogo,
  }) {
    return isExistingCustomer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EnableLocation value)? enableLocation,
    TResult Function(_OpenSetting value)? openSetting,
    TResult Function(_NavigateTo value)? navigateTo,
    TResult Function(_IsExistingCustomer value)? isExistingCustomer,
    TResult Function(_ChangeSize value)? changeSize,
    TResult Function(_Changelogo value)? changelogo,
    required TResult orElse(),
  }) {
    if (isExistingCustomer != null) {
      return isExistingCustomer(this);
    }
    return orElse();
  }
}

abstract class _IsExistingCustomer implements SplashScreenEvent {
  const factory _IsExistingCustomer(final BuildContext context) =
      _$IsExistingCustomerImpl;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$IsExistingCustomerImplCopyWith<_$IsExistingCustomerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeSizeImplCopyWith<$Res> {
  factory _$$ChangeSizeImplCopyWith(
          _$ChangeSizeImpl value, $Res Function(_$ChangeSizeImpl) then) =
      __$$ChangeSizeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$ChangeSizeImplCopyWithImpl<$Res>
    extends _$SplashScreenEventCopyWithImpl<$Res, _$ChangeSizeImpl>
    implements _$$ChangeSizeImplCopyWith<$Res> {
  __$$ChangeSizeImplCopyWithImpl(
      _$ChangeSizeImpl _value, $Res Function(_$ChangeSizeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$ChangeSizeImpl(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$ChangeSizeImpl implements _ChangeSize {
  const _$ChangeSizeImpl(this.context);

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'SplashScreenEvent.changeSize(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeSizeImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeSizeImplCopyWith<_$ChangeSizeImpl> get copyWith =>
      __$$ChangeSizeImplCopyWithImpl<_$ChangeSizeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) started,
    required TResult Function(BuildContext context) enableLocation,
    required TResult Function() openSetting,
    required TResult Function(String routeName, BuildContext context)
        navigateTo,
    required TResult Function(BuildContext context) isExistingCustomer,
    required TResult Function(BuildContext context) changeSize,
    required TResult Function(BuildContext context) changelogo,
  }) {
    return changeSize(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? started,
    TResult? Function(BuildContext context)? enableLocation,
    TResult? Function()? openSetting,
    TResult? Function(String routeName, BuildContext context)? navigateTo,
    TResult? Function(BuildContext context)? isExistingCustomer,
    TResult? Function(BuildContext context)? changeSize,
    TResult? Function(BuildContext context)? changelogo,
  }) {
    return changeSize?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? started,
    TResult Function(BuildContext context)? enableLocation,
    TResult Function()? openSetting,
    TResult Function(String routeName, BuildContext context)? navigateTo,
    TResult Function(BuildContext context)? isExistingCustomer,
    TResult Function(BuildContext context)? changeSize,
    TResult Function(BuildContext context)? changelogo,
    required TResult orElse(),
  }) {
    if (changeSize != null) {
      return changeSize(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EnableLocation value) enableLocation,
    required TResult Function(_OpenSetting value) openSetting,
    required TResult Function(_NavigateTo value) navigateTo,
    required TResult Function(_IsExistingCustomer value) isExistingCustomer,
    required TResult Function(_ChangeSize value) changeSize,
    required TResult Function(_Changelogo value) changelogo,
  }) {
    return changeSize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_EnableLocation value)? enableLocation,
    TResult? Function(_OpenSetting value)? openSetting,
    TResult? Function(_NavigateTo value)? navigateTo,
    TResult? Function(_IsExistingCustomer value)? isExistingCustomer,
    TResult? Function(_ChangeSize value)? changeSize,
    TResult? Function(_Changelogo value)? changelogo,
  }) {
    return changeSize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EnableLocation value)? enableLocation,
    TResult Function(_OpenSetting value)? openSetting,
    TResult Function(_NavigateTo value)? navigateTo,
    TResult Function(_IsExistingCustomer value)? isExistingCustomer,
    TResult Function(_ChangeSize value)? changeSize,
    TResult Function(_Changelogo value)? changelogo,
    required TResult orElse(),
  }) {
    if (changeSize != null) {
      return changeSize(this);
    }
    return orElse();
  }
}

abstract class _ChangeSize implements SplashScreenEvent {
  const factory _ChangeSize(final BuildContext context) = _$ChangeSizeImpl;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$ChangeSizeImplCopyWith<_$ChangeSizeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangelogoImplCopyWith<$Res> {
  factory _$$ChangelogoImplCopyWith(
          _$ChangelogoImpl value, $Res Function(_$ChangelogoImpl) then) =
      __$$ChangelogoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$ChangelogoImplCopyWithImpl<$Res>
    extends _$SplashScreenEventCopyWithImpl<$Res, _$ChangelogoImpl>
    implements _$$ChangelogoImplCopyWith<$Res> {
  __$$ChangelogoImplCopyWithImpl(
      _$ChangelogoImpl _value, $Res Function(_$ChangelogoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$ChangelogoImpl(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$ChangelogoImpl implements _Changelogo {
  const _$ChangelogoImpl(this.context);

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'SplashScreenEvent.changelogo(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangelogoImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangelogoImplCopyWith<_$ChangelogoImpl> get copyWith =>
      __$$ChangelogoImplCopyWithImpl<_$ChangelogoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) started,
    required TResult Function(BuildContext context) enableLocation,
    required TResult Function() openSetting,
    required TResult Function(String routeName, BuildContext context)
        navigateTo,
    required TResult Function(BuildContext context) isExistingCustomer,
    required TResult Function(BuildContext context) changeSize,
    required TResult Function(BuildContext context) changelogo,
  }) {
    return changelogo(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? started,
    TResult? Function(BuildContext context)? enableLocation,
    TResult? Function()? openSetting,
    TResult? Function(String routeName, BuildContext context)? navigateTo,
    TResult? Function(BuildContext context)? isExistingCustomer,
    TResult? Function(BuildContext context)? changeSize,
    TResult? Function(BuildContext context)? changelogo,
  }) {
    return changelogo?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? started,
    TResult Function(BuildContext context)? enableLocation,
    TResult Function()? openSetting,
    TResult Function(String routeName, BuildContext context)? navigateTo,
    TResult Function(BuildContext context)? isExistingCustomer,
    TResult Function(BuildContext context)? changeSize,
    TResult Function(BuildContext context)? changelogo,
    required TResult orElse(),
  }) {
    if (changelogo != null) {
      return changelogo(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EnableLocation value) enableLocation,
    required TResult Function(_OpenSetting value) openSetting,
    required TResult Function(_NavigateTo value) navigateTo,
    required TResult Function(_IsExistingCustomer value) isExistingCustomer,
    required TResult Function(_ChangeSize value) changeSize,
    required TResult Function(_Changelogo value) changelogo,
  }) {
    return changelogo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_EnableLocation value)? enableLocation,
    TResult? Function(_OpenSetting value)? openSetting,
    TResult? Function(_NavigateTo value)? navigateTo,
    TResult? Function(_IsExistingCustomer value)? isExistingCustomer,
    TResult? Function(_ChangeSize value)? changeSize,
    TResult? Function(_Changelogo value)? changelogo,
  }) {
    return changelogo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EnableLocation value)? enableLocation,
    TResult Function(_OpenSetting value)? openSetting,
    TResult Function(_NavigateTo value)? navigateTo,
    TResult Function(_IsExistingCustomer value)? isExistingCustomer,
    TResult Function(_ChangeSize value)? changeSize,
    TResult Function(_Changelogo value)? changelogo,
    required TResult orElse(),
  }) {
    if (changelogo != null) {
      return changelogo(this);
    }
    return orElse();
  }
}

abstract class _Changelogo implements SplashScreenEvent {
  const factory _Changelogo(final BuildContext context) = _$ChangelogoImpl;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$ChangelogoImplCopyWith<_$ChangelogoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SplashScreenState {
  bool get networkError => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  bool get logoChange => throw _privateConstructorUsedError;
  bool get sizechange => throw _privateConstructorUsedError;
  bool get settingsOpened => throw _privateConstructorUsedError;
  bool? get locationServiceDenied => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SplashScreenStateCopyWith<SplashScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashScreenStateCopyWith<$Res> {
  factory $SplashScreenStateCopyWith(
          SplashScreenState value, $Res Function(SplashScreenState) then) =
      _$SplashScreenStateCopyWithImpl<$Res, SplashScreenState>;
  @useResult
  $Res call(
      {bool networkError,
      bool success,
      bool logoChange,
      bool sizechange,
      bool settingsOpened,
      bool? locationServiceDenied});
}

/// @nodoc
class _$SplashScreenStateCopyWithImpl<$Res, $Val extends SplashScreenState>
    implements $SplashScreenStateCopyWith<$Res> {
  _$SplashScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? networkError = null,
    Object? success = null,
    Object? logoChange = null,
    Object? sizechange = null,
    Object? settingsOpened = null,
    Object? locationServiceDenied = freezed,
  }) {
    return _then(_value.copyWith(
      networkError: null == networkError
          ? _value.networkError
          : networkError // ignore: cast_nullable_to_non_nullable
              as bool,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      logoChange: null == logoChange
          ? _value.logoChange
          : logoChange // ignore: cast_nullable_to_non_nullable
              as bool,
      sizechange: null == sizechange
          ? _value.sizechange
          : sizechange // ignore: cast_nullable_to_non_nullable
              as bool,
      settingsOpened: null == settingsOpened
          ? _value.settingsOpened
          : settingsOpened // ignore: cast_nullable_to_non_nullable
              as bool,
      locationServiceDenied: freezed == locationServiceDenied
          ? _value.locationServiceDenied
          : locationServiceDenied // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SplashScreenStateImplCopyWith<$Res>
    implements $SplashScreenStateCopyWith<$Res> {
  factory _$$SplashScreenStateImplCopyWith(_$SplashScreenStateImpl value,
          $Res Function(_$SplashScreenStateImpl) then) =
      __$$SplashScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool networkError,
      bool success,
      bool logoChange,
      bool sizechange,
      bool settingsOpened,
      bool? locationServiceDenied});
}

/// @nodoc
class __$$SplashScreenStateImplCopyWithImpl<$Res>
    extends _$SplashScreenStateCopyWithImpl<$Res, _$SplashScreenStateImpl>
    implements _$$SplashScreenStateImplCopyWith<$Res> {
  __$$SplashScreenStateImplCopyWithImpl(_$SplashScreenStateImpl _value,
      $Res Function(_$SplashScreenStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? networkError = null,
    Object? success = null,
    Object? logoChange = null,
    Object? sizechange = null,
    Object? settingsOpened = null,
    Object? locationServiceDenied = freezed,
  }) {
    return _then(_$SplashScreenStateImpl(
      networkError: null == networkError
          ? _value.networkError
          : networkError // ignore: cast_nullable_to_non_nullable
              as bool,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      logoChange: null == logoChange
          ? _value.logoChange
          : logoChange // ignore: cast_nullable_to_non_nullable
              as bool,
      sizechange: null == sizechange
          ? _value.sizechange
          : sizechange // ignore: cast_nullable_to_non_nullable
              as bool,
      settingsOpened: null == settingsOpened
          ? _value.settingsOpened
          : settingsOpened // ignore: cast_nullable_to_non_nullable
              as bool,
      locationServiceDenied: freezed == locationServiceDenied
          ? _value.locationServiceDenied
          : locationServiceDenied // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$SplashScreenStateImpl implements _SplashScreenState {
  const _$SplashScreenStateImpl(
      {required this.networkError,
      required this.success,
      required this.logoChange,
      required this.sizechange,
      required this.settingsOpened,
      this.locationServiceDenied});

  @override
  final bool networkError;
  @override
  final bool success;
  @override
  final bool logoChange;
  @override
  final bool sizechange;
  @override
  final bool settingsOpened;
  @override
  final bool? locationServiceDenied;

  @override
  String toString() {
    return 'SplashScreenState(networkError: $networkError, success: $success, logoChange: $logoChange, sizechange: $sizechange, settingsOpened: $settingsOpened, locationServiceDenied: $locationServiceDenied)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SplashScreenStateImpl &&
            (identical(other.networkError, networkError) ||
                other.networkError == networkError) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.logoChange, logoChange) ||
                other.logoChange == logoChange) &&
            (identical(other.sizechange, sizechange) ||
                other.sizechange == sizechange) &&
            (identical(other.settingsOpened, settingsOpened) ||
                other.settingsOpened == settingsOpened) &&
            (identical(other.locationServiceDenied, locationServiceDenied) ||
                other.locationServiceDenied == locationServiceDenied));
  }

  @override
  int get hashCode => Object.hash(runtimeType, networkError, success,
      logoChange, sizechange, settingsOpened, locationServiceDenied);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SplashScreenStateImplCopyWith<_$SplashScreenStateImpl> get copyWith =>
      __$$SplashScreenStateImplCopyWithImpl<_$SplashScreenStateImpl>(
          this, _$identity);
}

abstract class _SplashScreenState implements SplashScreenState {
  const factory _SplashScreenState(
      {required final bool networkError,
      required final bool success,
      required final bool logoChange,
      required final bool sizechange,
      required final bool settingsOpened,
      final bool? locationServiceDenied}) = _$SplashScreenStateImpl;

  @override
  bool get networkError;
  @override
  bool get success;
  @override
  bool get logoChange;
  @override
  bool get sizechange;
  @override
  bool get settingsOpened;
  @override
  bool? get locationServiceDenied;
  @override
  @JsonKey(ignore: true)
  _$$SplashScreenStateImplCopyWith<_$SplashScreenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_phone_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OnboardingPhoneEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber, BuildContext context) sendOtp,
    required TResult Function() resendOtp,
    required TResult Function(String otp, BuildContext context) verifyOtp,
    required TResult Function(String name, BuildContext context) nameStoring,
    required TResult Function(
            BuildContext context,
            String? appLanguage,
            String? fullName,
            String? gender,
            String? dateOfBirth,
            String? email,
            String? address,
            String? city,
            String? state,
            String? pincode,
            String? companyName,
            String? businessTurnOver,
            String? industry,
            String? gstNumber,
            String? businessAddress,
            String? businessCity,
            String? businesState,
            String? businessPincode,
            int? entrepreneurType)
        updateProfile,
    required TResult Function(BuildContext context) getProfile,
    required TResult Function(BuildContext context) clearPhoneNumber,
    required TResult Function(int phonevalidation, int count) phoneValidation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber, BuildContext context)? sendOtp,
    TResult? Function()? resendOtp,
    TResult? Function(String otp, BuildContext context)? verifyOtp,
    TResult? Function(String name, BuildContext context)? nameStoring,
    TResult? Function(
            BuildContext context,
            String? appLanguage,
            String? fullName,
            String? gender,
            String? dateOfBirth,
            String? email,
            String? address,
            String? city,
            String? state,
            String? pincode,
            String? companyName,
            String? businessTurnOver,
            String? industry,
            String? gstNumber,
            String? businessAddress,
            String? businessCity,
            String? businesState,
            String? businessPincode,
            int? entrepreneurType)?
        updateProfile,
    TResult? Function(BuildContext context)? getProfile,
    TResult? Function(BuildContext context)? clearPhoneNumber,
    TResult? Function(int phonevalidation, int count)? phoneValidation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber, BuildContext context)? sendOtp,
    TResult Function()? resendOtp,
    TResult Function(String otp, BuildContext context)? verifyOtp,
    TResult Function(String name, BuildContext context)? nameStoring,
    TResult Function(
            BuildContext context,
            String? appLanguage,
            String? fullName,
            String? gender,
            String? dateOfBirth,
            String? email,
            String? address,
            String? city,
            String? state,
            String? pincode,
            String? companyName,
            String? businessTurnOver,
            String? industry,
            String? gstNumber,
            String? businessAddress,
            String? businessCity,
            String? businesState,
            String? businessPincode,
            int? entrepreneurType)?
        updateProfile,
    TResult Function(BuildContext context)? getProfile,
    TResult Function(BuildContext context)? clearPhoneNumber,
    TResult Function(int phonevalidation, int count)? phoneValidation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_NameStoring value) nameStoring,
    required TResult Function(_UpdateProfile value) updateProfile,
    required TResult Function(_GetProfile value) getProfile,
    required TResult Function(_ClearPhoneNumber value) clearPhoneNumber,
    required TResult Function(_PhoneValidation value) phoneValidation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_NameStoring value)? nameStoring,
    TResult? Function(_UpdateProfile value)? updateProfile,
    TResult? Function(_GetProfile value)? getProfile,
    TResult? Function(_ClearPhoneNumber value)? clearPhoneNumber,
    TResult? Function(_PhoneValidation value)? phoneValidation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_NameStoring value)? nameStoring,
    TResult Function(_UpdateProfile value)? updateProfile,
    TResult Function(_GetProfile value)? getProfile,
    TResult Function(_ClearPhoneNumber value)? clearPhoneNumber,
    TResult Function(_PhoneValidation value)? phoneValidation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingPhoneEventCopyWith<$Res> {
  factory $OnboardingPhoneEventCopyWith(OnboardingPhoneEvent value,
          $Res Function(OnboardingPhoneEvent) then) =
      _$OnboardingPhoneEventCopyWithImpl<$Res, OnboardingPhoneEvent>;
}

/// @nodoc
class _$OnboardingPhoneEventCopyWithImpl<$Res,
        $Val extends OnboardingPhoneEvent>
    implements $OnboardingPhoneEventCopyWith<$Res> {
  _$OnboardingPhoneEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SendOtpImplCopyWith<$Res> {
  factory _$$SendOtpImplCopyWith(
          _$SendOtpImpl value, $Res Function(_$SendOtpImpl) then) =
      __$$SendOtpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber, BuildContext context});
}

/// @nodoc
class __$$SendOtpImplCopyWithImpl<$Res>
    extends _$OnboardingPhoneEventCopyWithImpl<$Res, _$SendOtpImpl>
    implements _$$SendOtpImplCopyWith<$Res> {
  __$$SendOtpImplCopyWithImpl(
      _$SendOtpImpl _value, $Res Function(_$SendOtpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? context = null,
  }) {
    return _then(_$SendOtpImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$SendOtpImpl implements _SendOtp {
  const _$SendOtpImpl({required this.phoneNumber, required this.context});

  @override
  final String phoneNumber;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'OnboardingPhoneEvent.sendOtp(phoneNumber: $phoneNumber, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendOtpImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendOtpImplCopyWith<_$SendOtpImpl> get copyWith =>
      __$$SendOtpImplCopyWithImpl<_$SendOtpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber, BuildContext context) sendOtp,
    required TResult Function() resendOtp,
    required TResult Function(String otp, BuildContext context) verifyOtp,
    required TResult Function(String name, BuildContext context) nameStoring,
    required TResult Function(
            BuildContext context,
            String? appLanguage,
            String? fullName,
            String? gender,
            String? dateOfBirth,
            String? email,
            String? address,
            String? city,
            String? state,
            String? pincode,
            String? companyName,
            String? businessTurnOver,
            String? industry,
            String? gstNumber,
            String? businessAddress,
            String? businessCity,
            String? businesState,
            String? businessPincode,
            int? entrepreneurType)
        updateProfile,
    required TResult Function(BuildContext context) getProfile,
    required TResult Function(BuildContext context) clearPhoneNumber,
    required TResult Function(int phonevalidation, int count) phoneValidation,
  }) {
    return sendOtp(phoneNumber, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber, BuildContext context)? sendOtp,
    TResult? Function()? resendOtp,
    TResult? Function(String otp, BuildContext context)? verifyOtp,
    TResult? Function(String name, BuildContext context)? nameStoring,
    TResult? Function(
            BuildContext context,
            String? appLanguage,
            String? fullName,
            String? gender,
            String? dateOfBirth,
            String? email,
            String? address,
            String? city,
            String? state,
            String? pincode,
            String? companyName,
            String? businessTurnOver,
            String? industry,
            String? gstNumber,
            String? businessAddress,
            String? businessCity,
            String? businesState,
            String? businessPincode,
            int? entrepreneurType)?
        updateProfile,
    TResult? Function(BuildContext context)? getProfile,
    TResult? Function(BuildContext context)? clearPhoneNumber,
    TResult? Function(int phonevalidation, int count)? phoneValidation,
  }) {
    return sendOtp?.call(phoneNumber, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber, BuildContext context)? sendOtp,
    TResult Function()? resendOtp,
    TResult Function(String otp, BuildContext context)? verifyOtp,
    TResult Function(String name, BuildContext context)? nameStoring,
    TResult Function(
            BuildContext context,
            String? appLanguage,
            String? fullName,
            String? gender,
            String? dateOfBirth,
            String? email,
            String? address,
            String? city,
            String? state,
            String? pincode,
            String? companyName,
            String? businessTurnOver,
            String? industry,
            String? gstNumber,
            String? businessAddress,
            String? businessCity,
            String? businesState,
            String? businessPincode,
            int? entrepreneurType)?
        updateProfile,
    TResult Function(BuildContext context)? getProfile,
    TResult Function(BuildContext context)? clearPhoneNumber,
    TResult Function(int phonevalidation, int count)? phoneValidation,
    required TResult orElse(),
  }) {
    if (sendOtp != null) {
      return sendOtp(phoneNumber, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_NameStoring value) nameStoring,
    required TResult Function(_UpdateProfile value) updateProfile,
    required TResult Function(_GetProfile value) getProfile,
    required TResult Function(_ClearPhoneNumber value) clearPhoneNumber,
    required TResult Function(_PhoneValidation value) phoneValidation,
  }) {
    return sendOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_NameStoring value)? nameStoring,
    TResult? Function(_UpdateProfile value)? updateProfile,
    TResult? Function(_GetProfile value)? getProfile,
    TResult? Function(_ClearPhoneNumber value)? clearPhoneNumber,
    TResult? Function(_PhoneValidation value)? phoneValidation,
  }) {
    return sendOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_NameStoring value)? nameStoring,
    TResult Function(_UpdateProfile value)? updateProfile,
    TResult Function(_GetProfile value)? getProfile,
    TResult Function(_ClearPhoneNumber value)? clearPhoneNumber,
    TResult Function(_PhoneValidation value)? phoneValidation,
    required TResult orElse(),
  }) {
    if (sendOtp != null) {
      return sendOtp(this);
    }
    return orElse();
  }
}

abstract class _SendOtp implements OnboardingPhoneEvent {
  const factory _SendOtp(
      {required final String phoneNumber,
      required final BuildContext context}) = _$SendOtpImpl;

  String get phoneNumber;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$SendOtpImplCopyWith<_$SendOtpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResendOtpImplCopyWith<$Res> {
  factory _$$ResendOtpImplCopyWith(
          _$ResendOtpImpl value, $Res Function(_$ResendOtpImpl) then) =
      __$$ResendOtpImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResendOtpImplCopyWithImpl<$Res>
    extends _$OnboardingPhoneEventCopyWithImpl<$Res, _$ResendOtpImpl>
    implements _$$ResendOtpImplCopyWith<$Res> {
  __$$ResendOtpImplCopyWithImpl(
      _$ResendOtpImpl _value, $Res Function(_$ResendOtpImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResendOtpImpl implements _ResendOtp {
  const _$ResendOtpImpl();

  @override
  String toString() {
    return 'OnboardingPhoneEvent.resendOtp()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResendOtpImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber, BuildContext context) sendOtp,
    required TResult Function() resendOtp,
    required TResult Function(String otp, BuildContext context) verifyOtp,
    required TResult Function(String name, BuildContext context) nameStoring,
    required TResult Function(
            BuildContext context,
            String? appLanguage,
            String? fullName,
            String? gender,
            String? dateOfBirth,
            String? email,
            String? address,
            String? city,
            String? state,
            String? pincode,
            String? companyName,
            String? businessTurnOver,
            String? industry,
            String? gstNumber,
            String? businessAddress,
            String? businessCity,
            String? businesState,
            String? businessPincode,
            int? entrepreneurType)
        updateProfile,
    required TResult Function(BuildContext context) getProfile,
    required TResult Function(BuildContext context) clearPhoneNumber,
    required TResult Function(int phonevalidation, int count) phoneValidation,
  }) {
    return resendOtp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber, BuildContext context)? sendOtp,
    TResult? Function()? resendOtp,
    TResult? Function(String otp, BuildContext context)? verifyOtp,
    TResult? Function(String name, BuildContext context)? nameStoring,
    TResult? Function(
            BuildContext context,
            String? appLanguage,
            String? fullName,
            String? gender,
            String? dateOfBirth,
            String? email,
            String? address,
            String? city,
            String? state,
            String? pincode,
            String? companyName,
            String? businessTurnOver,
            String? industry,
            String? gstNumber,
            String? businessAddress,
            String? businessCity,
            String? businesState,
            String? businessPincode,
            int? entrepreneurType)?
        updateProfile,
    TResult? Function(BuildContext context)? getProfile,
    TResult? Function(BuildContext context)? clearPhoneNumber,
    TResult? Function(int phonevalidation, int count)? phoneValidation,
  }) {
    return resendOtp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber, BuildContext context)? sendOtp,
    TResult Function()? resendOtp,
    TResult Function(String otp, BuildContext context)? verifyOtp,
    TResult Function(String name, BuildContext context)? nameStoring,
    TResult Function(
            BuildContext context,
            String? appLanguage,
            String? fullName,
            String? gender,
            String? dateOfBirth,
            String? email,
            String? address,
            String? city,
            String? state,
            String? pincode,
            String? companyName,
            String? businessTurnOver,
            String? industry,
            String? gstNumber,
            String? businessAddress,
            String? businessCity,
            String? businesState,
            String? businessPincode,
            int? entrepreneurType)?
        updateProfile,
    TResult Function(BuildContext context)? getProfile,
    TResult Function(BuildContext context)? clearPhoneNumber,
    TResult Function(int phonevalidation, int count)? phoneValidation,
    required TResult orElse(),
  }) {
    if (resendOtp != null) {
      return resendOtp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_NameStoring value) nameStoring,
    required TResult Function(_UpdateProfile value) updateProfile,
    required TResult Function(_GetProfile value) getProfile,
    required TResult Function(_ClearPhoneNumber value) clearPhoneNumber,
    required TResult Function(_PhoneValidation value) phoneValidation,
  }) {
    return resendOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_NameStoring value)? nameStoring,
    TResult? Function(_UpdateProfile value)? updateProfile,
    TResult? Function(_GetProfile value)? getProfile,
    TResult? Function(_ClearPhoneNumber value)? clearPhoneNumber,
    TResult? Function(_PhoneValidation value)? phoneValidation,
  }) {
    return resendOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_NameStoring value)? nameStoring,
    TResult Function(_UpdateProfile value)? updateProfile,
    TResult Function(_GetProfile value)? getProfile,
    TResult Function(_ClearPhoneNumber value)? clearPhoneNumber,
    TResult Function(_PhoneValidation value)? phoneValidation,
    required TResult orElse(),
  }) {
    if (resendOtp != null) {
      return resendOtp(this);
    }
    return orElse();
  }
}

abstract class _ResendOtp implements OnboardingPhoneEvent {
  const factory _ResendOtp() = _$ResendOtpImpl;
}

/// @nodoc
abstract class _$$VerifyOtpImplCopyWith<$Res> {
  factory _$$VerifyOtpImplCopyWith(
          _$VerifyOtpImpl value, $Res Function(_$VerifyOtpImpl) then) =
      __$$VerifyOtpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String otp, BuildContext context});
}

/// @nodoc
class __$$VerifyOtpImplCopyWithImpl<$Res>
    extends _$OnboardingPhoneEventCopyWithImpl<$Res, _$VerifyOtpImpl>
    implements _$$VerifyOtpImplCopyWith<$Res> {
  __$$VerifyOtpImplCopyWithImpl(
      _$VerifyOtpImpl _value, $Res Function(_$VerifyOtpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
    Object? context = null,
  }) {
    return _then(_$VerifyOtpImpl(
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$VerifyOtpImpl implements _VerifyOtp {
  const _$VerifyOtpImpl({required this.otp, required this.context});

  @override
  final String otp;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'OnboardingPhoneEvent.verifyOtp(otp: $otp, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyOtpImpl &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otp, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyOtpImplCopyWith<_$VerifyOtpImpl> get copyWith =>
      __$$VerifyOtpImplCopyWithImpl<_$VerifyOtpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber, BuildContext context) sendOtp,
    required TResult Function() resendOtp,
    required TResult Function(String otp, BuildContext context) verifyOtp,
    required TResult Function(String name, BuildContext context) nameStoring,
    required TResult Function(
            BuildContext context,
            String? appLanguage,
            String? fullName,
            String? gender,
            String? dateOfBirth,
            String? email,
            String? address,
            String? city,
            String? state,
            String? pincode,
            String? companyName,
            String? businessTurnOver,
            String? industry,
            String? gstNumber,
            String? businessAddress,
            String? businessCity,
            String? businesState,
            String? businessPincode,
            int? entrepreneurType)
        updateProfile,
    required TResult Function(BuildContext context) getProfile,
    required TResult Function(BuildContext context) clearPhoneNumber,
    required TResult Function(int phonevalidation, int count) phoneValidation,
  }) {
    return verifyOtp(otp, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber, BuildContext context)? sendOtp,
    TResult? Function()? resendOtp,
    TResult? Function(String otp, BuildContext context)? verifyOtp,
    TResult? Function(String name, BuildContext context)? nameStoring,
    TResult? Function(
            BuildContext context,
            String? appLanguage,
            String? fullName,
            String? gender,
            String? dateOfBirth,
            String? email,
            String? address,
            String? city,
            String? state,
            String? pincode,
            String? companyName,
            String? businessTurnOver,
            String? industry,
            String? gstNumber,
            String? businessAddress,
            String? businessCity,
            String? businesState,
            String? businessPincode,
            int? entrepreneurType)?
        updateProfile,
    TResult? Function(BuildContext context)? getProfile,
    TResult? Function(BuildContext context)? clearPhoneNumber,
    TResult? Function(int phonevalidation, int count)? phoneValidation,
  }) {
    return verifyOtp?.call(otp, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber, BuildContext context)? sendOtp,
    TResult Function()? resendOtp,
    TResult Function(String otp, BuildContext context)? verifyOtp,
    TResult Function(String name, BuildContext context)? nameStoring,
    TResult Function(
            BuildContext context,
            String? appLanguage,
            String? fullName,
            String? gender,
            String? dateOfBirth,
            String? email,
            String? address,
            String? city,
            String? state,
            String? pincode,
            String? companyName,
            String? businessTurnOver,
            String? industry,
            String? gstNumber,
            String? businessAddress,
            String? businessCity,
            String? businesState,
            String? businessPincode,
            int? entrepreneurType)?
        updateProfile,
    TResult Function(BuildContext context)? getProfile,
    TResult Function(BuildContext context)? clearPhoneNumber,
    TResult Function(int phonevalidation, int count)? phoneValidation,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp(otp, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_NameStoring value) nameStoring,
    required TResult Function(_UpdateProfile value) updateProfile,
    required TResult Function(_GetProfile value) getProfile,
    required TResult Function(_ClearPhoneNumber value) clearPhoneNumber,
    required TResult Function(_PhoneValidation value) phoneValidation,
  }) {
    return verifyOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_NameStoring value)? nameStoring,
    TResult? Function(_UpdateProfile value)? updateProfile,
    TResult? Function(_GetProfile value)? getProfile,
    TResult? Function(_ClearPhoneNumber value)? clearPhoneNumber,
    TResult? Function(_PhoneValidation value)? phoneValidation,
  }) {
    return verifyOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_NameStoring value)? nameStoring,
    TResult Function(_UpdateProfile value)? updateProfile,
    TResult Function(_GetProfile value)? getProfile,
    TResult Function(_ClearPhoneNumber value)? clearPhoneNumber,
    TResult Function(_PhoneValidation value)? phoneValidation,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp(this);
    }
    return orElse();
  }
}

abstract class _VerifyOtp implements OnboardingPhoneEvent {
  const factory _VerifyOtp(
      {required final String otp,
      required final BuildContext context}) = _$VerifyOtpImpl;

  String get otp;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$VerifyOtpImplCopyWith<_$VerifyOtpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NameStoringImplCopyWith<$Res> {
  factory _$$NameStoringImplCopyWith(
          _$NameStoringImpl value, $Res Function(_$NameStoringImpl) then) =
      __$$NameStoringImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, BuildContext context});
}

/// @nodoc
class __$$NameStoringImplCopyWithImpl<$Res>
    extends _$OnboardingPhoneEventCopyWithImpl<$Res, _$NameStoringImpl>
    implements _$$NameStoringImplCopyWith<$Res> {
  __$$NameStoringImplCopyWithImpl(
      _$NameStoringImpl _value, $Res Function(_$NameStoringImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? context = null,
  }) {
    return _then(_$NameStoringImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$NameStoringImpl implements _NameStoring {
  const _$NameStoringImpl({required this.name, required this.context});

  @override
  final String name;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'OnboardingPhoneEvent.nameStoring(name: $name, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameStoringImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NameStoringImplCopyWith<_$NameStoringImpl> get copyWith =>
      __$$NameStoringImplCopyWithImpl<_$NameStoringImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber, BuildContext context) sendOtp,
    required TResult Function() resendOtp,
    required TResult Function(String otp, BuildContext context) verifyOtp,
    required TResult Function(String name, BuildContext context) nameStoring,
    required TResult Function(
            BuildContext context,
            String? appLanguage,
            String? fullName,
            String? gender,
            String? dateOfBirth,
            String? email,
            String? address,
            String? city,
            String? state,
            String? pincode,
            String? companyName,
            String? businessTurnOver,
            String? industry,
            String? gstNumber,
            String? businessAddress,
            String? businessCity,
            String? businesState,
            String? businessPincode,
            int? entrepreneurType)
        updateProfile,
    required TResult Function(BuildContext context) getProfile,
    required TResult Function(BuildContext context) clearPhoneNumber,
    required TResult Function(int phonevalidation, int count) phoneValidation,
  }) {
    return nameStoring(name, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber, BuildContext context)? sendOtp,
    TResult? Function()? resendOtp,
    TResult? Function(String otp, BuildContext context)? verifyOtp,
    TResult? Function(String name, BuildContext context)? nameStoring,
    TResult? Function(
            BuildContext context,
            String? appLanguage,
            String? fullName,
            String? gender,
            String? dateOfBirth,
            String? email,
            String? address,
            String? city,
            String? state,
            String? pincode,
            String? companyName,
            String? businessTurnOver,
            String? industry,
            String? gstNumber,
            String? businessAddress,
            String? businessCity,
            String? businesState,
            String? businessPincode,
            int? entrepreneurType)?
        updateProfile,
    TResult? Function(BuildContext context)? getProfile,
    TResult? Function(BuildContext context)? clearPhoneNumber,
    TResult? Function(int phonevalidation, int count)? phoneValidation,
  }) {
    return nameStoring?.call(name, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber, BuildContext context)? sendOtp,
    TResult Function()? resendOtp,
    TResult Function(String otp, BuildContext context)? verifyOtp,
    TResult Function(String name, BuildContext context)? nameStoring,
    TResult Function(
            BuildContext context,
            String? appLanguage,
            String? fullName,
            String? gender,
            String? dateOfBirth,
            String? email,
            String? address,
            String? city,
            String? state,
            String? pincode,
            String? companyName,
            String? businessTurnOver,
            String? industry,
            String? gstNumber,
            String? businessAddress,
            String? businessCity,
            String? businesState,
            String? businessPincode,
            int? entrepreneurType)?
        updateProfile,
    TResult Function(BuildContext context)? getProfile,
    TResult Function(BuildContext context)? clearPhoneNumber,
    TResult Function(int phonevalidation, int count)? phoneValidation,
    required TResult orElse(),
  }) {
    if (nameStoring != null) {
      return nameStoring(name, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_NameStoring value) nameStoring,
    required TResult Function(_UpdateProfile value) updateProfile,
    required TResult Function(_GetProfile value) getProfile,
    required TResult Function(_ClearPhoneNumber value) clearPhoneNumber,
    required TResult Function(_PhoneValidation value) phoneValidation,
  }) {
    return nameStoring(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_NameStoring value)? nameStoring,
    TResult? Function(_UpdateProfile value)? updateProfile,
    TResult? Function(_GetProfile value)? getProfile,
    TResult? Function(_ClearPhoneNumber value)? clearPhoneNumber,
    TResult? Function(_PhoneValidation value)? phoneValidation,
  }) {
    return nameStoring?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_NameStoring value)? nameStoring,
    TResult Function(_UpdateProfile value)? updateProfile,
    TResult Function(_GetProfile value)? getProfile,
    TResult Function(_ClearPhoneNumber value)? clearPhoneNumber,
    TResult Function(_PhoneValidation value)? phoneValidation,
    required TResult orElse(),
  }) {
    if (nameStoring != null) {
      return nameStoring(this);
    }
    return orElse();
  }
}

abstract class _NameStoring implements OnboardingPhoneEvent {
  const factory _NameStoring(
      {required final String name,
      required final BuildContext context}) = _$NameStoringImpl;

  String get name;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$NameStoringImplCopyWith<_$NameStoringImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateProfileImplCopyWith<$Res> {
  factory _$$UpdateProfileImplCopyWith(
          _$UpdateProfileImpl value, $Res Function(_$UpdateProfileImpl) then) =
      __$$UpdateProfileImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {BuildContext context,
      String? appLanguage,
      String? fullName,
      String? gender,
      String? dateOfBirth,
      String? email,
      String? address,
      String? city,
      String? state,
      String? pincode,
      String? companyName,
      String? businessTurnOver,
      String? industry,
      String? gstNumber,
      String? businessAddress,
      String? businessCity,
      String? businesState,
      String? businessPincode,
      int? entrepreneurType});
}

/// @nodoc
class __$$UpdateProfileImplCopyWithImpl<$Res>
    extends _$OnboardingPhoneEventCopyWithImpl<$Res, _$UpdateProfileImpl>
    implements _$$UpdateProfileImplCopyWith<$Res> {
  __$$UpdateProfileImplCopyWithImpl(
      _$UpdateProfileImpl _value, $Res Function(_$UpdateProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? appLanguage = freezed,
    Object? fullName = freezed,
    Object? gender = freezed,
    Object? dateOfBirth = freezed,
    Object? email = freezed,
    Object? address = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? pincode = freezed,
    Object? companyName = freezed,
    Object? businessTurnOver = freezed,
    Object? industry = freezed,
    Object? gstNumber = freezed,
    Object? businessAddress = freezed,
    Object? businessCity = freezed,
    Object? businesState = freezed,
    Object? businessPincode = freezed,
    Object? entrepreneurType = freezed,
  }) {
    return _then(_$UpdateProfileImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      appLanguage: freezed == appLanguage
          ? _value.appLanguage
          : appLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      pincode: freezed == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as String?,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      businessTurnOver: freezed == businessTurnOver
          ? _value.businessTurnOver
          : businessTurnOver // ignore: cast_nullable_to_non_nullable
              as String?,
      industry: freezed == industry
          ? _value.industry
          : industry // ignore: cast_nullable_to_non_nullable
              as String?,
      gstNumber: freezed == gstNumber
          ? _value.gstNumber
          : gstNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      businessAddress: freezed == businessAddress
          ? _value.businessAddress
          : businessAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      businessCity: freezed == businessCity
          ? _value.businessCity
          : businessCity // ignore: cast_nullable_to_non_nullable
              as String?,
      businesState: freezed == businesState
          ? _value.businesState
          : businesState // ignore: cast_nullable_to_non_nullable
              as String?,
      businessPincode: freezed == businessPincode
          ? _value.businessPincode
          : businessPincode // ignore: cast_nullable_to_non_nullable
              as String?,
      entrepreneurType: freezed == entrepreneurType
          ? _value.entrepreneurType
          : entrepreneurType // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$UpdateProfileImpl implements _UpdateProfile {
  const _$UpdateProfileImpl(
      {required this.context,
      this.appLanguage,
      this.fullName,
      this.gender,
      this.dateOfBirth,
      this.email,
      this.address,
      this.city,
      this.state,
      this.pincode,
      this.companyName,
      this.businessTurnOver,
      this.industry,
      this.gstNumber,
      this.businessAddress,
      this.businessCity,
      this.businesState,
      this.businessPincode,
      this.entrepreneurType});

  @override
  final BuildContext context;
  @override
  final String? appLanguage;
  @override
  final String? fullName;
  @override
  final String? gender;
  @override
  final String? dateOfBirth;
  @override
  final String? email;
  @override
  final String? address;
  @override
  final String? city;
  @override
  final String? state;
  @override
  final String? pincode;
  @override
  final String? companyName;
  @override
  final String? businessTurnOver;
  @override
  final String? industry;
  @override
  final String? gstNumber;
  @override
  final String? businessAddress;
  @override
  final String? businessCity;
  @override
  final String? businesState;
  @override
  final String? businessPincode;
  @override
  final int? entrepreneurType;

  @override
  String toString() {
    return 'OnboardingPhoneEvent.updateProfile(context: $context, appLanguage: $appLanguage, fullName: $fullName, gender: $gender, dateOfBirth: $dateOfBirth, email: $email, address: $address, city: $city, state: $state, pincode: $pincode, companyName: $companyName, businessTurnOver: $businessTurnOver, industry: $industry, gstNumber: $gstNumber, businessAddress: $businessAddress, businessCity: $businessCity, businesState: $businesState, businessPincode: $businessPincode, entrepreneurType: $entrepreneurType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProfileImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.appLanguage, appLanguage) ||
                other.appLanguage == appLanguage) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.pincode, pincode) || other.pincode == pincode) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.businessTurnOver, businessTurnOver) ||
                other.businessTurnOver == businessTurnOver) &&
            (identical(other.industry, industry) ||
                other.industry == industry) &&
            (identical(other.gstNumber, gstNumber) ||
                other.gstNumber == gstNumber) &&
            (identical(other.businessAddress, businessAddress) ||
                other.businessAddress == businessAddress) &&
            (identical(other.businessCity, businessCity) ||
                other.businessCity == businessCity) &&
            (identical(other.businesState, businesState) ||
                other.businesState == businesState) &&
            (identical(other.businessPincode, businessPincode) ||
                other.businessPincode == businessPincode) &&
            (identical(other.entrepreneurType, entrepreneurType) ||
                other.entrepreneurType == entrepreneurType));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        context,
        appLanguage,
        fullName,
        gender,
        dateOfBirth,
        email,
        address,
        city,
        state,
        pincode,
        companyName,
        businessTurnOver,
        industry,
        gstNumber,
        businessAddress,
        businessCity,
        businesState,
        businessPincode,
        entrepreneurType
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProfileImplCopyWith<_$UpdateProfileImpl> get copyWith =>
      __$$UpdateProfileImplCopyWithImpl<_$UpdateProfileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber, BuildContext context) sendOtp,
    required TResult Function() resendOtp,
    required TResult Function(String otp, BuildContext context) verifyOtp,
    required TResult Function(String name, BuildContext context) nameStoring,
    required TResult Function(
            BuildContext context,
            String? appLanguage,
            String? fullName,
            String? gender,
            String? dateOfBirth,
            String? email,
            String? address,
            String? city,
            String? state,
            String? pincode,
            String? companyName,
            String? businessTurnOver,
            String? industry,
            String? gstNumber,
            String? businessAddress,
            String? businessCity,
            String? businesState,
            String? businessPincode,
            int? entrepreneurType)
        updateProfile,
    required TResult Function(BuildContext context) getProfile,
    required TResult Function(BuildContext context) clearPhoneNumber,
    required TResult Function(int phonevalidation, int count) phoneValidation,
  }) {
    return updateProfile(
        context,
        appLanguage,
        fullName,
        gender,
        dateOfBirth,
        email,
        address,
        city,
        state,
        pincode,
        companyName,
        businessTurnOver,
        industry,
        gstNumber,
        businessAddress,
        businessCity,
        businesState,
        businessPincode,
        entrepreneurType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber, BuildContext context)? sendOtp,
    TResult? Function()? resendOtp,
    TResult? Function(String otp, BuildContext context)? verifyOtp,
    TResult? Function(String name, BuildContext context)? nameStoring,
    TResult? Function(
            BuildContext context,
            String? appLanguage,
            String? fullName,
            String? gender,
            String? dateOfBirth,
            String? email,
            String? address,
            String? city,
            String? state,
            String? pincode,
            String? companyName,
            String? businessTurnOver,
            String? industry,
            String? gstNumber,
            String? businessAddress,
            String? businessCity,
            String? businesState,
            String? businessPincode,
            int? entrepreneurType)?
        updateProfile,
    TResult? Function(BuildContext context)? getProfile,
    TResult? Function(BuildContext context)? clearPhoneNumber,
    TResult? Function(int phonevalidation, int count)? phoneValidation,
  }) {
    return updateProfile?.call(
        context,
        appLanguage,
        fullName,
        gender,
        dateOfBirth,
        email,
        address,
        city,
        state,
        pincode,
        companyName,
        businessTurnOver,
        industry,
        gstNumber,
        businessAddress,
        businessCity,
        businesState,
        businessPincode,
        entrepreneurType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber, BuildContext context)? sendOtp,
    TResult Function()? resendOtp,
    TResult Function(String otp, BuildContext context)? verifyOtp,
    TResult Function(String name, BuildContext context)? nameStoring,
    TResult Function(
            BuildContext context,
            String? appLanguage,
            String? fullName,
            String? gender,
            String? dateOfBirth,
            String? email,
            String? address,
            String? city,
            String? state,
            String? pincode,
            String? companyName,
            String? businessTurnOver,
            String? industry,
            String? gstNumber,
            String? businessAddress,
            String? businessCity,
            String? businesState,
            String? businessPincode,
            int? entrepreneurType)?
        updateProfile,
    TResult Function(BuildContext context)? getProfile,
    TResult Function(BuildContext context)? clearPhoneNumber,
    TResult Function(int phonevalidation, int count)? phoneValidation,
    required TResult orElse(),
  }) {
    if (updateProfile != null) {
      return updateProfile(
          context,
          appLanguage,
          fullName,
          gender,
          dateOfBirth,
          email,
          address,
          city,
          state,
          pincode,
          companyName,
          businessTurnOver,
          industry,
          gstNumber,
          businessAddress,
          businessCity,
          businesState,
          businessPincode,
          entrepreneurType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_NameStoring value) nameStoring,
    required TResult Function(_UpdateProfile value) updateProfile,
    required TResult Function(_GetProfile value) getProfile,
    required TResult Function(_ClearPhoneNumber value) clearPhoneNumber,
    required TResult Function(_PhoneValidation value) phoneValidation,
  }) {
    return updateProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_NameStoring value)? nameStoring,
    TResult? Function(_UpdateProfile value)? updateProfile,
    TResult? Function(_GetProfile value)? getProfile,
    TResult? Function(_ClearPhoneNumber value)? clearPhoneNumber,
    TResult? Function(_PhoneValidation value)? phoneValidation,
  }) {
    return updateProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_NameStoring value)? nameStoring,
    TResult Function(_UpdateProfile value)? updateProfile,
    TResult Function(_GetProfile value)? getProfile,
    TResult Function(_ClearPhoneNumber value)? clearPhoneNumber,
    TResult Function(_PhoneValidation value)? phoneValidation,
    required TResult orElse(),
  }) {
    if (updateProfile != null) {
      return updateProfile(this);
    }
    return orElse();
  }
}

abstract class _UpdateProfile implements OnboardingPhoneEvent {
  const factory _UpdateProfile(
      {required final BuildContext context,
      final String? appLanguage,
      final String? fullName,
      final String? gender,
      final String? dateOfBirth,
      final String? email,
      final String? address,
      final String? city,
      final String? state,
      final String? pincode,
      final String? companyName,
      final String? businessTurnOver,
      final String? industry,
      final String? gstNumber,
      final String? businessAddress,
      final String? businessCity,
      final String? businesState,
      final String? businessPincode,
      final int? entrepreneurType}) = _$UpdateProfileImpl;

  BuildContext get context;
  String? get appLanguage;
  String? get fullName;
  String? get gender;
  String? get dateOfBirth;
  String? get email;
  String? get address;
  String? get city;
  String? get state;
  String? get pincode;
  String? get companyName;
  String? get businessTurnOver;
  String? get industry;
  String? get gstNumber;
  String? get businessAddress;
  String? get businessCity;
  String? get businesState;
  String? get businessPincode;
  int? get entrepreneurType;
  @JsonKey(ignore: true)
  _$$UpdateProfileImplCopyWith<_$UpdateProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetProfileImplCopyWith<$Res> {
  factory _$$GetProfileImplCopyWith(
          _$GetProfileImpl value, $Res Function(_$GetProfileImpl) then) =
      __$$GetProfileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$GetProfileImplCopyWithImpl<$Res>
    extends _$OnboardingPhoneEventCopyWithImpl<$Res, _$GetProfileImpl>
    implements _$$GetProfileImplCopyWith<$Res> {
  __$$GetProfileImplCopyWithImpl(
      _$GetProfileImpl _value, $Res Function(_$GetProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$GetProfileImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$GetProfileImpl implements _GetProfile {
  const _$GetProfileImpl({required this.context});

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'OnboardingPhoneEvent.getProfile(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProfileImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProfileImplCopyWith<_$GetProfileImpl> get copyWith =>
      __$$GetProfileImplCopyWithImpl<_$GetProfileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber, BuildContext context) sendOtp,
    required TResult Function() resendOtp,
    required TResult Function(String otp, BuildContext context) verifyOtp,
    required TResult Function(String name, BuildContext context) nameStoring,
    required TResult Function(
            BuildContext context,
            String? appLanguage,
            String? fullName,
            String? gender,
            String? dateOfBirth,
            String? email,
            String? address,
            String? city,
            String? state,
            String? pincode,
            String? companyName,
            String? businessTurnOver,
            String? industry,
            String? gstNumber,
            String? businessAddress,
            String? businessCity,
            String? businesState,
            String? businessPincode,
            int? entrepreneurType)
        updateProfile,
    required TResult Function(BuildContext context) getProfile,
    required TResult Function(BuildContext context) clearPhoneNumber,
    required TResult Function(int phonevalidation, int count) phoneValidation,
  }) {
    return getProfile(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber, BuildContext context)? sendOtp,
    TResult? Function()? resendOtp,
    TResult? Function(String otp, BuildContext context)? verifyOtp,
    TResult? Function(String name, BuildContext context)? nameStoring,
    TResult? Function(
            BuildContext context,
            String? appLanguage,
            String? fullName,
            String? gender,
            String? dateOfBirth,
            String? email,
            String? address,
            String? city,
            String? state,
            String? pincode,
            String? companyName,
            String? businessTurnOver,
            String? industry,
            String? gstNumber,
            String? businessAddress,
            String? businessCity,
            String? businesState,
            String? businessPincode,
            int? entrepreneurType)?
        updateProfile,
    TResult? Function(BuildContext context)? getProfile,
    TResult? Function(BuildContext context)? clearPhoneNumber,
    TResult? Function(int phonevalidation, int count)? phoneValidation,
  }) {
    return getProfile?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber, BuildContext context)? sendOtp,
    TResult Function()? resendOtp,
    TResult Function(String otp, BuildContext context)? verifyOtp,
    TResult Function(String name, BuildContext context)? nameStoring,
    TResult Function(
            BuildContext context,
            String? appLanguage,
            String? fullName,
            String? gender,
            String? dateOfBirth,
            String? email,
            String? address,
            String? city,
            String? state,
            String? pincode,
            String? companyName,
            String? businessTurnOver,
            String? industry,
            String? gstNumber,
            String? businessAddress,
            String? businessCity,
            String? businesState,
            String? businessPincode,
            int? entrepreneurType)?
        updateProfile,
    TResult Function(BuildContext context)? getProfile,
    TResult Function(BuildContext context)? clearPhoneNumber,
    TResult Function(int phonevalidation, int count)? phoneValidation,
    required TResult orElse(),
  }) {
    if (getProfile != null) {
      return getProfile(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_NameStoring value) nameStoring,
    required TResult Function(_UpdateProfile value) updateProfile,
    required TResult Function(_GetProfile value) getProfile,
    required TResult Function(_ClearPhoneNumber value) clearPhoneNumber,
    required TResult Function(_PhoneValidation value) phoneValidation,
  }) {
    return getProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_NameStoring value)? nameStoring,
    TResult? Function(_UpdateProfile value)? updateProfile,
    TResult? Function(_GetProfile value)? getProfile,
    TResult? Function(_ClearPhoneNumber value)? clearPhoneNumber,
    TResult? Function(_PhoneValidation value)? phoneValidation,
  }) {
    return getProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_NameStoring value)? nameStoring,
    TResult Function(_UpdateProfile value)? updateProfile,
    TResult Function(_GetProfile value)? getProfile,
    TResult Function(_ClearPhoneNumber value)? clearPhoneNumber,
    TResult Function(_PhoneValidation value)? phoneValidation,
    required TResult orElse(),
  }) {
    if (getProfile != null) {
      return getProfile(this);
    }
    return orElse();
  }
}

abstract class _GetProfile implements OnboardingPhoneEvent {
  const factory _GetProfile({required final BuildContext context}) =
      _$GetProfileImpl;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$GetProfileImplCopyWith<_$GetProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearPhoneNumberImplCopyWith<$Res> {
  factory _$$ClearPhoneNumberImplCopyWith(_$ClearPhoneNumberImpl value,
          $Res Function(_$ClearPhoneNumberImpl) then) =
      __$$ClearPhoneNumberImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$ClearPhoneNumberImplCopyWithImpl<$Res>
    extends _$OnboardingPhoneEventCopyWithImpl<$Res, _$ClearPhoneNumberImpl>
    implements _$$ClearPhoneNumberImplCopyWith<$Res> {
  __$$ClearPhoneNumberImplCopyWithImpl(_$ClearPhoneNumberImpl _value,
      $Res Function(_$ClearPhoneNumberImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$ClearPhoneNumberImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$ClearPhoneNumberImpl implements _ClearPhoneNumber {
  const _$ClearPhoneNumberImpl({required this.context});

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'OnboardingPhoneEvent.clearPhoneNumber(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearPhoneNumberImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClearPhoneNumberImplCopyWith<_$ClearPhoneNumberImpl> get copyWith =>
      __$$ClearPhoneNumberImplCopyWithImpl<_$ClearPhoneNumberImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber, BuildContext context) sendOtp,
    required TResult Function() resendOtp,
    required TResult Function(String otp, BuildContext context) verifyOtp,
    required TResult Function(String name, BuildContext context) nameStoring,
    required TResult Function(
            BuildContext context,
            String? appLanguage,
            String? fullName,
            String? gender,
            String? dateOfBirth,
            String? email,
            String? address,
            String? city,
            String? state,
            String? pincode,
            String? companyName,
            String? businessTurnOver,
            String? industry,
            String? gstNumber,
            String? businessAddress,
            String? businessCity,
            String? businesState,
            String? businessPincode,
            int? entrepreneurType)
        updateProfile,
    required TResult Function(BuildContext context) getProfile,
    required TResult Function(BuildContext context) clearPhoneNumber,
    required TResult Function(int phonevalidation, int count) phoneValidation,
  }) {
    return clearPhoneNumber(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber, BuildContext context)? sendOtp,
    TResult? Function()? resendOtp,
    TResult? Function(String otp, BuildContext context)? verifyOtp,
    TResult? Function(String name, BuildContext context)? nameStoring,
    TResult? Function(
            BuildContext context,
            String? appLanguage,
            String? fullName,
            String? gender,
            String? dateOfBirth,
            String? email,
            String? address,
            String? city,
            String? state,
            String? pincode,
            String? companyName,
            String? businessTurnOver,
            String? industry,
            String? gstNumber,
            String? businessAddress,
            String? businessCity,
            String? businesState,
            String? businessPincode,
            int? entrepreneurType)?
        updateProfile,
    TResult? Function(BuildContext context)? getProfile,
    TResult? Function(BuildContext context)? clearPhoneNumber,
    TResult? Function(int phonevalidation, int count)? phoneValidation,
  }) {
    return clearPhoneNumber?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber, BuildContext context)? sendOtp,
    TResult Function()? resendOtp,
    TResult Function(String otp, BuildContext context)? verifyOtp,
    TResult Function(String name, BuildContext context)? nameStoring,
    TResult Function(
            BuildContext context,
            String? appLanguage,
            String? fullName,
            String? gender,
            String? dateOfBirth,
            String? email,
            String? address,
            String? city,
            String? state,
            String? pincode,
            String? companyName,
            String? businessTurnOver,
            String? industry,
            String? gstNumber,
            String? businessAddress,
            String? businessCity,
            String? businesState,
            String? businessPincode,
            int? entrepreneurType)?
        updateProfile,
    TResult Function(BuildContext context)? getProfile,
    TResult Function(BuildContext context)? clearPhoneNumber,
    TResult Function(int phonevalidation, int count)? phoneValidation,
    required TResult orElse(),
  }) {
    if (clearPhoneNumber != null) {
      return clearPhoneNumber(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_NameStoring value) nameStoring,
    required TResult Function(_UpdateProfile value) updateProfile,
    required TResult Function(_GetProfile value) getProfile,
    required TResult Function(_ClearPhoneNumber value) clearPhoneNumber,
    required TResult Function(_PhoneValidation value) phoneValidation,
  }) {
    return clearPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_NameStoring value)? nameStoring,
    TResult? Function(_UpdateProfile value)? updateProfile,
    TResult? Function(_GetProfile value)? getProfile,
    TResult? Function(_ClearPhoneNumber value)? clearPhoneNumber,
    TResult? Function(_PhoneValidation value)? phoneValidation,
  }) {
    return clearPhoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_NameStoring value)? nameStoring,
    TResult Function(_UpdateProfile value)? updateProfile,
    TResult Function(_GetProfile value)? getProfile,
    TResult Function(_ClearPhoneNumber value)? clearPhoneNumber,
    TResult Function(_PhoneValidation value)? phoneValidation,
    required TResult orElse(),
  }) {
    if (clearPhoneNumber != null) {
      return clearPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class _ClearPhoneNumber implements OnboardingPhoneEvent {
  const factory _ClearPhoneNumber({required final BuildContext context}) =
      _$ClearPhoneNumberImpl;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$ClearPhoneNumberImplCopyWith<_$ClearPhoneNumberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PhoneValidationImplCopyWith<$Res> {
  factory _$$PhoneValidationImplCopyWith(_$PhoneValidationImpl value,
          $Res Function(_$PhoneValidationImpl) then) =
      __$$PhoneValidationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int phonevalidation, int count});
}

/// @nodoc
class __$$PhoneValidationImplCopyWithImpl<$Res>
    extends _$OnboardingPhoneEventCopyWithImpl<$Res, _$PhoneValidationImpl>
    implements _$$PhoneValidationImplCopyWith<$Res> {
  __$$PhoneValidationImplCopyWithImpl(
      _$PhoneValidationImpl _value, $Res Function(_$PhoneValidationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phonevalidation = null,
    Object? count = null,
  }) {
    return _then(_$PhoneValidationImpl(
      phonevalidation: null == phonevalidation
          ? _value.phonevalidation
          : phonevalidation // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PhoneValidationImpl implements _PhoneValidation {
  const _$PhoneValidationImpl(
      {required this.phonevalidation, required this.count});

  @override
  final int phonevalidation;
  @override
  final int count;

  @override
  String toString() {
    return 'OnboardingPhoneEvent.phoneValidation(phonevalidation: $phonevalidation, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneValidationImpl &&
            (identical(other.phonevalidation, phonevalidation) ||
                other.phonevalidation == phonevalidation) &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phonevalidation, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhoneValidationImplCopyWith<_$PhoneValidationImpl> get copyWith =>
      __$$PhoneValidationImplCopyWithImpl<_$PhoneValidationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber, BuildContext context) sendOtp,
    required TResult Function() resendOtp,
    required TResult Function(String otp, BuildContext context) verifyOtp,
    required TResult Function(String name, BuildContext context) nameStoring,
    required TResult Function(
            BuildContext context,
            String? appLanguage,
            String? fullName,
            String? gender,
            String? dateOfBirth,
            String? email,
            String? address,
            String? city,
            String? state,
            String? pincode,
            String? companyName,
            String? businessTurnOver,
            String? industry,
            String? gstNumber,
            String? businessAddress,
            String? businessCity,
            String? businesState,
            String? businessPincode,
            int? entrepreneurType)
        updateProfile,
    required TResult Function(BuildContext context) getProfile,
    required TResult Function(BuildContext context) clearPhoneNumber,
    required TResult Function(int phonevalidation, int count) phoneValidation,
  }) {
    return phoneValidation(phonevalidation, count);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber, BuildContext context)? sendOtp,
    TResult? Function()? resendOtp,
    TResult? Function(String otp, BuildContext context)? verifyOtp,
    TResult? Function(String name, BuildContext context)? nameStoring,
    TResult? Function(
            BuildContext context,
            String? appLanguage,
            String? fullName,
            String? gender,
            String? dateOfBirth,
            String? email,
            String? address,
            String? city,
            String? state,
            String? pincode,
            String? companyName,
            String? businessTurnOver,
            String? industry,
            String? gstNumber,
            String? businessAddress,
            String? businessCity,
            String? businesState,
            String? businessPincode,
            int? entrepreneurType)?
        updateProfile,
    TResult? Function(BuildContext context)? getProfile,
    TResult? Function(BuildContext context)? clearPhoneNumber,
    TResult? Function(int phonevalidation, int count)? phoneValidation,
  }) {
    return phoneValidation?.call(phonevalidation, count);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber, BuildContext context)? sendOtp,
    TResult Function()? resendOtp,
    TResult Function(String otp, BuildContext context)? verifyOtp,
    TResult Function(String name, BuildContext context)? nameStoring,
    TResult Function(
            BuildContext context,
            String? appLanguage,
            String? fullName,
            String? gender,
            String? dateOfBirth,
            String? email,
            String? address,
            String? city,
            String? state,
            String? pincode,
            String? companyName,
            String? businessTurnOver,
            String? industry,
            String? gstNumber,
            String? businessAddress,
            String? businessCity,
            String? businesState,
            String? businessPincode,
            int? entrepreneurType)?
        updateProfile,
    TResult Function(BuildContext context)? getProfile,
    TResult Function(BuildContext context)? clearPhoneNumber,
    TResult Function(int phonevalidation, int count)? phoneValidation,
    required TResult orElse(),
  }) {
    if (phoneValidation != null) {
      return phoneValidation(phonevalidation, count);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_NameStoring value) nameStoring,
    required TResult Function(_UpdateProfile value) updateProfile,
    required TResult Function(_GetProfile value) getProfile,
    required TResult Function(_ClearPhoneNumber value) clearPhoneNumber,
    required TResult Function(_PhoneValidation value) phoneValidation,
  }) {
    return phoneValidation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_NameStoring value)? nameStoring,
    TResult? Function(_UpdateProfile value)? updateProfile,
    TResult? Function(_GetProfile value)? getProfile,
    TResult? Function(_ClearPhoneNumber value)? clearPhoneNumber,
    TResult? Function(_PhoneValidation value)? phoneValidation,
  }) {
    return phoneValidation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_NameStoring value)? nameStoring,
    TResult Function(_UpdateProfile value)? updateProfile,
    TResult Function(_GetProfile value)? getProfile,
    TResult Function(_ClearPhoneNumber value)? clearPhoneNumber,
    TResult Function(_PhoneValidation value)? phoneValidation,
    required TResult orElse(),
  }) {
    if (phoneValidation != null) {
      return phoneValidation(this);
    }
    return orElse();
  }
}

abstract class _PhoneValidation implements OnboardingPhoneEvent {
  const factory _PhoneValidation(
      {required final int phonevalidation,
      required final int count}) = _$PhoneValidationImpl;

  int get phonevalidation;
  int get count;
  @JsonKey(ignore: true)
  _$$PhoneValidationImplCopyWith<_$PhoneValidationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OnboardingPhoneState {
  bool get buttonColorChage => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  bool? get status => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  ProfileeModel? get profileeModel => throw _privateConstructorUsedError;
  OnboardingPhoneModel? get onboardingPhoneModel =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OnboardingPhoneStateCopyWith<OnboardingPhoneState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingPhoneStateCopyWith<$Res> {
  factory $OnboardingPhoneStateCopyWith(OnboardingPhoneState value,
          $Res Function(OnboardingPhoneState) then) =
      _$OnboardingPhoneStateCopyWithImpl<$Res, OnboardingPhoneState>;
  @useResult
  $Res call(
      {bool buttonColorChage,
      bool isLoading,
      bool isError,
      bool? status,
      String? phoneNumber,
      String? message,
      String? name,
      ProfileeModel? profileeModel,
      OnboardingPhoneModel? onboardingPhoneModel});
}

/// @nodoc
class _$OnboardingPhoneStateCopyWithImpl<$Res,
        $Val extends OnboardingPhoneState>
    implements $OnboardingPhoneStateCopyWith<$Res> {
  _$OnboardingPhoneStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buttonColorChage = null,
    Object? isLoading = null,
    Object? isError = null,
    Object? status = freezed,
    Object? phoneNumber = freezed,
    Object? message = freezed,
    Object? name = freezed,
    Object? profileeModel = freezed,
    Object? onboardingPhoneModel = freezed,
  }) {
    return _then(_value.copyWith(
      buttonColorChage: null == buttonColorChage
          ? _value.buttonColorChage
          : buttonColorChage // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      profileeModel: freezed == profileeModel
          ? _value.profileeModel
          : profileeModel // ignore: cast_nullable_to_non_nullable
              as ProfileeModel?,
      onboardingPhoneModel: freezed == onboardingPhoneModel
          ? _value.onboardingPhoneModel
          : onboardingPhoneModel // ignore: cast_nullable_to_non_nullable
              as OnboardingPhoneModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OnboardingPhoneStateImplCopyWith<$Res>
    implements $OnboardingPhoneStateCopyWith<$Res> {
  factory _$$OnboardingPhoneStateImplCopyWith(_$OnboardingPhoneStateImpl value,
          $Res Function(_$OnboardingPhoneStateImpl) then) =
      __$$OnboardingPhoneStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool buttonColorChage,
      bool isLoading,
      bool isError,
      bool? status,
      String? phoneNumber,
      String? message,
      String? name,
      ProfileeModel? profileeModel,
      OnboardingPhoneModel? onboardingPhoneModel});
}

/// @nodoc
class __$$OnboardingPhoneStateImplCopyWithImpl<$Res>
    extends _$OnboardingPhoneStateCopyWithImpl<$Res, _$OnboardingPhoneStateImpl>
    implements _$$OnboardingPhoneStateImplCopyWith<$Res> {
  __$$OnboardingPhoneStateImplCopyWithImpl(_$OnboardingPhoneStateImpl _value,
      $Res Function(_$OnboardingPhoneStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buttonColorChage = null,
    Object? isLoading = null,
    Object? isError = null,
    Object? status = freezed,
    Object? phoneNumber = freezed,
    Object? message = freezed,
    Object? name = freezed,
    Object? profileeModel = freezed,
    Object? onboardingPhoneModel = freezed,
  }) {
    return _then(_$OnboardingPhoneStateImpl(
      buttonColorChage: null == buttonColorChage
          ? _value.buttonColorChage
          : buttonColorChage // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      profileeModel: freezed == profileeModel
          ? _value.profileeModel
          : profileeModel // ignore: cast_nullable_to_non_nullable
              as ProfileeModel?,
      onboardingPhoneModel: freezed == onboardingPhoneModel
          ? _value.onboardingPhoneModel
          : onboardingPhoneModel // ignore: cast_nullable_to_non_nullable
              as OnboardingPhoneModel?,
    ));
  }
}

/// @nodoc

class _$OnboardingPhoneStateImpl implements _OnboardingPhoneState {
  const _$OnboardingPhoneStateImpl(
      {required this.buttonColorChage,
      required this.isLoading,
      required this.isError,
      this.status,
      this.phoneNumber,
      this.message,
      this.name,
      this.profileeModel,
      this.onboardingPhoneModel});

  @override
  final bool buttonColorChage;
  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final bool? status;
  @override
  final String? phoneNumber;
  @override
  final String? message;
  @override
  final String? name;
  @override
  final ProfileeModel? profileeModel;
  @override
  final OnboardingPhoneModel? onboardingPhoneModel;

  @override
  String toString() {
    return 'OnboardingPhoneState(buttonColorChage: $buttonColorChage, isLoading: $isLoading, isError: $isError, status: $status, phoneNumber: $phoneNumber, message: $message, name: $name, profileeModel: $profileeModel, onboardingPhoneModel: $onboardingPhoneModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnboardingPhoneStateImpl &&
            (identical(other.buttonColorChage, buttonColorChage) ||
                other.buttonColorChage == buttonColorChage) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.profileeModel, profileeModel) ||
                other.profileeModel == profileeModel) &&
            (identical(other.onboardingPhoneModel, onboardingPhoneModel) ||
                other.onboardingPhoneModel == onboardingPhoneModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      buttonColorChage,
      isLoading,
      isError,
      status,
      phoneNumber,
      message,
      name,
      profileeModel,
      onboardingPhoneModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnboardingPhoneStateImplCopyWith<_$OnboardingPhoneStateImpl>
      get copyWith =>
          __$$OnboardingPhoneStateImplCopyWithImpl<_$OnboardingPhoneStateImpl>(
              this, _$identity);
}

abstract class _OnboardingPhoneState implements OnboardingPhoneState {
  const factory _OnboardingPhoneState(
          {required final bool buttonColorChage,
          required final bool isLoading,
          required final bool isError,
          final bool? status,
          final String? phoneNumber,
          final String? message,
          final String? name,
          final ProfileeModel? profileeModel,
          final OnboardingPhoneModel? onboardingPhoneModel}) =
      _$OnboardingPhoneStateImpl;

  @override
  bool get buttonColorChage;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  bool? get status;
  @override
  String? get phoneNumber;
  @override
  String? get message;
  @override
  String? get name;
  @override
  ProfileeModel? get profileeModel;
  @override
  OnboardingPhoneModel? get onboardingPhoneModel;
  @override
  @JsonKey(ignore: true)
  _$$OnboardingPhoneStateImplCopyWith<_$OnboardingPhoneStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

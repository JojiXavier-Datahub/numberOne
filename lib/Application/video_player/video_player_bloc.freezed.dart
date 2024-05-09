// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_player_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VideoPlayerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VideoGetModel currentVideo) playVideo,
    required TResult Function() pauseVideo,
    required TResult Function() clearVideo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VideoGetModel currentVideo)? playVideo,
    TResult? Function()? pauseVideo,
    TResult? Function()? clearVideo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VideoGetModel currentVideo)? playVideo,
    TResult Function()? pauseVideo,
    TResult Function()? clearVideo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayVideo value) playVideo,
    required TResult Function(_PauseVideo value) pauseVideo,
    required TResult Function(_ClearVideo value) clearVideo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlayVideo value)? playVideo,
    TResult? Function(_PauseVideo value)? pauseVideo,
    TResult? Function(_ClearVideo value)? clearVideo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayVideo value)? playVideo,
    TResult Function(_PauseVideo value)? pauseVideo,
    TResult Function(_ClearVideo value)? clearVideo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoPlayerEventCopyWith<$Res> {
  factory $VideoPlayerEventCopyWith(
          VideoPlayerEvent value, $Res Function(VideoPlayerEvent) then) =
      _$VideoPlayerEventCopyWithImpl<$Res, VideoPlayerEvent>;
}

/// @nodoc
class _$VideoPlayerEventCopyWithImpl<$Res, $Val extends VideoPlayerEvent>
    implements $VideoPlayerEventCopyWith<$Res> {
  _$VideoPlayerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PlayVideoImplCopyWith<$Res> {
  factory _$$PlayVideoImplCopyWith(
          _$PlayVideoImpl value, $Res Function(_$PlayVideoImpl) then) =
      __$$PlayVideoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({VideoGetModel currentVideo});
}

/// @nodoc
class __$$PlayVideoImplCopyWithImpl<$Res>
    extends _$VideoPlayerEventCopyWithImpl<$Res, _$PlayVideoImpl>
    implements _$$PlayVideoImplCopyWith<$Res> {
  __$$PlayVideoImplCopyWithImpl(
      _$PlayVideoImpl _value, $Res Function(_$PlayVideoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentVideo = null,
  }) {
    return _then(_$PlayVideoImpl(
      null == currentVideo
          ? _value.currentVideo
          : currentVideo // ignore: cast_nullable_to_non_nullable
              as VideoGetModel,
    ));
  }
}

/// @nodoc

class _$PlayVideoImpl implements _PlayVideo {
  const _$PlayVideoImpl(this.currentVideo);

  @override
  final VideoGetModel currentVideo;

  @override
  String toString() {
    return 'VideoPlayerEvent.playVideo(currentVideo: $currentVideo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayVideoImpl &&
            (identical(other.currentVideo, currentVideo) ||
                other.currentVideo == currentVideo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentVideo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayVideoImplCopyWith<_$PlayVideoImpl> get copyWith =>
      __$$PlayVideoImplCopyWithImpl<_$PlayVideoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VideoGetModel currentVideo) playVideo,
    required TResult Function() pauseVideo,
    required TResult Function() clearVideo,
  }) {
    return playVideo(currentVideo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VideoGetModel currentVideo)? playVideo,
    TResult? Function()? pauseVideo,
    TResult? Function()? clearVideo,
  }) {
    return playVideo?.call(currentVideo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VideoGetModel currentVideo)? playVideo,
    TResult Function()? pauseVideo,
    TResult Function()? clearVideo,
    required TResult orElse(),
  }) {
    if (playVideo != null) {
      return playVideo(currentVideo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayVideo value) playVideo,
    required TResult Function(_PauseVideo value) pauseVideo,
    required TResult Function(_ClearVideo value) clearVideo,
  }) {
    return playVideo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlayVideo value)? playVideo,
    TResult? Function(_PauseVideo value)? pauseVideo,
    TResult? Function(_ClearVideo value)? clearVideo,
  }) {
    return playVideo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayVideo value)? playVideo,
    TResult Function(_PauseVideo value)? pauseVideo,
    TResult Function(_ClearVideo value)? clearVideo,
    required TResult orElse(),
  }) {
    if (playVideo != null) {
      return playVideo(this);
    }
    return orElse();
  }
}

abstract class _PlayVideo implements VideoPlayerEvent {
  const factory _PlayVideo(final VideoGetModel currentVideo) = _$PlayVideoImpl;

  VideoGetModel get currentVideo;
  @JsonKey(ignore: true)
  _$$PlayVideoImplCopyWith<_$PlayVideoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PauseVideoImplCopyWith<$Res> {
  factory _$$PauseVideoImplCopyWith(
          _$PauseVideoImpl value, $Res Function(_$PauseVideoImpl) then) =
      __$$PauseVideoImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PauseVideoImplCopyWithImpl<$Res>
    extends _$VideoPlayerEventCopyWithImpl<$Res, _$PauseVideoImpl>
    implements _$$PauseVideoImplCopyWith<$Res> {
  __$$PauseVideoImplCopyWithImpl(
      _$PauseVideoImpl _value, $Res Function(_$PauseVideoImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PauseVideoImpl implements _PauseVideo {
  const _$PauseVideoImpl();

  @override
  String toString() {
    return 'VideoPlayerEvent.pauseVideo()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PauseVideoImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VideoGetModel currentVideo) playVideo,
    required TResult Function() pauseVideo,
    required TResult Function() clearVideo,
  }) {
    return pauseVideo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VideoGetModel currentVideo)? playVideo,
    TResult? Function()? pauseVideo,
    TResult? Function()? clearVideo,
  }) {
    return pauseVideo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VideoGetModel currentVideo)? playVideo,
    TResult Function()? pauseVideo,
    TResult Function()? clearVideo,
    required TResult orElse(),
  }) {
    if (pauseVideo != null) {
      return pauseVideo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayVideo value) playVideo,
    required TResult Function(_PauseVideo value) pauseVideo,
    required TResult Function(_ClearVideo value) clearVideo,
  }) {
    return pauseVideo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlayVideo value)? playVideo,
    TResult? Function(_PauseVideo value)? pauseVideo,
    TResult? Function(_ClearVideo value)? clearVideo,
  }) {
    return pauseVideo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayVideo value)? playVideo,
    TResult Function(_PauseVideo value)? pauseVideo,
    TResult Function(_ClearVideo value)? clearVideo,
    required TResult orElse(),
  }) {
    if (pauseVideo != null) {
      return pauseVideo(this);
    }
    return orElse();
  }
}

abstract class _PauseVideo implements VideoPlayerEvent {
  const factory _PauseVideo() = _$PauseVideoImpl;
}

/// @nodoc
abstract class _$$ClearVideoImplCopyWith<$Res> {
  factory _$$ClearVideoImplCopyWith(
          _$ClearVideoImpl value, $Res Function(_$ClearVideoImpl) then) =
      __$$ClearVideoImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearVideoImplCopyWithImpl<$Res>
    extends _$VideoPlayerEventCopyWithImpl<$Res, _$ClearVideoImpl>
    implements _$$ClearVideoImplCopyWith<$Res> {
  __$$ClearVideoImplCopyWithImpl(
      _$ClearVideoImpl _value, $Res Function(_$ClearVideoImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearVideoImpl implements _ClearVideo {
  const _$ClearVideoImpl();

  @override
  String toString() {
    return 'VideoPlayerEvent.clearVideo()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearVideoImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VideoGetModel currentVideo) playVideo,
    required TResult Function() pauseVideo,
    required TResult Function() clearVideo,
  }) {
    return clearVideo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VideoGetModel currentVideo)? playVideo,
    TResult? Function()? pauseVideo,
    TResult? Function()? clearVideo,
  }) {
    return clearVideo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VideoGetModel currentVideo)? playVideo,
    TResult Function()? pauseVideo,
    TResult Function()? clearVideo,
    required TResult orElse(),
  }) {
    if (clearVideo != null) {
      return clearVideo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayVideo value) playVideo,
    required TResult Function(_PauseVideo value) pauseVideo,
    required TResult Function(_ClearVideo value) clearVideo,
  }) {
    return clearVideo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlayVideo value)? playVideo,
    TResult? Function(_PauseVideo value)? pauseVideo,
    TResult? Function(_ClearVideo value)? clearVideo,
  }) {
    return clearVideo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayVideo value)? playVideo,
    TResult Function(_PauseVideo value)? pauseVideo,
    TResult Function(_ClearVideo value)? clearVideo,
    required TResult orElse(),
  }) {
    if (clearVideo != null) {
      return clearVideo(this);
    }
    return orElse();
  }
}

abstract class _ClearVideo implements VideoPlayerEvent {
  const factory _ClearVideo() = _$ClearVideoImpl;
}

/// @nodoc
mixin _$VideoPlayerState {
  bool get videoLoading => throw _privateConstructorUsedError;
  VideoPlayerController? get videoPlayerController1 =>
      throw _privateConstructorUsedError;
  ChewieController? get chewieController => throw _privateConstructorUsedError;
  VideoGetModel? get currentVideo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VideoPlayerStateCopyWith<VideoPlayerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoPlayerStateCopyWith<$Res> {
  factory $VideoPlayerStateCopyWith(
          VideoPlayerState value, $Res Function(VideoPlayerState) then) =
      _$VideoPlayerStateCopyWithImpl<$Res, VideoPlayerState>;
  @useResult
  $Res call(
      {bool videoLoading,
      VideoPlayerController? videoPlayerController1,
      ChewieController? chewieController,
      VideoGetModel? currentVideo});
}

/// @nodoc
class _$VideoPlayerStateCopyWithImpl<$Res, $Val extends VideoPlayerState>
    implements $VideoPlayerStateCopyWith<$Res> {
  _$VideoPlayerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoLoading = null,
    Object? videoPlayerController1 = freezed,
    Object? chewieController = freezed,
    Object? currentVideo = freezed,
  }) {
    return _then(_value.copyWith(
      videoLoading: null == videoLoading
          ? _value.videoLoading
          : videoLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      videoPlayerController1: freezed == videoPlayerController1
          ? _value.videoPlayerController1
          : videoPlayerController1 // ignore: cast_nullable_to_non_nullable
              as VideoPlayerController?,
      chewieController: freezed == chewieController
          ? _value.chewieController
          : chewieController // ignore: cast_nullable_to_non_nullable
              as ChewieController?,
      currentVideo: freezed == currentVideo
          ? _value.currentVideo
          : currentVideo // ignore: cast_nullable_to_non_nullable
              as VideoGetModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VideoPlayerStateImplCopyWith<$Res>
    implements $VideoPlayerStateCopyWith<$Res> {
  factory _$$VideoPlayerStateImplCopyWith(_$VideoPlayerStateImpl value,
          $Res Function(_$VideoPlayerStateImpl) then) =
      __$$VideoPlayerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool videoLoading,
      VideoPlayerController? videoPlayerController1,
      ChewieController? chewieController,
      VideoGetModel? currentVideo});
}

/// @nodoc
class __$$VideoPlayerStateImplCopyWithImpl<$Res>
    extends _$VideoPlayerStateCopyWithImpl<$Res, _$VideoPlayerStateImpl>
    implements _$$VideoPlayerStateImplCopyWith<$Res> {
  __$$VideoPlayerStateImplCopyWithImpl(_$VideoPlayerStateImpl _value,
      $Res Function(_$VideoPlayerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoLoading = null,
    Object? videoPlayerController1 = freezed,
    Object? chewieController = freezed,
    Object? currentVideo = freezed,
  }) {
    return _then(_$VideoPlayerStateImpl(
      videoLoading: null == videoLoading
          ? _value.videoLoading
          : videoLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      videoPlayerController1: freezed == videoPlayerController1
          ? _value.videoPlayerController1
          : videoPlayerController1 // ignore: cast_nullable_to_non_nullable
              as VideoPlayerController?,
      chewieController: freezed == chewieController
          ? _value.chewieController
          : chewieController // ignore: cast_nullable_to_non_nullable
              as ChewieController?,
      currentVideo: freezed == currentVideo
          ? _value.currentVideo
          : currentVideo // ignore: cast_nullable_to_non_nullable
              as VideoGetModel?,
    ));
  }
}

/// @nodoc

class _$VideoPlayerStateImpl implements _VideoPlayerState {
  const _$VideoPlayerStateImpl(
      {this.videoLoading = false,
      this.videoPlayerController1,
      this.chewieController,
      this.currentVideo});

  @override
  @JsonKey()
  final bool videoLoading;
  @override
  final VideoPlayerController? videoPlayerController1;
  @override
  final ChewieController? chewieController;
  @override
  final VideoGetModel? currentVideo;

  @override
  String toString() {
    return 'VideoPlayerState(videoLoading: $videoLoading, videoPlayerController1: $videoPlayerController1, chewieController: $chewieController, currentVideo: $currentVideo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoPlayerStateImpl &&
            (identical(other.videoLoading, videoLoading) ||
                other.videoLoading == videoLoading) &&
            (identical(other.videoPlayerController1, videoPlayerController1) ||
                other.videoPlayerController1 == videoPlayerController1) &&
            (identical(other.chewieController, chewieController) ||
                other.chewieController == chewieController) &&
            (identical(other.currentVideo, currentVideo) ||
                other.currentVideo == currentVideo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, videoLoading,
      videoPlayerController1, chewieController, currentVideo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoPlayerStateImplCopyWith<_$VideoPlayerStateImpl> get copyWith =>
      __$$VideoPlayerStateImplCopyWithImpl<_$VideoPlayerStateImpl>(
          this, _$identity);
}

abstract class _VideoPlayerState implements VideoPlayerState {
  const factory _VideoPlayerState(
      {final bool videoLoading,
      final VideoPlayerController? videoPlayerController1,
      final ChewieController? chewieController,
      final VideoGetModel? currentVideo}) = _$VideoPlayerStateImpl;

  @override
  bool get videoLoading;
  @override
  VideoPlayerController? get videoPlayerController1;
  @override
  ChewieController? get chewieController;
  @override
  VideoGetModel? get currentVideo;
  @override
  @JsonKey(ignore: true)
  _$$VideoPlayerStateImplCopyWith<_$VideoPlayerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

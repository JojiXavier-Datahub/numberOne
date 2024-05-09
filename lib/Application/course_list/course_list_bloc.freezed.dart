// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CourseListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String search, String instructorId) getCourseList,
    required TResult Function(String id) getCourse,
    required TResult Function(List<String> id) getVideo,
    required TResult Function(int index) changeChapterIndex,
    required TResult Function() clearInstructorListByCourses,
    required TResult Function() videoPause,
    required TResult Function(VideoGetModel videoid) initializeVIdeoPlayer,
    required TResult Function(
            String couponCode, String productType, String productId)
        applyCoupon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String search, String instructorId)? getCourseList,
    TResult? Function(String id)? getCourse,
    TResult? Function(List<String> id)? getVideo,
    TResult? Function(int index)? changeChapterIndex,
    TResult? Function()? clearInstructorListByCourses,
    TResult? Function()? videoPause,
    TResult? Function(VideoGetModel videoid)? initializeVIdeoPlayer,
    TResult? Function(String couponCode, String productType, String productId)?
        applyCoupon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String search, String instructorId)? getCourseList,
    TResult Function(String id)? getCourse,
    TResult Function(List<String> id)? getVideo,
    TResult Function(int index)? changeChapterIndex,
    TResult Function()? clearInstructorListByCourses,
    TResult Function()? videoPause,
    TResult Function(VideoGetModel videoid)? initializeVIdeoPlayer,
    TResult Function(String couponCode, String productType, String productId)?
        applyCoupon,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCourseList value) getCourseList,
    required TResult Function(_GetCourse value) getCourse,
    required TResult Function(_GetVideo value) getVideo,
    required TResult Function(_ChangeChapterIndex value) changeChapterIndex,
    required TResult Function(_ClearInstructorListByCourses value)
        clearInstructorListByCourses,
    required TResult Function(_VideoPause value) videoPause,
    required TResult Function(_InitializeVIdeoPlayer value)
        initializeVIdeoPlayer,
    required TResult Function(_ApplyCoupon value) applyCoupon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCourseList value)? getCourseList,
    TResult? Function(_GetCourse value)? getCourse,
    TResult? Function(_GetVideo value)? getVideo,
    TResult? Function(_ChangeChapterIndex value)? changeChapterIndex,
    TResult? Function(_ClearInstructorListByCourses value)?
        clearInstructorListByCourses,
    TResult? Function(_VideoPause value)? videoPause,
    TResult? Function(_InitializeVIdeoPlayer value)? initializeVIdeoPlayer,
    TResult? Function(_ApplyCoupon value)? applyCoupon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCourseList value)? getCourseList,
    TResult Function(_GetCourse value)? getCourse,
    TResult Function(_GetVideo value)? getVideo,
    TResult Function(_ChangeChapterIndex value)? changeChapterIndex,
    TResult Function(_ClearInstructorListByCourses value)?
        clearInstructorListByCourses,
    TResult Function(_VideoPause value)? videoPause,
    TResult Function(_InitializeVIdeoPlayer value)? initializeVIdeoPlayer,
    TResult Function(_ApplyCoupon value)? applyCoupon,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseListEventCopyWith<$Res> {
  factory $CourseListEventCopyWith(
          CourseListEvent value, $Res Function(CourseListEvent) then) =
      _$CourseListEventCopyWithImpl<$Res, CourseListEvent>;
}

/// @nodoc
class _$CourseListEventCopyWithImpl<$Res, $Val extends CourseListEvent>
    implements $CourseListEventCopyWith<$Res> {
  _$CourseListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCourseListImplCopyWith<$Res> {
  factory _$$GetCourseListImplCopyWith(
          _$GetCourseListImpl value, $Res Function(_$GetCourseListImpl) then) =
      __$$GetCourseListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String search, String instructorId});
}

/// @nodoc
class __$$GetCourseListImplCopyWithImpl<$Res>
    extends _$CourseListEventCopyWithImpl<$Res, _$GetCourseListImpl>
    implements _$$GetCourseListImplCopyWith<$Res> {
  __$$GetCourseListImplCopyWithImpl(
      _$GetCourseListImpl _value, $Res Function(_$GetCourseListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = null,
    Object? instructorId = null,
  }) {
    return _then(_$GetCourseListImpl(
      search: null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
      instructorId: null == instructorId
          ? _value.instructorId
          : instructorId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetCourseListImpl implements _GetCourseList {
  const _$GetCourseListImpl({required this.search, required this.instructorId});

  @override
  final String search;
  @override
  final String instructorId;

  @override
  String toString() {
    return 'CourseListEvent.getCourseList(search: $search, instructorId: $instructorId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCourseListImpl &&
            (identical(other.search, search) || other.search == search) &&
            (identical(other.instructorId, instructorId) ||
                other.instructorId == instructorId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, search, instructorId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCourseListImplCopyWith<_$GetCourseListImpl> get copyWith =>
      __$$GetCourseListImplCopyWithImpl<_$GetCourseListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String search, String instructorId) getCourseList,
    required TResult Function(String id) getCourse,
    required TResult Function(List<String> id) getVideo,
    required TResult Function(int index) changeChapterIndex,
    required TResult Function() clearInstructorListByCourses,
    required TResult Function() videoPause,
    required TResult Function(VideoGetModel videoid) initializeVIdeoPlayer,
    required TResult Function(
            String couponCode, String productType, String productId)
        applyCoupon,
  }) {
    return getCourseList(search, instructorId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String search, String instructorId)? getCourseList,
    TResult? Function(String id)? getCourse,
    TResult? Function(List<String> id)? getVideo,
    TResult? Function(int index)? changeChapterIndex,
    TResult? Function()? clearInstructorListByCourses,
    TResult? Function()? videoPause,
    TResult? Function(VideoGetModel videoid)? initializeVIdeoPlayer,
    TResult? Function(String couponCode, String productType, String productId)?
        applyCoupon,
  }) {
    return getCourseList?.call(search, instructorId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String search, String instructorId)? getCourseList,
    TResult Function(String id)? getCourse,
    TResult Function(List<String> id)? getVideo,
    TResult Function(int index)? changeChapterIndex,
    TResult Function()? clearInstructorListByCourses,
    TResult Function()? videoPause,
    TResult Function(VideoGetModel videoid)? initializeVIdeoPlayer,
    TResult Function(String couponCode, String productType, String productId)?
        applyCoupon,
    required TResult orElse(),
  }) {
    if (getCourseList != null) {
      return getCourseList(search, instructorId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCourseList value) getCourseList,
    required TResult Function(_GetCourse value) getCourse,
    required TResult Function(_GetVideo value) getVideo,
    required TResult Function(_ChangeChapterIndex value) changeChapterIndex,
    required TResult Function(_ClearInstructorListByCourses value)
        clearInstructorListByCourses,
    required TResult Function(_VideoPause value) videoPause,
    required TResult Function(_InitializeVIdeoPlayer value)
        initializeVIdeoPlayer,
    required TResult Function(_ApplyCoupon value) applyCoupon,
  }) {
    return getCourseList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCourseList value)? getCourseList,
    TResult? Function(_GetCourse value)? getCourse,
    TResult? Function(_GetVideo value)? getVideo,
    TResult? Function(_ChangeChapterIndex value)? changeChapterIndex,
    TResult? Function(_ClearInstructorListByCourses value)?
        clearInstructorListByCourses,
    TResult? Function(_VideoPause value)? videoPause,
    TResult? Function(_InitializeVIdeoPlayer value)? initializeVIdeoPlayer,
    TResult? Function(_ApplyCoupon value)? applyCoupon,
  }) {
    return getCourseList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCourseList value)? getCourseList,
    TResult Function(_GetCourse value)? getCourse,
    TResult Function(_GetVideo value)? getVideo,
    TResult Function(_ChangeChapterIndex value)? changeChapterIndex,
    TResult Function(_ClearInstructorListByCourses value)?
        clearInstructorListByCourses,
    TResult Function(_VideoPause value)? videoPause,
    TResult Function(_InitializeVIdeoPlayer value)? initializeVIdeoPlayer,
    TResult Function(_ApplyCoupon value)? applyCoupon,
    required TResult orElse(),
  }) {
    if (getCourseList != null) {
      return getCourseList(this);
    }
    return orElse();
  }
}

abstract class _GetCourseList implements CourseListEvent {
  const factory _GetCourseList(
      {required final String search,
      required final String instructorId}) = _$GetCourseListImpl;

  String get search;
  String get instructorId;
  @JsonKey(ignore: true)
  _$$GetCourseListImplCopyWith<_$GetCourseListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCourseImplCopyWith<$Res> {
  factory _$$GetCourseImplCopyWith(
          _$GetCourseImpl value, $Res Function(_$GetCourseImpl) then) =
      __$$GetCourseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$GetCourseImplCopyWithImpl<$Res>
    extends _$CourseListEventCopyWithImpl<$Res, _$GetCourseImpl>
    implements _$$GetCourseImplCopyWith<$Res> {
  __$$GetCourseImplCopyWithImpl(
      _$GetCourseImpl _value, $Res Function(_$GetCourseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetCourseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetCourseImpl implements _GetCourse {
  const _$GetCourseImpl({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'CourseListEvent.getCourse(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCourseImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCourseImplCopyWith<_$GetCourseImpl> get copyWith =>
      __$$GetCourseImplCopyWithImpl<_$GetCourseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String search, String instructorId) getCourseList,
    required TResult Function(String id) getCourse,
    required TResult Function(List<String> id) getVideo,
    required TResult Function(int index) changeChapterIndex,
    required TResult Function() clearInstructorListByCourses,
    required TResult Function() videoPause,
    required TResult Function(VideoGetModel videoid) initializeVIdeoPlayer,
    required TResult Function(
            String couponCode, String productType, String productId)
        applyCoupon,
  }) {
    return getCourse(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String search, String instructorId)? getCourseList,
    TResult? Function(String id)? getCourse,
    TResult? Function(List<String> id)? getVideo,
    TResult? Function(int index)? changeChapterIndex,
    TResult? Function()? clearInstructorListByCourses,
    TResult? Function()? videoPause,
    TResult? Function(VideoGetModel videoid)? initializeVIdeoPlayer,
    TResult? Function(String couponCode, String productType, String productId)?
        applyCoupon,
  }) {
    return getCourse?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String search, String instructorId)? getCourseList,
    TResult Function(String id)? getCourse,
    TResult Function(List<String> id)? getVideo,
    TResult Function(int index)? changeChapterIndex,
    TResult Function()? clearInstructorListByCourses,
    TResult Function()? videoPause,
    TResult Function(VideoGetModel videoid)? initializeVIdeoPlayer,
    TResult Function(String couponCode, String productType, String productId)?
        applyCoupon,
    required TResult orElse(),
  }) {
    if (getCourse != null) {
      return getCourse(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCourseList value) getCourseList,
    required TResult Function(_GetCourse value) getCourse,
    required TResult Function(_GetVideo value) getVideo,
    required TResult Function(_ChangeChapterIndex value) changeChapterIndex,
    required TResult Function(_ClearInstructorListByCourses value)
        clearInstructorListByCourses,
    required TResult Function(_VideoPause value) videoPause,
    required TResult Function(_InitializeVIdeoPlayer value)
        initializeVIdeoPlayer,
    required TResult Function(_ApplyCoupon value) applyCoupon,
  }) {
    return getCourse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCourseList value)? getCourseList,
    TResult? Function(_GetCourse value)? getCourse,
    TResult? Function(_GetVideo value)? getVideo,
    TResult? Function(_ChangeChapterIndex value)? changeChapterIndex,
    TResult? Function(_ClearInstructorListByCourses value)?
        clearInstructorListByCourses,
    TResult? Function(_VideoPause value)? videoPause,
    TResult? Function(_InitializeVIdeoPlayer value)? initializeVIdeoPlayer,
    TResult? Function(_ApplyCoupon value)? applyCoupon,
  }) {
    return getCourse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCourseList value)? getCourseList,
    TResult Function(_GetCourse value)? getCourse,
    TResult Function(_GetVideo value)? getVideo,
    TResult Function(_ChangeChapterIndex value)? changeChapterIndex,
    TResult Function(_ClearInstructorListByCourses value)?
        clearInstructorListByCourses,
    TResult Function(_VideoPause value)? videoPause,
    TResult Function(_InitializeVIdeoPlayer value)? initializeVIdeoPlayer,
    TResult Function(_ApplyCoupon value)? applyCoupon,
    required TResult orElse(),
  }) {
    if (getCourse != null) {
      return getCourse(this);
    }
    return orElse();
  }
}

abstract class _GetCourse implements CourseListEvent {
  const factory _GetCourse({required final String id}) = _$GetCourseImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$GetCourseImplCopyWith<_$GetCourseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetVideoImplCopyWith<$Res> {
  factory _$$GetVideoImplCopyWith(
          _$GetVideoImpl value, $Res Function(_$GetVideoImpl) then) =
      __$$GetVideoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> id});
}

/// @nodoc
class __$$GetVideoImplCopyWithImpl<$Res>
    extends _$CourseListEventCopyWithImpl<$Res, _$GetVideoImpl>
    implements _$$GetVideoImplCopyWith<$Res> {
  __$$GetVideoImplCopyWithImpl(
      _$GetVideoImpl _value, $Res Function(_$GetVideoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetVideoImpl(
      id: null == id
          ? _value._id
          : id // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$GetVideoImpl implements _GetVideo {
  const _$GetVideoImpl({required final List<String> id}) : _id = id;

  final List<String> _id;
  @override
  List<String> get id {
    if (_id is EqualUnmodifiableListView) return _id;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_id);
  }

  @override
  String toString() {
    return 'CourseListEvent.getVideo(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetVideoImpl &&
            const DeepCollectionEquality().equals(other._id, _id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_id));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetVideoImplCopyWith<_$GetVideoImpl> get copyWith =>
      __$$GetVideoImplCopyWithImpl<_$GetVideoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String search, String instructorId) getCourseList,
    required TResult Function(String id) getCourse,
    required TResult Function(List<String> id) getVideo,
    required TResult Function(int index) changeChapterIndex,
    required TResult Function() clearInstructorListByCourses,
    required TResult Function() videoPause,
    required TResult Function(VideoGetModel videoid) initializeVIdeoPlayer,
    required TResult Function(
            String couponCode, String productType, String productId)
        applyCoupon,
  }) {
    return getVideo(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String search, String instructorId)? getCourseList,
    TResult? Function(String id)? getCourse,
    TResult? Function(List<String> id)? getVideo,
    TResult? Function(int index)? changeChapterIndex,
    TResult? Function()? clearInstructorListByCourses,
    TResult? Function()? videoPause,
    TResult? Function(VideoGetModel videoid)? initializeVIdeoPlayer,
    TResult? Function(String couponCode, String productType, String productId)?
        applyCoupon,
  }) {
    return getVideo?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String search, String instructorId)? getCourseList,
    TResult Function(String id)? getCourse,
    TResult Function(List<String> id)? getVideo,
    TResult Function(int index)? changeChapterIndex,
    TResult Function()? clearInstructorListByCourses,
    TResult Function()? videoPause,
    TResult Function(VideoGetModel videoid)? initializeVIdeoPlayer,
    TResult Function(String couponCode, String productType, String productId)?
        applyCoupon,
    required TResult orElse(),
  }) {
    if (getVideo != null) {
      return getVideo(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCourseList value) getCourseList,
    required TResult Function(_GetCourse value) getCourse,
    required TResult Function(_GetVideo value) getVideo,
    required TResult Function(_ChangeChapterIndex value) changeChapterIndex,
    required TResult Function(_ClearInstructorListByCourses value)
        clearInstructorListByCourses,
    required TResult Function(_VideoPause value) videoPause,
    required TResult Function(_InitializeVIdeoPlayer value)
        initializeVIdeoPlayer,
    required TResult Function(_ApplyCoupon value) applyCoupon,
  }) {
    return getVideo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCourseList value)? getCourseList,
    TResult? Function(_GetCourse value)? getCourse,
    TResult? Function(_GetVideo value)? getVideo,
    TResult? Function(_ChangeChapterIndex value)? changeChapterIndex,
    TResult? Function(_ClearInstructorListByCourses value)?
        clearInstructorListByCourses,
    TResult? Function(_VideoPause value)? videoPause,
    TResult? Function(_InitializeVIdeoPlayer value)? initializeVIdeoPlayer,
    TResult? Function(_ApplyCoupon value)? applyCoupon,
  }) {
    return getVideo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCourseList value)? getCourseList,
    TResult Function(_GetCourse value)? getCourse,
    TResult Function(_GetVideo value)? getVideo,
    TResult Function(_ChangeChapterIndex value)? changeChapterIndex,
    TResult Function(_ClearInstructorListByCourses value)?
        clearInstructorListByCourses,
    TResult Function(_VideoPause value)? videoPause,
    TResult Function(_InitializeVIdeoPlayer value)? initializeVIdeoPlayer,
    TResult Function(_ApplyCoupon value)? applyCoupon,
    required TResult orElse(),
  }) {
    if (getVideo != null) {
      return getVideo(this);
    }
    return orElse();
  }
}

abstract class _GetVideo implements CourseListEvent {
  const factory _GetVideo({required final List<String> id}) = _$GetVideoImpl;

  List<String> get id;
  @JsonKey(ignore: true)
  _$$GetVideoImplCopyWith<_$GetVideoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeChapterIndexImplCopyWith<$Res> {
  factory _$$ChangeChapterIndexImplCopyWith(_$ChangeChapterIndexImpl value,
          $Res Function(_$ChangeChapterIndexImpl) then) =
      __$$ChangeChapterIndexImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$ChangeChapterIndexImplCopyWithImpl<$Res>
    extends _$CourseListEventCopyWithImpl<$Res, _$ChangeChapterIndexImpl>
    implements _$$ChangeChapterIndexImplCopyWith<$Res> {
  __$$ChangeChapterIndexImplCopyWithImpl(_$ChangeChapterIndexImpl _value,
      $Res Function(_$ChangeChapterIndexImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$ChangeChapterIndexImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeChapterIndexImpl implements _ChangeChapterIndex {
  const _$ChangeChapterIndexImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'CourseListEvent.changeChapterIndex(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeChapterIndexImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeChapterIndexImplCopyWith<_$ChangeChapterIndexImpl> get copyWith =>
      __$$ChangeChapterIndexImplCopyWithImpl<_$ChangeChapterIndexImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String search, String instructorId) getCourseList,
    required TResult Function(String id) getCourse,
    required TResult Function(List<String> id) getVideo,
    required TResult Function(int index) changeChapterIndex,
    required TResult Function() clearInstructorListByCourses,
    required TResult Function() videoPause,
    required TResult Function(VideoGetModel videoid) initializeVIdeoPlayer,
    required TResult Function(
            String couponCode, String productType, String productId)
        applyCoupon,
  }) {
    return changeChapterIndex(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String search, String instructorId)? getCourseList,
    TResult? Function(String id)? getCourse,
    TResult? Function(List<String> id)? getVideo,
    TResult? Function(int index)? changeChapterIndex,
    TResult? Function()? clearInstructorListByCourses,
    TResult? Function()? videoPause,
    TResult? Function(VideoGetModel videoid)? initializeVIdeoPlayer,
    TResult? Function(String couponCode, String productType, String productId)?
        applyCoupon,
  }) {
    return changeChapterIndex?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String search, String instructorId)? getCourseList,
    TResult Function(String id)? getCourse,
    TResult Function(List<String> id)? getVideo,
    TResult Function(int index)? changeChapterIndex,
    TResult Function()? clearInstructorListByCourses,
    TResult Function()? videoPause,
    TResult Function(VideoGetModel videoid)? initializeVIdeoPlayer,
    TResult Function(String couponCode, String productType, String productId)?
        applyCoupon,
    required TResult orElse(),
  }) {
    if (changeChapterIndex != null) {
      return changeChapterIndex(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCourseList value) getCourseList,
    required TResult Function(_GetCourse value) getCourse,
    required TResult Function(_GetVideo value) getVideo,
    required TResult Function(_ChangeChapterIndex value) changeChapterIndex,
    required TResult Function(_ClearInstructorListByCourses value)
        clearInstructorListByCourses,
    required TResult Function(_VideoPause value) videoPause,
    required TResult Function(_InitializeVIdeoPlayer value)
        initializeVIdeoPlayer,
    required TResult Function(_ApplyCoupon value) applyCoupon,
  }) {
    return changeChapterIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCourseList value)? getCourseList,
    TResult? Function(_GetCourse value)? getCourse,
    TResult? Function(_GetVideo value)? getVideo,
    TResult? Function(_ChangeChapterIndex value)? changeChapterIndex,
    TResult? Function(_ClearInstructorListByCourses value)?
        clearInstructorListByCourses,
    TResult? Function(_VideoPause value)? videoPause,
    TResult? Function(_InitializeVIdeoPlayer value)? initializeVIdeoPlayer,
    TResult? Function(_ApplyCoupon value)? applyCoupon,
  }) {
    return changeChapterIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCourseList value)? getCourseList,
    TResult Function(_GetCourse value)? getCourse,
    TResult Function(_GetVideo value)? getVideo,
    TResult Function(_ChangeChapterIndex value)? changeChapterIndex,
    TResult Function(_ClearInstructorListByCourses value)?
        clearInstructorListByCourses,
    TResult Function(_VideoPause value)? videoPause,
    TResult Function(_InitializeVIdeoPlayer value)? initializeVIdeoPlayer,
    TResult Function(_ApplyCoupon value)? applyCoupon,
    required TResult orElse(),
  }) {
    if (changeChapterIndex != null) {
      return changeChapterIndex(this);
    }
    return orElse();
  }
}

abstract class _ChangeChapterIndex implements CourseListEvent {
  const factory _ChangeChapterIndex({required final int index}) =
      _$ChangeChapterIndexImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$ChangeChapterIndexImplCopyWith<_$ChangeChapterIndexImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearInstructorListByCoursesImplCopyWith<$Res> {
  factory _$$ClearInstructorListByCoursesImplCopyWith(
          _$ClearInstructorListByCoursesImpl value,
          $Res Function(_$ClearInstructorListByCoursesImpl) then) =
      __$$ClearInstructorListByCoursesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearInstructorListByCoursesImplCopyWithImpl<$Res>
    extends _$CourseListEventCopyWithImpl<$Res,
        _$ClearInstructorListByCoursesImpl>
    implements _$$ClearInstructorListByCoursesImplCopyWith<$Res> {
  __$$ClearInstructorListByCoursesImplCopyWithImpl(
      _$ClearInstructorListByCoursesImpl _value,
      $Res Function(_$ClearInstructorListByCoursesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearInstructorListByCoursesImpl
    implements _ClearInstructorListByCourses {
  const _$ClearInstructorListByCoursesImpl();

  @override
  String toString() {
    return 'CourseListEvent.clearInstructorListByCourses()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearInstructorListByCoursesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String search, String instructorId) getCourseList,
    required TResult Function(String id) getCourse,
    required TResult Function(List<String> id) getVideo,
    required TResult Function(int index) changeChapterIndex,
    required TResult Function() clearInstructorListByCourses,
    required TResult Function() videoPause,
    required TResult Function(VideoGetModel videoid) initializeVIdeoPlayer,
    required TResult Function(
            String couponCode, String productType, String productId)
        applyCoupon,
  }) {
    return clearInstructorListByCourses();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String search, String instructorId)? getCourseList,
    TResult? Function(String id)? getCourse,
    TResult? Function(List<String> id)? getVideo,
    TResult? Function(int index)? changeChapterIndex,
    TResult? Function()? clearInstructorListByCourses,
    TResult? Function()? videoPause,
    TResult? Function(VideoGetModel videoid)? initializeVIdeoPlayer,
    TResult? Function(String couponCode, String productType, String productId)?
        applyCoupon,
  }) {
    return clearInstructorListByCourses?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String search, String instructorId)? getCourseList,
    TResult Function(String id)? getCourse,
    TResult Function(List<String> id)? getVideo,
    TResult Function(int index)? changeChapterIndex,
    TResult Function()? clearInstructorListByCourses,
    TResult Function()? videoPause,
    TResult Function(VideoGetModel videoid)? initializeVIdeoPlayer,
    TResult Function(String couponCode, String productType, String productId)?
        applyCoupon,
    required TResult orElse(),
  }) {
    if (clearInstructorListByCourses != null) {
      return clearInstructorListByCourses();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCourseList value) getCourseList,
    required TResult Function(_GetCourse value) getCourse,
    required TResult Function(_GetVideo value) getVideo,
    required TResult Function(_ChangeChapterIndex value) changeChapterIndex,
    required TResult Function(_ClearInstructorListByCourses value)
        clearInstructorListByCourses,
    required TResult Function(_VideoPause value) videoPause,
    required TResult Function(_InitializeVIdeoPlayer value)
        initializeVIdeoPlayer,
    required TResult Function(_ApplyCoupon value) applyCoupon,
  }) {
    return clearInstructorListByCourses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCourseList value)? getCourseList,
    TResult? Function(_GetCourse value)? getCourse,
    TResult? Function(_GetVideo value)? getVideo,
    TResult? Function(_ChangeChapterIndex value)? changeChapterIndex,
    TResult? Function(_ClearInstructorListByCourses value)?
        clearInstructorListByCourses,
    TResult? Function(_VideoPause value)? videoPause,
    TResult? Function(_InitializeVIdeoPlayer value)? initializeVIdeoPlayer,
    TResult? Function(_ApplyCoupon value)? applyCoupon,
  }) {
    return clearInstructorListByCourses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCourseList value)? getCourseList,
    TResult Function(_GetCourse value)? getCourse,
    TResult Function(_GetVideo value)? getVideo,
    TResult Function(_ChangeChapterIndex value)? changeChapterIndex,
    TResult Function(_ClearInstructorListByCourses value)?
        clearInstructorListByCourses,
    TResult Function(_VideoPause value)? videoPause,
    TResult Function(_InitializeVIdeoPlayer value)? initializeVIdeoPlayer,
    TResult Function(_ApplyCoupon value)? applyCoupon,
    required TResult orElse(),
  }) {
    if (clearInstructorListByCourses != null) {
      return clearInstructorListByCourses(this);
    }
    return orElse();
  }
}

abstract class _ClearInstructorListByCourses implements CourseListEvent {
  const factory _ClearInstructorListByCourses() =
      _$ClearInstructorListByCoursesImpl;
}

/// @nodoc
abstract class _$$VideoPauseImplCopyWith<$Res> {
  factory _$$VideoPauseImplCopyWith(
          _$VideoPauseImpl value, $Res Function(_$VideoPauseImpl) then) =
      __$$VideoPauseImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VideoPauseImplCopyWithImpl<$Res>
    extends _$CourseListEventCopyWithImpl<$Res, _$VideoPauseImpl>
    implements _$$VideoPauseImplCopyWith<$Res> {
  __$$VideoPauseImplCopyWithImpl(
      _$VideoPauseImpl _value, $Res Function(_$VideoPauseImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$VideoPauseImpl implements _VideoPause {
  const _$VideoPauseImpl();

  @override
  String toString() {
    return 'CourseListEvent.videoPause()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$VideoPauseImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String search, String instructorId) getCourseList,
    required TResult Function(String id) getCourse,
    required TResult Function(List<String> id) getVideo,
    required TResult Function(int index) changeChapterIndex,
    required TResult Function() clearInstructorListByCourses,
    required TResult Function() videoPause,
    required TResult Function(VideoGetModel videoid) initializeVIdeoPlayer,
    required TResult Function(
            String couponCode, String productType, String productId)
        applyCoupon,
  }) {
    return videoPause();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String search, String instructorId)? getCourseList,
    TResult? Function(String id)? getCourse,
    TResult? Function(List<String> id)? getVideo,
    TResult? Function(int index)? changeChapterIndex,
    TResult? Function()? clearInstructorListByCourses,
    TResult? Function()? videoPause,
    TResult? Function(VideoGetModel videoid)? initializeVIdeoPlayer,
    TResult? Function(String couponCode, String productType, String productId)?
        applyCoupon,
  }) {
    return videoPause?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String search, String instructorId)? getCourseList,
    TResult Function(String id)? getCourse,
    TResult Function(List<String> id)? getVideo,
    TResult Function(int index)? changeChapterIndex,
    TResult Function()? clearInstructorListByCourses,
    TResult Function()? videoPause,
    TResult Function(VideoGetModel videoid)? initializeVIdeoPlayer,
    TResult Function(String couponCode, String productType, String productId)?
        applyCoupon,
    required TResult orElse(),
  }) {
    if (videoPause != null) {
      return videoPause();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCourseList value) getCourseList,
    required TResult Function(_GetCourse value) getCourse,
    required TResult Function(_GetVideo value) getVideo,
    required TResult Function(_ChangeChapterIndex value) changeChapterIndex,
    required TResult Function(_ClearInstructorListByCourses value)
        clearInstructorListByCourses,
    required TResult Function(_VideoPause value) videoPause,
    required TResult Function(_InitializeVIdeoPlayer value)
        initializeVIdeoPlayer,
    required TResult Function(_ApplyCoupon value) applyCoupon,
  }) {
    return videoPause(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCourseList value)? getCourseList,
    TResult? Function(_GetCourse value)? getCourse,
    TResult? Function(_GetVideo value)? getVideo,
    TResult? Function(_ChangeChapterIndex value)? changeChapterIndex,
    TResult? Function(_ClearInstructorListByCourses value)?
        clearInstructorListByCourses,
    TResult? Function(_VideoPause value)? videoPause,
    TResult? Function(_InitializeVIdeoPlayer value)? initializeVIdeoPlayer,
    TResult? Function(_ApplyCoupon value)? applyCoupon,
  }) {
    return videoPause?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCourseList value)? getCourseList,
    TResult Function(_GetCourse value)? getCourse,
    TResult Function(_GetVideo value)? getVideo,
    TResult Function(_ChangeChapterIndex value)? changeChapterIndex,
    TResult Function(_ClearInstructorListByCourses value)?
        clearInstructorListByCourses,
    TResult Function(_VideoPause value)? videoPause,
    TResult Function(_InitializeVIdeoPlayer value)? initializeVIdeoPlayer,
    TResult Function(_ApplyCoupon value)? applyCoupon,
    required TResult orElse(),
  }) {
    if (videoPause != null) {
      return videoPause(this);
    }
    return orElse();
  }
}

abstract class _VideoPause implements CourseListEvent {
  const factory _VideoPause() = _$VideoPauseImpl;
}

/// @nodoc
abstract class _$$InitializeVIdeoPlayerImplCopyWith<$Res> {
  factory _$$InitializeVIdeoPlayerImplCopyWith(
          _$InitializeVIdeoPlayerImpl value,
          $Res Function(_$InitializeVIdeoPlayerImpl) then) =
      __$$InitializeVIdeoPlayerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({VideoGetModel videoid});
}

/// @nodoc
class __$$InitializeVIdeoPlayerImplCopyWithImpl<$Res>
    extends _$CourseListEventCopyWithImpl<$Res, _$InitializeVIdeoPlayerImpl>
    implements _$$InitializeVIdeoPlayerImplCopyWith<$Res> {
  __$$InitializeVIdeoPlayerImplCopyWithImpl(_$InitializeVIdeoPlayerImpl _value,
      $Res Function(_$InitializeVIdeoPlayerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoid = null,
  }) {
    return _then(_$InitializeVIdeoPlayerImpl(
      videoid: null == videoid
          ? _value.videoid
          : videoid // ignore: cast_nullable_to_non_nullable
              as VideoGetModel,
    ));
  }
}

/// @nodoc

class _$InitializeVIdeoPlayerImpl implements _InitializeVIdeoPlayer {
  const _$InitializeVIdeoPlayerImpl({required this.videoid});

  @override
  final VideoGetModel videoid;

  @override
  String toString() {
    return 'CourseListEvent.initializeVIdeoPlayer(videoid: $videoid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializeVIdeoPlayerImpl &&
            (identical(other.videoid, videoid) || other.videoid == videoid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, videoid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializeVIdeoPlayerImplCopyWith<_$InitializeVIdeoPlayerImpl>
      get copyWith => __$$InitializeVIdeoPlayerImplCopyWithImpl<
          _$InitializeVIdeoPlayerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String search, String instructorId) getCourseList,
    required TResult Function(String id) getCourse,
    required TResult Function(List<String> id) getVideo,
    required TResult Function(int index) changeChapterIndex,
    required TResult Function() clearInstructorListByCourses,
    required TResult Function() videoPause,
    required TResult Function(VideoGetModel videoid) initializeVIdeoPlayer,
    required TResult Function(
            String couponCode, String productType, String productId)
        applyCoupon,
  }) {
    return initializeVIdeoPlayer(videoid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String search, String instructorId)? getCourseList,
    TResult? Function(String id)? getCourse,
    TResult? Function(List<String> id)? getVideo,
    TResult? Function(int index)? changeChapterIndex,
    TResult? Function()? clearInstructorListByCourses,
    TResult? Function()? videoPause,
    TResult? Function(VideoGetModel videoid)? initializeVIdeoPlayer,
    TResult? Function(String couponCode, String productType, String productId)?
        applyCoupon,
  }) {
    return initializeVIdeoPlayer?.call(videoid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String search, String instructorId)? getCourseList,
    TResult Function(String id)? getCourse,
    TResult Function(List<String> id)? getVideo,
    TResult Function(int index)? changeChapterIndex,
    TResult Function()? clearInstructorListByCourses,
    TResult Function()? videoPause,
    TResult Function(VideoGetModel videoid)? initializeVIdeoPlayer,
    TResult Function(String couponCode, String productType, String productId)?
        applyCoupon,
    required TResult orElse(),
  }) {
    if (initializeVIdeoPlayer != null) {
      return initializeVIdeoPlayer(videoid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCourseList value) getCourseList,
    required TResult Function(_GetCourse value) getCourse,
    required TResult Function(_GetVideo value) getVideo,
    required TResult Function(_ChangeChapterIndex value) changeChapterIndex,
    required TResult Function(_ClearInstructorListByCourses value)
        clearInstructorListByCourses,
    required TResult Function(_VideoPause value) videoPause,
    required TResult Function(_InitializeVIdeoPlayer value)
        initializeVIdeoPlayer,
    required TResult Function(_ApplyCoupon value) applyCoupon,
  }) {
    return initializeVIdeoPlayer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCourseList value)? getCourseList,
    TResult? Function(_GetCourse value)? getCourse,
    TResult? Function(_GetVideo value)? getVideo,
    TResult? Function(_ChangeChapterIndex value)? changeChapterIndex,
    TResult? Function(_ClearInstructorListByCourses value)?
        clearInstructorListByCourses,
    TResult? Function(_VideoPause value)? videoPause,
    TResult? Function(_InitializeVIdeoPlayer value)? initializeVIdeoPlayer,
    TResult? Function(_ApplyCoupon value)? applyCoupon,
  }) {
    return initializeVIdeoPlayer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCourseList value)? getCourseList,
    TResult Function(_GetCourse value)? getCourse,
    TResult Function(_GetVideo value)? getVideo,
    TResult Function(_ChangeChapterIndex value)? changeChapterIndex,
    TResult Function(_ClearInstructorListByCourses value)?
        clearInstructorListByCourses,
    TResult Function(_VideoPause value)? videoPause,
    TResult Function(_InitializeVIdeoPlayer value)? initializeVIdeoPlayer,
    TResult Function(_ApplyCoupon value)? applyCoupon,
    required TResult orElse(),
  }) {
    if (initializeVIdeoPlayer != null) {
      return initializeVIdeoPlayer(this);
    }
    return orElse();
  }
}

abstract class _InitializeVIdeoPlayer implements CourseListEvent {
  const factory _InitializeVIdeoPlayer({required final VideoGetModel videoid}) =
      _$InitializeVIdeoPlayerImpl;

  VideoGetModel get videoid;
  @JsonKey(ignore: true)
  _$$InitializeVIdeoPlayerImplCopyWith<_$InitializeVIdeoPlayerImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApplyCouponImplCopyWith<$Res> {
  factory _$$ApplyCouponImplCopyWith(
          _$ApplyCouponImpl value, $Res Function(_$ApplyCouponImpl) then) =
      __$$ApplyCouponImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String couponCode, String productType, String productId});
}

/// @nodoc
class __$$ApplyCouponImplCopyWithImpl<$Res>
    extends _$CourseListEventCopyWithImpl<$Res, _$ApplyCouponImpl>
    implements _$$ApplyCouponImplCopyWith<$Res> {
  __$$ApplyCouponImplCopyWithImpl(
      _$ApplyCouponImpl _value, $Res Function(_$ApplyCouponImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? couponCode = null,
    Object? productType = null,
    Object? productId = null,
  }) {
    return _then(_$ApplyCouponImpl(
      couponCode: null == couponCode
          ? _value.couponCode
          : couponCode // ignore: cast_nullable_to_non_nullable
              as String,
      productType: null == productType
          ? _value.productType
          : productType // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ApplyCouponImpl implements _ApplyCoupon {
  const _$ApplyCouponImpl(
      {required this.couponCode,
      required this.productType,
      required this.productId});

  @override
  final String couponCode;
  @override
  final String productType;
  @override
  final String productId;

  @override
  String toString() {
    return 'CourseListEvent.applyCoupon(couponCode: $couponCode, productType: $productType, productId: $productId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApplyCouponImpl &&
            (identical(other.couponCode, couponCode) ||
                other.couponCode == couponCode) &&
            (identical(other.productType, productType) ||
                other.productType == productType) &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, couponCode, productType, productId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApplyCouponImplCopyWith<_$ApplyCouponImpl> get copyWith =>
      __$$ApplyCouponImplCopyWithImpl<_$ApplyCouponImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String search, String instructorId) getCourseList,
    required TResult Function(String id) getCourse,
    required TResult Function(List<String> id) getVideo,
    required TResult Function(int index) changeChapterIndex,
    required TResult Function() clearInstructorListByCourses,
    required TResult Function() videoPause,
    required TResult Function(VideoGetModel videoid) initializeVIdeoPlayer,
    required TResult Function(
            String couponCode, String productType, String productId)
        applyCoupon,
  }) {
    return applyCoupon(couponCode, productType, productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String search, String instructorId)? getCourseList,
    TResult? Function(String id)? getCourse,
    TResult? Function(List<String> id)? getVideo,
    TResult? Function(int index)? changeChapterIndex,
    TResult? Function()? clearInstructorListByCourses,
    TResult? Function()? videoPause,
    TResult? Function(VideoGetModel videoid)? initializeVIdeoPlayer,
    TResult? Function(String couponCode, String productType, String productId)?
        applyCoupon,
  }) {
    return applyCoupon?.call(couponCode, productType, productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String search, String instructorId)? getCourseList,
    TResult Function(String id)? getCourse,
    TResult Function(List<String> id)? getVideo,
    TResult Function(int index)? changeChapterIndex,
    TResult Function()? clearInstructorListByCourses,
    TResult Function()? videoPause,
    TResult Function(VideoGetModel videoid)? initializeVIdeoPlayer,
    TResult Function(String couponCode, String productType, String productId)?
        applyCoupon,
    required TResult orElse(),
  }) {
    if (applyCoupon != null) {
      return applyCoupon(couponCode, productType, productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCourseList value) getCourseList,
    required TResult Function(_GetCourse value) getCourse,
    required TResult Function(_GetVideo value) getVideo,
    required TResult Function(_ChangeChapterIndex value) changeChapterIndex,
    required TResult Function(_ClearInstructorListByCourses value)
        clearInstructorListByCourses,
    required TResult Function(_VideoPause value) videoPause,
    required TResult Function(_InitializeVIdeoPlayer value)
        initializeVIdeoPlayer,
    required TResult Function(_ApplyCoupon value) applyCoupon,
  }) {
    return applyCoupon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCourseList value)? getCourseList,
    TResult? Function(_GetCourse value)? getCourse,
    TResult? Function(_GetVideo value)? getVideo,
    TResult? Function(_ChangeChapterIndex value)? changeChapterIndex,
    TResult? Function(_ClearInstructorListByCourses value)?
        clearInstructorListByCourses,
    TResult? Function(_VideoPause value)? videoPause,
    TResult? Function(_InitializeVIdeoPlayer value)? initializeVIdeoPlayer,
    TResult? Function(_ApplyCoupon value)? applyCoupon,
  }) {
    return applyCoupon?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCourseList value)? getCourseList,
    TResult Function(_GetCourse value)? getCourse,
    TResult Function(_GetVideo value)? getVideo,
    TResult Function(_ChangeChapterIndex value)? changeChapterIndex,
    TResult Function(_ClearInstructorListByCourses value)?
        clearInstructorListByCourses,
    TResult Function(_VideoPause value)? videoPause,
    TResult Function(_InitializeVIdeoPlayer value)? initializeVIdeoPlayer,
    TResult Function(_ApplyCoupon value)? applyCoupon,
    required TResult orElse(),
  }) {
    if (applyCoupon != null) {
      return applyCoupon(this);
    }
    return orElse();
  }
}

abstract class _ApplyCoupon implements CourseListEvent {
  const factory _ApplyCoupon(
      {required final String couponCode,
      required final String productType,
      required final String productId}) = _$ApplyCouponImpl;

  String get couponCode;
  String get productType;
  String get productId;
  @JsonKey(ignore: true)
  _$$ApplyCouponImplCopyWith<_$ApplyCouponImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CourseListState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get videoLoading => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  bool get loadMore => throw _privateConstructorUsedError;
  CourseList? get courseList => throw _privateConstructorUsedError;
  VideoPlayerController? get videoPlayerController1 =>
      throw _privateConstructorUsedError;
  ChewieController? get chewieController => throw _privateConstructorUsedError;
  List<VideoGetModel> get videoList => throw _privateConstructorUsedError;
  CourseList? get freecourseList => throw _privateConstructorUsedError;
  CourseList? get instructorCourseList => throw _privateConstructorUsedError;
  String? get videoOutSidePauseState => throw _privateConstructorUsedError;
  CourseGet? get courseGet => throw _privateConstructorUsedError;
  int? get chapterIndex => throw _privateConstructorUsedError;
  CoupenModel? get coupenModel => throw _privateConstructorUsedError;
  List<String> get chapterdId => throw _privateConstructorUsedError;
  Option<Either<MainFailure, CourseGet>> get courseGetFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  Option<Either<MainFailure, CoupenModel>>
      get coupenModelFailureOrSuccessOption =>
          throw _privateConstructorUsedError;
  Option<Either<MainFailure, List<VideoGetModel>>>
      get videoGetFailureOrSuccessOption => throw _privateConstructorUsedError;
  Option<Either<MainFailure, CourseList>> get languageFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CourseListStateCopyWith<CourseListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseListStateCopyWith<$Res> {
  factory $CourseListStateCopyWith(
          CourseListState value, $Res Function(CourseListState) then) =
      _$CourseListStateCopyWithImpl<$Res, CourseListState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool videoLoading,
      int totalPages,
      int page,
      bool loadMore,
      CourseList? courseList,
      VideoPlayerController? videoPlayerController1,
      ChewieController? chewieController,
      List<VideoGetModel> videoList,
      CourseList? freecourseList,
      CourseList? instructorCourseList,
      String? videoOutSidePauseState,
      CourseGet? courseGet,
      int? chapterIndex,
      CoupenModel? coupenModel,
      List<String> chapterdId,
      Option<Either<MainFailure, CourseGet>> courseGetFailureOrSuccessOption,
      Option<Either<MainFailure, CoupenModel>>
          coupenModelFailureOrSuccessOption,
      Option<Either<MainFailure, List<VideoGetModel>>>
          videoGetFailureOrSuccessOption,
      Option<Either<MainFailure, CourseList>> languageFailureOrSuccessOption});
}

/// @nodoc
class _$CourseListStateCopyWithImpl<$Res, $Val extends CourseListState>
    implements $CourseListStateCopyWith<$Res> {
  _$CourseListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? videoLoading = null,
    Object? totalPages = null,
    Object? page = null,
    Object? loadMore = null,
    Object? courseList = freezed,
    Object? videoPlayerController1 = freezed,
    Object? chewieController = freezed,
    Object? videoList = null,
    Object? freecourseList = freezed,
    Object? instructorCourseList = freezed,
    Object? videoOutSidePauseState = freezed,
    Object? courseGet = freezed,
    Object? chapterIndex = freezed,
    Object? coupenModel = freezed,
    Object? chapterdId = null,
    Object? courseGetFailureOrSuccessOption = null,
    Object? coupenModelFailureOrSuccessOption = null,
    Object? videoGetFailureOrSuccessOption = null,
    Object? languageFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      videoLoading: null == videoLoading
          ? _value.videoLoading
          : videoLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      loadMore: null == loadMore
          ? _value.loadMore
          : loadMore // ignore: cast_nullable_to_non_nullable
              as bool,
      courseList: freezed == courseList
          ? _value.courseList
          : courseList // ignore: cast_nullable_to_non_nullable
              as CourseList?,
      videoPlayerController1: freezed == videoPlayerController1
          ? _value.videoPlayerController1
          : videoPlayerController1 // ignore: cast_nullable_to_non_nullable
              as VideoPlayerController?,
      chewieController: freezed == chewieController
          ? _value.chewieController
          : chewieController // ignore: cast_nullable_to_non_nullable
              as ChewieController?,
      videoList: null == videoList
          ? _value.videoList
          : videoList // ignore: cast_nullable_to_non_nullable
              as List<VideoGetModel>,
      freecourseList: freezed == freecourseList
          ? _value.freecourseList
          : freecourseList // ignore: cast_nullable_to_non_nullable
              as CourseList?,
      instructorCourseList: freezed == instructorCourseList
          ? _value.instructorCourseList
          : instructorCourseList // ignore: cast_nullable_to_non_nullable
              as CourseList?,
      videoOutSidePauseState: freezed == videoOutSidePauseState
          ? _value.videoOutSidePauseState
          : videoOutSidePauseState // ignore: cast_nullable_to_non_nullable
              as String?,
      courseGet: freezed == courseGet
          ? _value.courseGet
          : courseGet // ignore: cast_nullable_to_non_nullable
              as CourseGet?,
      chapterIndex: freezed == chapterIndex
          ? _value.chapterIndex
          : chapterIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      coupenModel: freezed == coupenModel
          ? _value.coupenModel
          : coupenModel // ignore: cast_nullable_to_non_nullable
              as CoupenModel?,
      chapterdId: null == chapterdId
          ? _value.chapterdId
          : chapterdId // ignore: cast_nullable_to_non_nullable
              as List<String>,
      courseGetFailureOrSuccessOption: null == courseGetFailureOrSuccessOption
          ? _value.courseGetFailureOrSuccessOption
          : courseGetFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, CourseGet>>,
      coupenModelFailureOrSuccessOption: null ==
              coupenModelFailureOrSuccessOption
          ? _value.coupenModelFailureOrSuccessOption
          : coupenModelFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, CoupenModel>>,
      videoGetFailureOrSuccessOption: null == videoGetFailureOrSuccessOption
          ? _value.videoGetFailureOrSuccessOption
          : videoGetFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<VideoGetModel>>>,
      languageFailureOrSuccessOption: null == languageFailureOrSuccessOption
          ? _value.languageFailureOrSuccessOption
          : languageFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, CourseList>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseListStateImplCopyWith<$Res>
    implements $CourseListStateCopyWith<$Res> {
  factory _$$CourseListStateImplCopyWith(_$CourseListStateImpl value,
          $Res Function(_$CourseListStateImpl) then) =
      __$$CourseListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool videoLoading,
      int totalPages,
      int page,
      bool loadMore,
      CourseList? courseList,
      VideoPlayerController? videoPlayerController1,
      ChewieController? chewieController,
      List<VideoGetModel> videoList,
      CourseList? freecourseList,
      CourseList? instructorCourseList,
      String? videoOutSidePauseState,
      CourseGet? courseGet,
      int? chapterIndex,
      CoupenModel? coupenModel,
      List<String> chapterdId,
      Option<Either<MainFailure, CourseGet>> courseGetFailureOrSuccessOption,
      Option<Either<MainFailure, CoupenModel>>
          coupenModelFailureOrSuccessOption,
      Option<Either<MainFailure, List<VideoGetModel>>>
          videoGetFailureOrSuccessOption,
      Option<Either<MainFailure, CourseList>> languageFailureOrSuccessOption});
}

/// @nodoc
class __$$CourseListStateImplCopyWithImpl<$Res>
    extends _$CourseListStateCopyWithImpl<$Res, _$CourseListStateImpl>
    implements _$$CourseListStateImplCopyWith<$Res> {
  __$$CourseListStateImplCopyWithImpl(
      _$CourseListStateImpl _value, $Res Function(_$CourseListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? videoLoading = null,
    Object? totalPages = null,
    Object? page = null,
    Object? loadMore = null,
    Object? courseList = freezed,
    Object? videoPlayerController1 = freezed,
    Object? chewieController = freezed,
    Object? videoList = null,
    Object? freecourseList = freezed,
    Object? instructorCourseList = freezed,
    Object? videoOutSidePauseState = freezed,
    Object? courseGet = freezed,
    Object? chapterIndex = freezed,
    Object? coupenModel = freezed,
    Object? chapterdId = null,
    Object? courseGetFailureOrSuccessOption = null,
    Object? coupenModelFailureOrSuccessOption = null,
    Object? videoGetFailureOrSuccessOption = null,
    Object? languageFailureOrSuccessOption = null,
  }) {
    return _then(_$CourseListStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      videoLoading: null == videoLoading
          ? _value.videoLoading
          : videoLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      loadMore: null == loadMore
          ? _value.loadMore
          : loadMore // ignore: cast_nullable_to_non_nullable
              as bool,
      courseList: freezed == courseList
          ? _value.courseList
          : courseList // ignore: cast_nullable_to_non_nullable
              as CourseList?,
      videoPlayerController1: freezed == videoPlayerController1
          ? _value.videoPlayerController1
          : videoPlayerController1 // ignore: cast_nullable_to_non_nullable
              as VideoPlayerController?,
      chewieController: freezed == chewieController
          ? _value.chewieController
          : chewieController // ignore: cast_nullable_to_non_nullable
              as ChewieController?,
      videoList: null == videoList
          ? _value._videoList
          : videoList // ignore: cast_nullable_to_non_nullable
              as List<VideoGetModel>,
      freecourseList: freezed == freecourseList
          ? _value.freecourseList
          : freecourseList // ignore: cast_nullable_to_non_nullable
              as CourseList?,
      instructorCourseList: freezed == instructorCourseList
          ? _value.instructorCourseList
          : instructorCourseList // ignore: cast_nullable_to_non_nullable
              as CourseList?,
      videoOutSidePauseState: freezed == videoOutSidePauseState
          ? _value.videoOutSidePauseState
          : videoOutSidePauseState // ignore: cast_nullable_to_non_nullable
              as String?,
      courseGet: freezed == courseGet
          ? _value.courseGet
          : courseGet // ignore: cast_nullable_to_non_nullable
              as CourseGet?,
      chapterIndex: freezed == chapterIndex
          ? _value.chapterIndex
          : chapterIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      coupenModel: freezed == coupenModel
          ? _value.coupenModel
          : coupenModel // ignore: cast_nullable_to_non_nullable
              as CoupenModel?,
      chapterdId: null == chapterdId
          ? _value._chapterdId
          : chapterdId // ignore: cast_nullable_to_non_nullable
              as List<String>,
      courseGetFailureOrSuccessOption: null == courseGetFailureOrSuccessOption
          ? _value.courseGetFailureOrSuccessOption
          : courseGetFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, CourseGet>>,
      coupenModelFailureOrSuccessOption: null ==
              coupenModelFailureOrSuccessOption
          ? _value.coupenModelFailureOrSuccessOption
          : coupenModelFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, CoupenModel>>,
      videoGetFailureOrSuccessOption: null == videoGetFailureOrSuccessOption
          ? _value.videoGetFailureOrSuccessOption
          : videoGetFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<VideoGetModel>>>,
      languageFailureOrSuccessOption: null == languageFailureOrSuccessOption
          ? _value.languageFailureOrSuccessOption
          : languageFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, CourseList>>,
    ));
  }
}

/// @nodoc

class _$CourseListStateImpl implements _CourseListState {
  const _$CourseListStateImpl(
      {required this.isLoading,
      required this.videoLoading,
      required this.totalPages,
      required this.page,
      required this.loadMore,
      this.courseList,
      this.videoPlayerController1,
      this.chewieController,
      final List<VideoGetModel> videoList = const [],
      this.freecourseList,
      this.instructorCourseList,
      this.videoOutSidePauseState,
      this.courseGet,
      this.chapterIndex,
      this.coupenModel,
      final List<String> chapterdId = const [],
      required this.courseGetFailureOrSuccessOption,
      required this.coupenModelFailureOrSuccessOption,
      required this.videoGetFailureOrSuccessOption,
      required this.languageFailureOrSuccessOption})
      : _videoList = videoList,
        _chapterdId = chapterdId;

  @override
  final bool isLoading;
  @override
  final bool videoLoading;
  @override
  final int totalPages;
  @override
  final int page;
  @override
  final bool loadMore;
  @override
  final CourseList? courseList;
  @override
  final VideoPlayerController? videoPlayerController1;
  @override
  final ChewieController? chewieController;
  final List<VideoGetModel> _videoList;
  @override
  @JsonKey()
  List<VideoGetModel> get videoList {
    if (_videoList is EqualUnmodifiableListView) return _videoList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videoList);
  }

  @override
  final CourseList? freecourseList;
  @override
  final CourseList? instructorCourseList;
  @override
  final String? videoOutSidePauseState;
  @override
  final CourseGet? courseGet;
  @override
  final int? chapterIndex;
  @override
  final CoupenModel? coupenModel;
  final List<String> _chapterdId;
  @override
  @JsonKey()
  List<String> get chapterdId {
    if (_chapterdId is EqualUnmodifiableListView) return _chapterdId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chapterdId);
  }

  @override
  final Option<Either<MainFailure, CourseGet>> courseGetFailureOrSuccessOption;
  @override
  final Option<Either<MainFailure, CoupenModel>>
      coupenModelFailureOrSuccessOption;
  @override
  final Option<Either<MainFailure, List<VideoGetModel>>>
      videoGetFailureOrSuccessOption;
  @override
  final Option<Either<MainFailure, CourseList>> languageFailureOrSuccessOption;

  @override
  String toString() {
    return 'CourseListState(isLoading: $isLoading, videoLoading: $videoLoading, totalPages: $totalPages, page: $page, loadMore: $loadMore, courseList: $courseList, videoPlayerController1: $videoPlayerController1, chewieController: $chewieController, videoList: $videoList, freecourseList: $freecourseList, instructorCourseList: $instructorCourseList, videoOutSidePauseState: $videoOutSidePauseState, courseGet: $courseGet, chapterIndex: $chapterIndex, coupenModel: $coupenModel, chapterdId: $chapterdId, courseGetFailureOrSuccessOption: $courseGetFailureOrSuccessOption, coupenModelFailureOrSuccessOption: $coupenModelFailureOrSuccessOption, videoGetFailureOrSuccessOption: $videoGetFailureOrSuccessOption, languageFailureOrSuccessOption: $languageFailureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseListStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.videoLoading, videoLoading) ||
                other.videoLoading == videoLoading) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.loadMore, loadMore) ||
                other.loadMore == loadMore) &&
            (identical(other.courseList, courseList) ||
                other.courseList == courseList) &&
            (identical(other.videoPlayerController1, videoPlayerController1) ||
                other.videoPlayerController1 == videoPlayerController1) &&
            (identical(other.chewieController, chewieController) ||
                other.chewieController == chewieController) &&
            const DeepCollectionEquality()
                .equals(other._videoList, _videoList) &&
            (identical(other.freecourseList, freecourseList) ||
                other.freecourseList == freecourseList) &&
            (identical(other.instructorCourseList, instructorCourseList) ||
                other.instructorCourseList == instructorCourseList) &&
            (identical(other.videoOutSidePauseState, videoOutSidePauseState) ||
                other.videoOutSidePauseState == videoOutSidePauseState) &&
            (identical(other.courseGet, courseGet) ||
                other.courseGet == courseGet) &&
            (identical(other.chapterIndex, chapterIndex) ||
                other.chapterIndex == chapterIndex) &&
            (identical(other.coupenModel, coupenModel) ||
                other.coupenModel == coupenModel) &&
            const DeepCollectionEquality()
                .equals(other._chapterdId, _chapterdId) &&
            (identical(other.courseGetFailureOrSuccessOption,
                    courseGetFailureOrSuccessOption) ||
                other.courseGetFailureOrSuccessOption ==
                    courseGetFailureOrSuccessOption) &&
            (identical(other.coupenModelFailureOrSuccessOption,
                    coupenModelFailureOrSuccessOption) ||
                other.coupenModelFailureOrSuccessOption ==
                    coupenModelFailureOrSuccessOption) &&
            (identical(other.videoGetFailureOrSuccessOption,
                    videoGetFailureOrSuccessOption) ||
                other.videoGetFailureOrSuccessOption ==
                    videoGetFailureOrSuccessOption) &&
            (identical(other.languageFailureOrSuccessOption,
                    languageFailureOrSuccessOption) ||
                other.languageFailureOrSuccessOption ==
                    languageFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        isLoading,
        videoLoading,
        totalPages,
        page,
        loadMore,
        courseList,
        videoPlayerController1,
        chewieController,
        const DeepCollectionEquality().hash(_videoList),
        freecourseList,
        instructorCourseList,
        videoOutSidePauseState,
        courseGet,
        chapterIndex,
        coupenModel,
        const DeepCollectionEquality().hash(_chapterdId),
        courseGetFailureOrSuccessOption,
        coupenModelFailureOrSuccessOption,
        videoGetFailureOrSuccessOption,
        languageFailureOrSuccessOption
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseListStateImplCopyWith<_$CourseListStateImpl> get copyWith =>
      __$$CourseListStateImplCopyWithImpl<_$CourseListStateImpl>(
          this, _$identity);
}

abstract class _CourseListState implements CourseListState {
  const factory _CourseListState(
      {required final bool isLoading,
      required final bool videoLoading,
      required final int totalPages,
      required final int page,
      required final bool loadMore,
      final CourseList? courseList,
      final VideoPlayerController? videoPlayerController1,
      final ChewieController? chewieController,
      final List<VideoGetModel> videoList,
      final CourseList? freecourseList,
      final CourseList? instructorCourseList,
      final String? videoOutSidePauseState,
      final CourseGet? courseGet,
      final int? chapterIndex,
      final CoupenModel? coupenModel,
      final List<String> chapterdId,
      required final Option<Either<MainFailure, CourseGet>>
          courseGetFailureOrSuccessOption,
      required final Option<Either<MainFailure, CoupenModel>>
          coupenModelFailureOrSuccessOption,
      required final Option<Either<MainFailure, List<VideoGetModel>>>
          videoGetFailureOrSuccessOption,
      required final Option<Either<MainFailure, CourseList>>
          languageFailureOrSuccessOption}) = _$CourseListStateImpl;

  @override
  bool get isLoading;
  @override
  bool get videoLoading;
  @override
  int get totalPages;
  @override
  int get page;
  @override
  bool get loadMore;
  @override
  CourseList? get courseList;
  @override
  VideoPlayerController? get videoPlayerController1;
  @override
  ChewieController? get chewieController;
  @override
  List<VideoGetModel> get videoList;
  @override
  CourseList? get freecourseList;
  @override
  CourseList? get instructorCourseList;
  @override
  String? get videoOutSidePauseState;
  @override
  CourseGet? get courseGet;
  @override
  int? get chapterIndex;
  @override
  CoupenModel? get coupenModel;
  @override
  List<String> get chapterdId;
  @override
  Option<Either<MainFailure, CourseGet>> get courseGetFailureOrSuccessOption;
  @override
  Option<Either<MainFailure, CoupenModel>>
      get coupenModelFailureOrSuccessOption;
  @override
  Option<Either<MainFailure, List<VideoGetModel>>>
      get videoGetFailureOrSuccessOption;
  @override
  Option<Either<MainFailure, CourseList>> get languageFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$CourseListStateImplCopyWith<_$CourseListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

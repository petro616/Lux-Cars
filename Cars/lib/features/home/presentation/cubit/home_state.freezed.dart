// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(NetworkExceptions error) failure,
    required TResult Function(List<T> data) CategoryLoadedList,
    required TResult Function(List<T> featuredCars, List<T> nonFeaturedCars)
        LoadedList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(NetworkExceptions error)? failure,
    TResult? Function(List<T> data)? CategoryLoadedList,
    TResult? Function(List<T> featuredCars, List<T> nonFeaturedCars)?
        LoadedList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(NetworkExceptions error)? failure,
    TResult Function(List<T> data)? CategoryLoadedList,
    TResult Function(List<T> featuredCars, List<T> nonFeaturedCars)? LoadedList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) idle,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Failure<T> value) failure,
    required TResult Function(CategoryLoadedList<T> value) CategoryLoadedList,
    required TResult Function(LoadedList<T> value) LoadedList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle<T> value)? idle,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Failure<T> value)? failure,
    TResult? Function(CategoryLoadedList<T> value)? CategoryLoadedList,
    TResult? Function(LoadedList<T> value)? LoadedList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Failure<T> value)? failure,
    TResult Function(CategoryLoadedList<T> value)? CategoryLoadedList,
    TResult Function(LoadedList<T> value)? LoadedList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<T, $Res> {
  factory $HomeStateCopyWith(
          HomeState<T> value, $Res Function(HomeState<T>) then) =
      _$HomeStateCopyWithImpl<T, $Res, HomeState<T>>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<T, $Res, $Val extends HomeState<T>>
    implements $HomeStateCopyWith<T, $Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$IdleImplCopyWith<T, $Res> {
  factory _$$IdleImplCopyWith(
          _$IdleImpl<T> value, $Res Function(_$IdleImpl<T>) then) =
      __$$IdleImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$IdleImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$IdleImpl<T>>
    implements _$$IdleImplCopyWith<T, $Res> {
  __$$IdleImplCopyWithImpl(
      _$IdleImpl<T> _value, $Res Function(_$IdleImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IdleImpl<T> implements Idle<T> {
  _$IdleImpl();

  @override
  String toString() {
    return 'HomeState<$T>.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IdleImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(NetworkExceptions error) failure,
    required TResult Function(List<T> data) CategoryLoadedList,
    required TResult Function(List<T> featuredCars, List<T> nonFeaturedCars)
        LoadedList,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(NetworkExceptions error)? failure,
    TResult? Function(List<T> data)? CategoryLoadedList,
    TResult? Function(List<T> featuredCars, List<T> nonFeaturedCars)?
        LoadedList,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(NetworkExceptions error)? failure,
    TResult Function(List<T> data)? CategoryLoadedList,
    TResult Function(List<T> featuredCars, List<T> nonFeaturedCars)? LoadedList,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) idle,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Failure<T> value) failure,
    required TResult Function(CategoryLoadedList<T> value) CategoryLoadedList,
    required TResult Function(LoadedList<T> value) LoadedList,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle<T> value)? idle,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Failure<T> value)? failure,
    TResult? Function(CategoryLoadedList<T> value)? CategoryLoadedList,
    TResult? Function(LoadedList<T> value)? LoadedList,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Failure<T> value)? failure,
    TResult Function(CategoryLoadedList<T> value)? CategoryLoadedList,
    TResult Function(LoadedList<T> value)? LoadedList,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class Idle<T> implements HomeState<T> {
  factory Idle() = _$IdleImpl<T>;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<T, $Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl<T> value, $Res Function(_$LoadingImpl<T>) then) =
      __$$LoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$LoadingImpl<T>>
    implements _$$LoadingImplCopyWith<T, $Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl<T> _value, $Res Function(_$LoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl<T> implements Loading<T> {
  _$LoadingImpl();

  @override
  String toString() {
    return 'HomeState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(NetworkExceptions error) failure,
    required TResult Function(List<T> data) CategoryLoadedList,
    required TResult Function(List<T> featuredCars, List<T> nonFeaturedCars)
        LoadedList,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(NetworkExceptions error)? failure,
    TResult? Function(List<T> data)? CategoryLoadedList,
    TResult? Function(List<T> featuredCars, List<T> nonFeaturedCars)?
        LoadedList,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(NetworkExceptions error)? failure,
    TResult Function(List<T> data)? CategoryLoadedList,
    TResult Function(List<T> featuredCars, List<T> nonFeaturedCars)? LoadedList,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) idle,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Failure<T> value) failure,
    required TResult Function(CategoryLoadedList<T> value) CategoryLoadedList,
    required TResult Function(LoadedList<T> value) LoadedList,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle<T> value)? idle,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Failure<T> value)? failure,
    TResult? Function(CategoryLoadedList<T> value)? CategoryLoadedList,
    TResult? Function(LoadedList<T> value)? LoadedList,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Failure<T> value)? failure,
    TResult Function(CategoryLoadedList<T> value)? CategoryLoadedList,
    TResult Function(LoadedList<T> value)? LoadedList,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading<T> implements HomeState<T> {
  factory Loading() = _$LoadingImpl<T>;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<T, $Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl<T> value, $Res Function(_$FailureImpl<T>) then) =
      __$$FailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({NetworkExceptions error});

  $NetworkExceptionsCopyWith<$Res> get error;
}

/// @nodoc
class __$$FailureImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$FailureImpl<T>>
    implements _$$FailureImplCopyWith<T, $Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl<T> _value, $Res Function(_$FailureImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$FailureImpl<T>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as NetworkExceptions,
    ));
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NetworkExceptionsCopyWith<$Res> get error {
    return $NetworkExceptionsCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$FailureImpl<T> implements Failure<T> {
  _$FailureImpl(this.error);

  @override
  final NetworkExceptions error;

  @override
  String toString() {
    return 'HomeState<$T>.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<T, _$FailureImpl<T>> get copyWith =>
      __$$FailureImplCopyWithImpl<T, _$FailureImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(NetworkExceptions error) failure,
    required TResult Function(List<T> data) CategoryLoadedList,
    required TResult Function(List<T> featuredCars, List<T> nonFeaturedCars)
        LoadedList,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(NetworkExceptions error)? failure,
    TResult? Function(List<T> data)? CategoryLoadedList,
    TResult? Function(List<T> featuredCars, List<T> nonFeaturedCars)?
        LoadedList,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(NetworkExceptions error)? failure,
    TResult Function(List<T> data)? CategoryLoadedList,
    TResult Function(List<T> featuredCars, List<T> nonFeaturedCars)? LoadedList,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) idle,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Failure<T> value) failure,
    required TResult Function(CategoryLoadedList<T> value) CategoryLoadedList,
    required TResult Function(LoadedList<T> value) LoadedList,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle<T> value)? idle,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Failure<T> value)? failure,
    TResult? Function(CategoryLoadedList<T> value)? CategoryLoadedList,
    TResult? Function(LoadedList<T> value)? LoadedList,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Failure<T> value)? failure,
    TResult Function(CategoryLoadedList<T> value)? CategoryLoadedList,
    TResult Function(LoadedList<T> value)? LoadedList,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure<T> implements HomeState<T> {
  factory Failure(final NetworkExceptions error) = _$FailureImpl<T>;

  NetworkExceptions get error;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<T, _$FailureImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoryLoadedListImplCopyWith<T, $Res> {
  factory _$$CategoryLoadedListImplCopyWith(_$CategoryLoadedListImpl<T> value,
          $Res Function(_$CategoryLoadedListImpl<T>) then) =
      __$$CategoryLoadedListImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({List<T> data});
}

/// @nodoc
class __$$CategoryLoadedListImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$CategoryLoadedListImpl<T>>
    implements _$$CategoryLoadedListImplCopyWith<T, $Res> {
  __$$CategoryLoadedListImplCopyWithImpl(_$CategoryLoadedListImpl<T> _value,
      $Res Function(_$CategoryLoadedListImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$CategoryLoadedListImpl<T>(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

/// @nodoc

class _$CategoryLoadedListImpl<T> implements CategoryLoadedList<T> {
  _$CategoryLoadedListImpl(final List<T> data) : _data = data;

  final List<T> _data;
  @override
  List<T> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'HomeState<$T>.CategoryLoadedList(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryLoadedListImpl<T> &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryLoadedListImplCopyWith<T, _$CategoryLoadedListImpl<T>>
      get copyWith => __$$CategoryLoadedListImplCopyWithImpl<T,
          _$CategoryLoadedListImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(NetworkExceptions error) failure,
    required TResult Function(List<T> data) CategoryLoadedList,
    required TResult Function(List<T> featuredCars, List<T> nonFeaturedCars)
        LoadedList,
  }) {
    return CategoryLoadedList(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(NetworkExceptions error)? failure,
    TResult? Function(List<T> data)? CategoryLoadedList,
    TResult? Function(List<T> featuredCars, List<T> nonFeaturedCars)?
        LoadedList,
  }) {
    return CategoryLoadedList?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(NetworkExceptions error)? failure,
    TResult Function(List<T> data)? CategoryLoadedList,
    TResult Function(List<T> featuredCars, List<T> nonFeaturedCars)? LoadedList,
    required TResult orElse(),
  }) {
    if (CategoryLoadedList != null) {
      return CategoryLoadedList(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) idle,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Failure<T> value) failure,
    required TResult Function(CategoryLoadedList<T> value) CategoryLoadedList,
    required TResult Function(LoadedList<T> value) LoadedList,
  }) {
    return CategoryLoadedList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle<T> value)? idle,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Failure<T> value)? failure,
    TResult? Function(CategoryLoadedList<T> value)? CategoryLoadedList,
    TResult? Function(LoadedList<T> value)? LoadedList,
  }) {
    return CategoryLoadedList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Failure<T> value)? failure,
    TResult Function(CategoryLoadedList<T> value)? CategoryLoadedList,
    TResult Function(LoadedList<T> value)? LoadedList,
    required TResult orElse(),
  }) {
    if (CategoryLoadedList != null) {
      return CategoryLoadedList(this);
    }
    return orElse();
  }
}

abstract class CategoryLoadedList<T> implements HomeState<T> {
  factory CategoryLoadedList(final List<T> data) = _$CategoryLoadedListImpl<T>;

  List<T> get data;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryLoadedListImplCopyWith<T, _$CategoryLoadedListImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedListImplCopyWith<T, $Res> {
  factory _$$LoadedListImplCopyWith(
          _$LoadedListImpl<T> value, $Res Function(_$LoadedListImpl<T>) then) =
      __$$LoadedListImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({List<T> featuredCars, List<T> nonFeaturedCars});
}

/// @nodoc
class __$$LoadedListImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$LoadedListImpl<T>>
    implements _$$LoadedListImplCopyWith<T, $Res> {
  __$$LoadedListImplCopyWithImpl(
      _$LoadedListImpl<T> _value, $Res Function(_$LoadedListImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? featuredCars = null,
    Object? nonFeaturedCars = null,
  }) {
    return _then(_$LoadedListImpl<T>(
      featuredCars: null == featuredCars
          ? _value._featuredCars
          : featuredCars // ignore: cast_nullable_to_non_nullable
              as List<T>,
      nonFeaturedCars: null == nonFeaturedCars
          ? _value._nonFeaturedCars
          : nonFeaturedCars // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

/// @nodoc

class _$LoadedListImpl<T> implements LoadedList<T> {
  _$LoadedListImpl(
      {required final List<T> featuredCars,
      required final List<T> nonFeaturedCars})
      : _featuredCars = featuredCars,
        _nonFeaturedCars = nonFeaturedCars;

  final List<T> _featuredCars;
  @override
  List<T> get featuredCars {
    if (_featuredCars is EqualUnmodifiableListView) return _featuredCars;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_featuredCars);
  }

  final List<T> _nonFeaturedCars;
  @override
  List<T> get nonFeaturedCars {
    if (_nonFeaturedCars is EqualUnmodifiableListView) return _nonFeaturedCars;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nonFeaturedCars);
  }

  @override
  String toString() {
    return 'HomeState<$T>.LoadedList(featuredCars: $featuredCars, nonFeaturedCars: $nonFeaturedCars)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedListImpl<T> &&
            const DeepCollectionEquality()
                .equals(other._featuredCars, _featuredCars) &&
            const DeepCollectionEquality()
                .equals(other._nonFeaturedCars, _nonFeaturedCars));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_featuredCars),
      const DeepCollectionEquality().hash(_nonFeaturedCars));

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedListImplCopyWith<T, _$LoadedListImpl<T>> get copyWith =>
      __$$LoadedListImplCopyWithImpl<T, _$LoadedListImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(NetworkExceptions error) failure,
    required TResult Function(List<T> data) CategoryLoadedList,
    required TResult Function(List<T> featuredCars, List<T> nonFeaturedCars)
        LoadedList,
  }) {
    return LoadedList(featuredCars, nonFeaturedCars);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(NetworkExceptions error)? failure,
    TResult? Function(List<T> data)? CategoryLoadedList,
    TResult? Function(List<T> featuredCars, List<T> nonFeaturedCars)?
        LoadedList,
  }) {
    return LoadedList?.call(featuredCars, nonFeaturedCars);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(NetworkExceptions error)? failure,
    TResult Function(List<T> data)? CategoryLoadedList,
    TResult Function(List<T> featuredCars, List<T> nonFeaturedCars)? LoadedList,
    required TResult orElse(),
  }) {
    if (LoadedList != null) {
      return LoadedList(featuredCars, nonFeaturedCars);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) idle,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Failure<T> value) failure,
    required TResult Function(CategoryLoadedList<T> value) CategoryLoadedList,
    required TResult Function(LoadedList<T> value) LoadedList,
  }) {
    return LoadedList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle<T> value)? idle,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Failure<T> value)? failure,
    TResult? Function(CategoryLoadedList<T> value)? CategoryLoadedList,
    TResult? Function(LoadedList<T> value)? LoadedList,
  }) {
    return LoadedList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Failure<T> value)? failure,
    TResult Function(CategoryLoadedList<T> value)? CategoryLoadedList,
    TResult Function(LoadedList<T> value)? LoadedList,
    required TResult orElse(),
  }) {
    if (LoadedList != null) {
      return LoadedList(this);
    }
    return orElse();
  }
}

abstract class LoadedList<T> implements HomeState<T> {
  factory LoadedList(
      {required final List<T> featuredCars,
      required final List<T> nonFeaturedCars}) = _$LoadedListImpl<T>;

  List<T> get featuredCars;
  List<T> get nonFeaturedCars;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedListImplCopyWith<T, _$LoadedListImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

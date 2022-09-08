// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tasks_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TasksModel _$TasksModelFromJson(Map<String, dynamic> json) {
  return _TasksModel.fromJson(json);
}

/// @nodoc
mixin _$TasksModel {
  int? get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get completed => throw _privateConstructorUsedError;
  int get favorite => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TasksModelCopyWith<TasksModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksModelCopyWith<$Res> {
  factory $TasksModelCopyWith(
          TasksModel value, $Res Function(TasksModel) then) =
      _$TasksModelCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String title,
      String description,
      int completed,
      int favorite,
      String color});
}

/// @nodoc
class _$TasksModelCopyWithImpl<$Res> implements $TasksModelCopyWith<$Res> {
  _$TasksModelCopyWithImpl(this._value, this._then);

  final TasksModel _value;
  // ignore: unused_field
  final $Res Function(TasksModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? completed = freezed,
    Object? favorite = freezed,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      completed: completed == freezed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as int,
      favorite: favorite == freezed
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as int,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_TasksModelCopyWith<$Res>
    implements $TasksModelCopyWith<$Res> {
  factory _$$_TasksModelCopyWith(
          _$_TasksModel value, $Res Function(_$_TasksModel) then) =
      __$$_TasksModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String title,
      String description,
      int completed,
      int favorite,
      String color});
}

/// @nodoc
class __$$_TasksModelCopyWithImpl<$Res> extends _$TasksModelCopyWithImpl<$Res>
    implements _$$_TasksModelCopyWith<$Res> {
  __$$_TasksModelCopyWithImpl(
      _$_TasksModel _value, $Res Function(_$_TasksModel) _then)
      : super(_value, (v) => _then(v as _$_TasksModel));

  @override
  _$_TasksModel get _value => super._value as _$_TasksModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? completed = freezed,
    Object? favorite = freezed,
    Object? color = freezed,
  }) {
    return _then(_$_TasksModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      completed: completed == freezed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as int,
      favorite: favorite == freezed
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as int,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TasksModel implements _TasksModel {
  const _$_TasksModel(
      {this.id,
      required this.title,
      required this.description,
      required this.completed,
      required this.favorite,
      required this.color});

  factory _$_TasksModel.fromJson(Map<String, dynamic> json) =>
      _$$_TasksModelFromJson(json);

  @override
  final int? id;
  @override
  final String title;
  @override
  final String description;
  @override
  final int completed;
  @override
  final int favorite;
  @override
  final String color;

  @override
  String toString() {
    return 'TasksModel(id: $id, title: $title, description: $description, completed: $completed, favorite: $favorite, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TasksModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.completed, completed) &&
            const DeepCollectionEquality().equals(other.favorite, favorite) &&
            const DeepCollectionEquality().equals(other.color, color));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(completed),
      const DeepCollectionEquality().hash(favorite),
      const DeepCollectionEquality().hash(color));

  @JsonKey(ignore: true)
  @override
  _$$_TasksModelCopyWith<_$_TasksModel> get copyWith =>
      __$$_TasksModelCopyWithImpl<_$_TasksModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TasksModelToJson(
      this,
    );
  }
}

abstract class _TasksModel implements TasksModel {
  const factory _TasksModel(
      {final int? id,
      required final String title,
      required final String description,
      required final int completed,
      required final int favorite,
      required final String color}) = _$_TasksModel;

  factory _TasksModel.fromJson(Map<String, dynamic> json) =
      _$_TasksModel.fromJson;

  @override
  int? get id;
  @override
  String get title;
  @override
  String get description;
  @override
  int get completed;
  @override
  int get favorite;
  @override
  String get color;
  @override
  @JsonKey(ignore: true)
  _$$_TasksModelCopyWith<_$_TasksModel> get copyWith =>
      throw _privateConstructorUsedError;
}

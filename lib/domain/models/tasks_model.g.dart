// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TasksModel _$$_TasksModelFromJson(Map<String, dynamic> json) =>
    _$_TasksModel(
      id: json['id'] as int?,
      title: json['title'] as String,
      description: json['description'] as String,
      completed: json['completed'] as int,
      favorite: json['favorite'] as int,
      color: json['color'] as String,
    );

Map<String, dynamic> _$$_TasksModelToJson(_$_TasksModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'completed': instance.completed,
      'favorite': instance.favorite,
      'color': instance.color,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TaskModel _$$_TaskModelFromJson(Map<String, dynamic> json) => _$_TaskModel(
      id: json['id'] as int?,
      title: json['title'] as String,
      description: json['description'] as String,
      date: json['date'] as String,
      startTime: json['startTime'] as String,
      endTime: json['endTime'] as String,
      remind: json['remind'] as int,
      completed: json['completed'] as int,
      favorite: json['favorite'] as int,
      color: json['color'] as String,
    );

Map<String, dynamic> _$$_TaskModelToJson(_$_TaskModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'date': instance.date,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'remind': instance.remind,
      'completed': instance.completed,
      'favorite': instance.favorite,
      'color': instance.color,
    };

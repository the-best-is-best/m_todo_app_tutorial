import 'package:freezed_annotation/freezed_annotation.dart';
part 'task_model.freezed.dart';
part 'task_model.g.dart';

@freezed
class TaskModel with _$TaskModel {
  const factory TaskModel({
    int? id,
    required String title,
    required String description,
    required String date,
    required String startTime,
    required String endTime,
    required int remind,
    required int completed,
    required int favorite,
    required String color,
  }) = _TaskModel;

  factory TaskModel.fromJson(Map<String, Object?> json) =>
      _$TaskModelFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';
part 'tasks_model.freezed.dart';
part 'tasks_model.g.dart';

@freezed
class TasksModel with _$TasksModel {
  const factory TasksModel({
    int? id,
    required String title,
    required String description,
    required int completed,
    required int favorite,
    required String color,
  }) = _TasksModel;

  factory TasksModel.fromJson(Map<String, Object?> json) =>
      _$TasksModelFromJson(json);
}

import 'package:json_annotation/json_annotation.dart';
part 'homework_model.g.dart';

@JsonSerializable()
class HomeworkModel {
  final int id;
  final String createdAt;
  final String updatedAt;
  final String title;
  final String range;
  final String dueDate;
  final bool isDone;
  final Map<String, dynamic> author;
  final Map<String, dynamic> child;

  HomeworkModel({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.title,
    required this.range,
    required this.dueDate,
    required this.isDone,
    required this.author,
    required this.child,
  });

  factory HomeworkModel.fromJson(Map<String, dynamic> json) =>
      _$HomeworkModelFromJson(json);

  Map<String, dynamic> toJson() => _$HomeworkModelToJson(this);
}

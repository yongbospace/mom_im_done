// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'homework_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeworkModel _$HomeworkModelFromJson(Map<String, dynamic> json) =>
    HomeworkModel(
      id: json['id'] as int,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      title: json['title'] as String,
      range: json['range'] as String,
      dueDate: json['dueDate'] as String,
      isDone: json['isDone'] as bool,
      author: json['author'] as Map<String, dynamic>,
      child: json['child'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$HomeworkModelToJson(HomeworkModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'title': instance.title,
      'range': instance.range,
      'dueDate': instance.dueDate,
      'isDone': instance.isDone,
      'author': instance.author,
      'child': instance.child,
    };

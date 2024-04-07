// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cursor_pagination_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CursorPagination<T> _$CursorPaginationFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    CursorPagination<T>(
      count: json['count'] as int,
      cursor: CursorPaginationCursor.fromJson(
          json['cursor'] as Map<String, dynamic>),
      next: json['next'] as String,
      data: (json['data'] as List<dynamic>).map(fromJsonT).toList(),
    );

Map<String, dynamic> _$CursorPaginationToJson<T>(
  CursorPagination<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'cursor': instance.cursor,
      'count': instance.count,
      'next': instance.next,
      'data': instance.data.map(toJsonT).toList(),
    };

CursorPaginationCursor _$CursorPaginationCursorFromJson(
        Map<String, dynamic> json) =>
    CursorPaginationCursor(
      after: json['after'] as int,
    );

Map<String, dynamic> _$CursorPaginationCursorToJson(
        CursorPaginationCursor instance) =>
    <String, dynamic>{
      'after': instance.after,
    };

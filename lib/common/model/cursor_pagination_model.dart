import 'package:json_annotation/json_annotation.dart';

part 'cursor_pagination_model.g.dart';

@JsonSerializable(
  genericArgumentFactories: true,
)
class CursorPagination<T> {
  final CursorPaginationCursor cursor;
  final int count;
  final String next;
  final List<T> data;

  CursorPagination({
    required this.count,
    required this.cursor,
    required this.next,
    required this.data,
  });
  factory CursorPagination.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$CursorPaginationFromJson(json, fromJsonT);
}

@JsonSerializable()
class CursorPaginationCursor {
  final int after;

  CursorPaginationCursor({
    required this.after,
  });
  factory CursorPaginationCursor.fromJson(Map<String, dynamic> json) =>
      _$CursorPaginationCursorFromJson(json);
}

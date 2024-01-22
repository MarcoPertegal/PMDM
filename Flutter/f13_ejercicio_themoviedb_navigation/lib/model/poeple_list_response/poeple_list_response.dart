import 'dart:convert';

import 'result.dart';

class PoepleListResponse {
  int? page;
  List<Result>? results;
  int? totalPages;
  int? totalResults;

  PoepleListResponse({
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  factory PoepleListResponse.fromMap(Map<String, dynamic> data) {
    return PoepleListResponse(
      page: data['page'] as int?,
      results: (data['results'] as List<dynamic>?)
          ?.map((e) => Result.fromMap(e as Map<String, dynamic>))
          .toList(),
      totalPages: data['total_pages'] as int?,
      totalResults: data['total_results'] as int?,
    );
  }

  Map<String, dynamic> toMap() => {
        'page': page,
        'results': results?.map((e) => e.toMap()).toList(),
        'total_pages': totalPages,
        'total_results': totalResults,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [PoepleListResponse].
  factory PoepleListResponse.fromJson(String data) {
    return PoepleListResponse.fromMap(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [PoepleListResponse] to a JSON string.
  String toJson() => json.encode(toMap());
}

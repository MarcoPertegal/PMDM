import 'dart:convert';

import 'result.dart';

class FontsResponse {
  int? totalCount;
  List<Result>? results;

  FontsResponse({this.totalCount, this.results});

  factory FontsResponse.fromMap(Map<String, dynamic> data) {
    return FontsResponse(
      totalCount: data['total_count'] as int?,
      results: (data['results'] as List<dynamic>?)
          ?.map((e) => Result.fromMap(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toMap() => {
        'total_count': totalCount,
        'results': results?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [FontsResponse].
  factory FontsResponse.fromJson(String data) {
    return FontsResponse.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [FontsResponse] to a JSON string.
  String toJson() => json.encode(toMap());
}

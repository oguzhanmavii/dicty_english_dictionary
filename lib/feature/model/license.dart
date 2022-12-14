import 'dart:convert';

import 'package:hive/hive.dart';

part 'license.g.dart';

@HiveType(typeId: 2)
class License {
  @HiveField(0)
  final String? name;
  @HiveField(1)
  final String? url;

  const License({this.name, this.url});

  factory License.fromMap(Map<String, dynamic> data) => License(
        name: data['name'] as String?,
        url: data['url'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'name': name,
        'url': url,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [License].
  factory License.fromJson(String data) {
    return License.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [License] to a JSON string.
  String toJson() => json.encode(toMap());
}

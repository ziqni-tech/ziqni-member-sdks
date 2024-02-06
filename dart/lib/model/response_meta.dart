//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

class ResponseMeta {
  /// Returns a new [ResponseMeta] instance.
  ResponseMeta({
    required this.totalRecordsFound,
    required this.skip,
    required this.limit,
    this.objectType,
    this.resultCount,
  });

  /// 
  int totalRecordsFound;

  /// 
  int skip;

  /// 
  int limit;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? objectType;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? resultCount;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResponseMeta &&
    other.totalRecordsFound == totalRecordsFound &&
    other.skip == skip &&
    other.limit == limit &&
    other.objectType == objectType &&
    other.resultCount == resultCount;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (totalRecordsFound.hashCode) +
    (skip.hashCode) +
    (limit.hashCode) +
    (objectType == null ? 0 : objectType!.hashCode) +
    (resultCount == null ? 0 : resultCount!.hashCode);

  @override
  String toString() => 'ResponseMeta[totalRecordsFound=$totalRecordsFound, skip=$skip, limit=$limit, objectType=$objectType, resultCount=$resultCount]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'totalRecordsFound'] = this.totalRecordsFound;
      json[r'skip'] = this.skip;
      json[r'limit'] = this.limit;
    if (this.objectType != null) {
      json[r'objectType'] = this.objectType;
    } else {
      json[r'objectType'] = null;
    }
    if (this.resultCount != null) {
      json[r'resultCount'] = this.resultCount;
    } else {
      json[r'resultCount'] = null;
    }
    return json;
  }

  /// Returns a new [ResponseMeta] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ResponseMeta? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ResponseMeta[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ResponseMeta[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ResponseMeta(
        totalRecordsFound: mapValueOfType<int>(json, r'totalRecordsFound')!,
        skip: mapValueOfType<int>(json, r'skip')!,
        limit: mapValueOfType<int>(json, r'limit')!,
        objectType: mapValueOfType<String>(json, r'objectType'),
        resultCount: mapValueOfType<int>(json, r'resultCount'),
      );
    }
    return null;
  }

  static List<ResponseMeta> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ResponseMeta>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ResponseMeta.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ResponseMeta> mapFromJson(dynamic json) {
    final map = <String, ResponseMeta>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ResponseMeta.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ResponseMeta-objects as value to a dart map
  static Map<String, List<ResponseMeta>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ResponseMeta>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ResponseMeta.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'totalRecordsFound',
    'skip',
    'limit',
  };
}


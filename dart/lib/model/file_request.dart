//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

class FileRequest {
  /// Returns a new [FileRequest] instance.
  FileRequest({
    this.ids = const [],
    this.sortBy = const [],
    this.skip,
    this.limit,
    this.repositoryId,
  });

  /// 
  List<String> ids;

  /// 
  List<QuerySortBy> sortBy;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? skip;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? limit;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? repositoryId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FileRequest &&
    _deepEquality.equals(other.ids, ids) &&
    _deepEquality.equals(other.sortBy, sortBy) &&
    other.skip == skip &&
    other.limit == limit &&
    other.repositoryId == repositoryId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ids.hashCode) +
    (sortBy.hashCode) +
    (skip == null ? 0 : skip!.hashCode) +
    (limit == null ? 0 : limit!.hashCode) +
    (repositoryId == null ? 0 : repositoryId!.hashCode);

  @override
  String toString() => 'FileRequest[ids=$ids, sortBy=$sortBy, skip=$skip, limit=$limit, repositoryId=$repositoryId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'ids'] = this.ids;
      json[r'sortBy'] = this.sortBy;
    if (this.skip != null) {
      json[r'skip'] = this.skip;
    } else {
      json[r'skip'] = null;
    }
    if (this.limit != null) {
      json[r'limit'] = this.limit;
    } else {
      json[r'limit'] = null;
    }
    if (this.repositoryId != null) {
      json[r'repositoryId'] = this.repositoryId;
    } else {
      json[r'repositoryId'] = null;
    }
    return json;
  }

  /// Returns a new [FileRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FileRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FileRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FileRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FileRequest(
        ids: json[r'ids'] is Iterable
            ? (json[r'ids'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        sortBy: QuerySortBy.listFromJson(json[r'sortBy']),
        skip: mapValueOfType<int>(json, r'skip'),
        limit: mapValueOfType<int>(json, r'limit'),
        repositoryId: mapValueOfType<String>(json, r'repositoryId'),
      );
    }
    return null;
  }

  static List<FileRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FileRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FileRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FileRequest> mapFromJson(dynamic json) {
    final map = <String, FileRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FileRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FileRequest-objects as value to a dart map
  static Map<String, List<FileRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FileRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FileRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


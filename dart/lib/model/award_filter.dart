//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

class AwardFilter {
  /// Returns a new [AwardFilter] instance.
  AwardFilter({
    this.productIds = const [],
    this.tags = const [],
    this.ids = const [],
    this.statusCode,
    this.sortBy = const [],
    this.skip,
    this.limit,
    this.constraints = const [],
    this.entityIds = const [],
  });

  /// 
  List<String> productIds;

  /// 
  List<String> tags;

  /// 
  List<String> ids;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  NumberRange? statusCode;

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
  List<String> constraints;

  /// Achievement, Contest or Competition
  List<String> entityIds;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AwardFilter &&
    _deepEquality.equals(other.productIds, productIds) &&
    _deepEquality.equals(other.tags, tags) &&
    _deepEquality.equals(other.ids, ids) &&
    other.statusCode == statusCode &&
    _deepEquality.equals(other.sortBy, sortBy) &&
    other.skip == skip &&
    other.limit == limit &&
    _deepEquality.equals(other.constraints, constraints) &&
    _deepEquality.equals(other.entityIds, entityIds);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (productIds.hashCode) +
    (tags.hashCode) +
    (ids.hashCode) +
    (statusCode == null ? 0 : statusCode!.hashCode) +
    (sortBy.hashCode) +
    (skip == null ? 0 : skip!.hashCode) +
    (limit == null ? 0 : limit!.hashCode) +
    (constraints.hashCode) +
    (entityIds.hashCode);

  @override
  String toString() => 'AwardFilter[productIds=$productIds, tags=$tags, ids=$ids, statusCode=$statusCode, sortBy=$sortBy, skip=$skip, limit=$limit, constraints=$constraints, entityIds=$entityIds]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'productIds'] = this.productIds;
      json[r'tags'] = this.tags;
      json[r'ids'] = this.ids;
    if (this.statusCode != null) {
      json[r'statusCode'] = this.statusCode;
    } else {
      json[r'statusCode'] = null;
    }
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
      json[r'constraints'] = this.constraints;
      json[r'entityIds'] = this.entityIds;
    return json;
  }

  /// Returns a new [AwardFilter] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AwardFilter? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AwardFilter[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AwardFilter[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AwardFilter(
        productIds: json[r'productIds'] is Iterable
            ? (json[r'productIds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        tags: json[r'tags'] is Iterable
            ? (json[r'tags'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        ids: json[r'ids'] is Iterable
            ? (json[r'ids'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        statusCode: NumberRange.fromJson(json[r'statusCode']),
        sortBy: QuerySortBy.listFromJson(json[r'sortBy']),
        skip: mapValueOfType<int>(json, r'skip'),
        limit: mapValueOfType<int>(json, r'limit'),
        constraints: json[r'constraints'] is Iterable
            ? (json[r'constraints'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        entityIds: json[r'entityIds'] is Iterable
            ? (json[r'entityIds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<AwardFilter> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AwardFilter>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AwardFilter.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AwardFilter> mapFromJson(dynamic json) {
    final map = <String, AwardFilter>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AwardFilter.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AwardFilter-objects as value to a dart map
  static Map<String, List<AwardFilter>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AwardFilter>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AwardFilter.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


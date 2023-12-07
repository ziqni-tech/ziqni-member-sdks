//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

class CompetitionFilter {
  /// Returns a new [CompetitionFilter] instance.
  CompetitionFilter({
    this.tags = const [],
    this.startDate,
    this.endDate,
    this.productIds = const [],
    this.statusCode,
    this.sortBy = const [],
    this.ids = const [],
    this.skip,
    this.limit,
    this.constraints = const [],
  });

  /// 
  List<String> tags;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateRange? startDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateRange? endDate;

  /// 
  List<String> productIds;

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
  List<String> ids;

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

  /// Specify the constraints that need to be applied to the filter.
  List<String> constraints;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CompetitionFilter &&
    _deepEquality.equals(other.tags, tags) &&
    other.startDate == startDate &&
    other.endDate == endDate &&
    _deepEquality.equals(other.productIds, productIds) &&
    other.statusCode == statusCode &&
    _deepEquality.equals(other.sortBy, sortBy) &&
    _deepEquality.equals(other.ids, ids) &&
    other.skip == skip &&
    other.limit == limit &&
    _deepEquality.equals(other.constraints, constraints);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (tags.hashCode) +
    (startDate == null ? 0 : startDate!.hashCode) +
    (endDate == null ? 0 : endDate!.hashCode) +
    (productIds.hashCode) +
    (statusCode == null ? 0 : statusCode!.hashCode) +
    (sortBy.hashCode) +
    (ids.hashCode) +
    (skip == null ? 0 : skip!.hashCode) +
    (limit == null ? 0 : limit!.hashCode) +
    (constraints.hashCode);

  @override
  String toString() => 'CompetitionFilter[tags=$tags, startDate=$startDate, endDate=$endDate, productIds=$productIds, statusCode=$statusCode, sortBy=$sortBy, ids=$ids, skip=$skip, limit=$limit, constraints=$constraints]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'tags'] = this.tags;
    if (this.startDate != null) {
      json[r'startDate'] = this.startDate;
    } else {
      json[r'startDate'] = null;
    }
    if (this.endDate != null) {
      json[r'endDate'] = this.endDate;
    } else {
      json[r'endDate'] = null;
    }
      json[r'productIds'] = this.productIds;
    if (this.statusCode != null) {
      json[r'statusCode'] = this.statusCode;
    } else {
      json[r'statusCode'] = null;
    }
      json[r'sortBy'] = this.sortBy;
      json[r'ids'] = this.ids;
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
    return json;
  }

  /// Returns a new [CompetitionFilter] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CompetitionFilter? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CompetitionFilter[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CompetitionFilter[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CompetitionFilter(
        tags: json[r'tags'] is Iterable
            ? (json[r'tags'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        startDate: DateRange.fromJson(json[r'startDate']),
        endDate: DateRange.fromJson(json[r'endDate']),
        productIds: json[r'productIds'] is Iterable
            ? (json[r'productIds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        statusCode: NumberRange.fromJson(json[r'statusCode']),
        sortBy: QuerySortBy.listFromJson(json[r'sortBy']),
        ids: json[r'ids'] is Iterable
            ? (json[r'ids'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        skip: mapValueOfType<int>(json, r'skip'),
        limit: mapValueOfType<int>(json, r'limit'),
        constraints: json[r'constraints'] is Iterable
            ? (json[r'constraints'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<CompetitionFilter> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CompetitionFilter>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CompetitionFilter.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CompetitionFilter> mapFromJson(dynamic json) {
    final map = <String, CompetitionFilter>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CompetitionFilter.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CompetitionFilter-objects as value to a dart map
  static Map<String, List<CompetitionFilter>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CompetitionFilter>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CompetitionFilter.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


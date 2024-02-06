//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

class EntityRequest {
  /// Returns a new [EntityRequest] instance.
  EntityRequest({
    this.languageKey,
    this.entityFilter = const [],
    this.sortBy = const [],
    this.skip,
    this.limit,
  });

  /// The language codes can be found in the settings/transalations section of the back office
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? languageKey;

  /// 
  List<EntityFilter> entityFilter;

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

  @override
  bool operator ==(Object other) => identical(this, other) || other is EntityRequest &&
    other.languageKey == languageKey &&
    _deepEquality.equals(other.entityFilter, entityFilter) &&
    _deepEquality.equals(other.sortBy, sortBy) &&
    other.skip == skip &&
    other.limit == limit;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (languageKey == null ? 0 : languageKey!.hashCode) +
    (entityFilter.hashCode) +
    (sortBy.hashCode) +
    (skip == null ? 0 : skip!.hashCode) +
    (limit == null ? 0 : limit!.hashCode);

  @override
  String toString() => 'EntityRequest[languageKey=$languageKey, entityFilter=$entityFilter, sortBy=$sortBy, skip=$skip, limit=$limit]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.languageKey != null) {
      json[r'languageKey'] = this.languageKey;
    } else {
      json[r'languageKey'] = null;
    }
      json[r'entityFilter'] = this.entityFilter;
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
    return json;
  }

  /// Returns a new [EntityRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EntityRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EntityRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EntityRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EntityRequest(
        languageKey: mapValueOfType<String>(json, r'languageKey'),
        entityFilter: EntityFilter.listFromJson(json[r'entityFilter']),
        sortBy: QuerySortBy.listFromJson(json[r'sortBy']),
        skip: mapValueOfType<int>(json, r'skip'),
        limit: mapValueOfType<int>(json, r'limit'),
      );
    }
    return null;
  }

  static List<EntityRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EntityRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EntityRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EntityRequest> mapFromJson(dynamic json) {
    final map = <String, EntityRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EntityRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EntityRequest-objects as value to a dart map
  static Map<String, List<EntityRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EntityRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EntityRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


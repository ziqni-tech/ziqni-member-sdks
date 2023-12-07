//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

class EntityFilter {
  /// Returns a new [EntityFilter] instance.
  EntityFilter({
    this.entityType,
    this.entityIds = const [],
  });

  /// Achievement, Contest or Competition
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? entityType;

  /// 
  List<String> entityIds;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EntityFilter &&
    other.entityType == entityType &&
    _deepEquality.equals(other.entityIds, entityIds);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entityType == null ? 0 : entityType!.hashCode) +
    (entityIds.hashCode);

  @override
  String toString() => 'EntityFilter[entityType=$entityType, entityIds=$entityIds]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.entityType != null) {
      json[r'entityType'] = this.entityType;
    } else {
      json[r'entityType'] = null;
    }
      json[r'entityIds'] = this.entityIds;
    return json;
  }

  /// Returns a new [EntityFilter] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EntityFilter? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EntityFilter[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EntityFilter[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EntityFilter(
        entityType: mapValueOfType<String>(json, r'entityType'),
        entityIds: json[r'entityIds'] is Iterable
            ? (json[r'entityIds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<EntityFilter> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EntityFilter>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EntityFilter.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EntityFilter> mapFromJson(dynamic json) {
    final map = <String, EntityFilter>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EntityFilter.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EntityFilter-objects as value to a dart map
  static Map<String, List<EntityFilter>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EntityFilter>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EntityFilter.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


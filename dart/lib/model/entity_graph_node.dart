//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

class EntityGraphNode {
  /// Returns a new [EntityGraphNode] instance.
  EntityGraphNode({
    this.name,
    required this.optInStatus,
    this.constraints = const [],
    this.entityType,
    required this.entityId,
    this.entityStatusCode,
    this.entityStatus,
    this.includes = const {},
  });

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  OptinStatus optInStatus;

  /// isCompleted, etc
  List<String> constraints;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? entityType;

  /// 
  String entityId;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? entityStatusCode;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? entityStatus;

  /// 
  Map<String, Object> includes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EntityGraphNode &&
    other.name == name &&
    other.optInStatus == optInStatus &&
    _deepEquality.equals(other.constraints, constraints) &&
    other.entityType == entityType &&
    other.entityId == entityId &&
    other.entityStatusCode == entityStatusCode &&
    other.entityStatus == entityStatus &&
    _deepEquality.equals(other.includes, includes);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (optInStatus.hashCode) +
    (constraints.hashCode) +
    (entityType == null ? 0 : entityType!.hashCode) +
    (entityId.hashCode) +
    (entityStatusCode == null ? 0 : entityStatusCode!.hashCode) +
    (entityStatus == null ? 0 : entityStatus!.hashCode) +
    (includes.hashCode);

  @override
  String toString() => 'EntityGraphNode[name=$name, optInStatus=$optInStatus, constraints=$constraints, entityType=$entityType, entityId=$entityId, entityStatusCode=$entityStatusCode, entityStatus=$entityStatus, includes=$includes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
      json[r'optInStatus'] = this.optInStatus;
      json[r'constraints'] = this.constraints;
    if (this.entityType != null) {
      json[r'entityType'] = this.entityType;
    } else {
      json[r'entityType'] = null;
    }
      json[r'entityId'] = this.entityId;
    if (this.entityStatusCode != null) {
      json[r'entityStatusCode'] = this.entityStatusCode;
    } else {
      json[r'entityStatusCode'] = null;
    }
    if (this.entityStatus != null) {
      json[r'entityStatus'] = this.entityStatus;
    } else {
      json[r'entityStatus'] = null;
    }
      json[r'includes'] = this.includes;
    return json;
  }

  /// Returns a new [EntityGraphNode] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EntityGraphNode? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EntityGraphNode[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EntityGraphNode[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EntityGraphNode(
        name: mapValueOfType<String>(json, r'name'),
        optInStatus: OptinStatus.fromJson(json[r'optInStatus'])!,
        constraints: json[r'constraints'] is Iterable
            ? (json[r'constraints'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        entityType: mapValueOfType<String>(json, r'entityType'),
        entityId: mapValueOfType<String>(json, r'entityId')!,
        entityStatusCode: mapValueOfType<int>(json, r'entityStatusCode'),
        entityStatus: mapValueOfType<String>(json, r'entityStatus'),
        includes: mapCastOfType<String, Object>(json, r'includes') ?? const {},
      );
    }
    return null;
  }

  static List<EntityGraphNode> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EntityGraphNode>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EntityGraphNode.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EntityGraphNode> mapFromJson(dynamic json) {
    final map = <String, EntityGraphNode>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EntityGraphNode.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EntityGraphNode-objects as value to a dart map
  static Map<String, List<EntityGraphNode>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EntityGraphNode>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EntityGraphNode.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'optInStatus',
    'entityId',
  };
}


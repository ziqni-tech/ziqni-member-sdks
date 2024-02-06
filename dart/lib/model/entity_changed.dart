//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

class EntityChanged {
  /// Returns a new [EntityChanged] instance.
  EntityChanged({
    this.entityId,
    this.entityType,
    this.changedAt,
    this.typeOffChange,
    this.changedBy,
    this.displayName,
    this.accountId,
    this.sequenceNumber,
    this.entityRefId,
    this.entityParentId,
    this.metadata = const {},
  });

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? entityId;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? entityType;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? changedAt;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? typeOffChange;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? changedBy;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? displayName;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accountId;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? sequenceNumber;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? entityRefId;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? entityParentId;

  Map<String, Object> metadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EntityChanged &&
    other.entityId == entityId &&
    other.entityType == entityType &&
    other.changedAt == changedAt &&
    other.typeOffChange == typeOffChange &&
    other.changedBy == changedBy &&
    other.displayName == displayName &&
    other.accountId == accountId &&
    other.sequenceNumber == sequenceNumber &&
    other.entityRefId == entityRefId &&
    other.entityParentId == entityParentId &&
    _deepEquality.equals(other.metadata, metadata);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entityId == null ? 0 : entityId!.hashCode) +
    (entityType == null ? 0 : entityType!.hashCode) +
    (changedAt == null ? 0 : changedAt!.hashCode) +
    (typeOffChange == null ? 0 : typeOffChange!.hashCode) +
    (changedBy == null ? 0 : changedBy!.hashCode) +
    (displayName == null ? 0 : displayName!.hashCode) +
    (accountId == null ? 0 : accountId!.hashCode) +
    (sequenceNumber == null ? 0 : sequenceNumber!.hashCode) +
    (entityRefId == null ? 0 : entityRefId!.hashCode) +
    (entityParentId == null ? 0 : entityParentId!.hashCode) +
    (metadata.hashCode);

  @override
  String toString() => 'EntityChanged[entityId=$entityId, entityType=$entityType, changedAt=$changedAt, typeOffChange=$typeOffChange, changedBy=$changedBy, displayName=$displayName, accountId=$accountId, sequenceNumber=$sequenceNumber, entityRefId=$entityRefId, entityParentId=$entityParentId, metadata=$metadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.entityId != null) {
      json[r'entityId'] = this.entityId;
    } else {
      json[r'entityId'] = null;
    }
    if (this.entityType != null) {
      json[r'entityType'] = this.entityType;
    } else {
      json[r'entityType'] = null;
    }
    if (this.changedAt != null) {
      json[r'changedAt'] = this.changedAt!.toUtc().toIso8601String();
    } else {
      json[r'changedAt'] = null;
    }
    if (this.typeOffChange != null) {
      json[r'typeOffChange'] = this.typeOffChange;
    } else {
      json[r'typeOffChange'] = null;
    }
    if (this.changedBy != null) {
      json[r'changedBy'] = this.changedBy;
    } else {
      json[r'changedBy'] = null;
    }
    if (this.displayName != null) {
      json[r'displayName'] = this.displayName;
    } else {
      json[r'displayName'] = null;
    }
    if (this.accountId != null) {
      json[r'accountId'] = this.accountId;
    } else {
      json[r'accountId'] = null;
    }
    if (this.sequenceNumber != null) {
      json[r'sequenceNumber'] = this.sequenceNumber;
    } else {
      json[r'sequenceNumber'] = null;
    }
    if (this.entityRefId != null) {
      json[r'entityRefId'] = this.entityRefId;
    } else {
      json[r'entityRefId'] = null;
    }
    if (this.entityParentId != null) {
      json[r'entityParentId'] = this.entityParentId;
    } else {
      json[r'entityParentId'] = null;
    }
      json[r'metadata'] = this.metadata;
    return json;
  }

  /// Returns a new [EntityChanged] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EntityChanged? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EntityChanged[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EntityChanged[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EntityChanged(
        entityId: mapValueOfType<String>(json, r'entityId'),
        entityType: mapValueOfType<String>(json, r'entityType'),
        changedAt: mapDateTime(json, r'changedAt', r''),
        typeOffChange: mapValueOfType<int>(json, r'typeOffChange'),
        changedBy: mapValueOfType<String>(json, r'changedBy'),
        displayName: mapValueOfType<String>(json, r'displayName'),
        accountId: mapValueOfType<String>(json, r'accountId'),
        sequenceNumber: mapValueOfType<int>(json, r'sequenceNumber'),
        entityRefId: mapValueOfType<String>(json, r'entityRefId'),
        entityParentId: mapValueOfType<String>(json, r'entityParentId'),
        metadata: mapCastOfType<String, Object>(json, r'metadata') ?? const {},
      );
    }
    return null;
  }

  static List<EntityChanged> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EntityChanged>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EntityChanged.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EntityChanged> mapFromJson(dynamic json) {
    final map = <String, EntityChanged>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EntityChanged.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EntityChanged-objects as value to a dart map
  static Map<String, List<EntityChanged>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EntityChanged>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EntityChanged.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


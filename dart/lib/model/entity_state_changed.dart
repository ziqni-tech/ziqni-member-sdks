//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

class EntityStateChanged {
  /// Returns a new [EntityStateChanged] instance.
  EntityStateChanged({
    this.entityId,
    this.entityType,
    this.changedAt,
    this.changedBy,
    this.typeOffChange,
    this.displayName,
    this.accountId,
    this.sequenceNumber,
    this.entityRefId,
    this.entityParentId,
    this.metadata,
    this.previousState,
    this.currentState,
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
  String? changedBy;

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? metadata;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? previousState;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? currentState;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EntityStateChanged &&
    other.entityId == entityId &&
    other.entityType == entityType &&
    other.changedAt == changedAt &&
    other.changedBy == changedBy &&
    other.typeOffChange == typeOffChange &&
    other.displayName == displayName &&
    other.accountId == accountId &&
    other.sequenceNumber == sequenceNumber &&
    other.entityRefId == entityRefId &&
    other.entityParentId == entityParentId &&
    other.metadata == metadata &&
    other.previousState == previousState &&
    other.currentState == currentState;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entityId == null ? 0 : entityId!.hashCode) +
    (entityType == null ? 0 : entityType!.hashCode) +
    (changedAt == null ? 0 : changedAt!.hashCode) +
    (changedBy == null ? 0 : changedBy!.hashCode) +
    (typeOffChange == null ? 0 : typeOffChange!.hashCode) +
    (displayName == null ? 0 : displayName!.hashCode) +
    (accountId == null ? 0 : accountId!.hashCode) +
    (sequenceNumber == null ? 0 : sequenceNumber!.hashCode) +
    (entityRefId == null ? 0 : entityRefId!.hashCode) +
    (entityParentId == null ? 0 : entityParentId!.hashCode) +
    (metadata == null ? 0 : metadata!.hashCode) +
    (previousState == null ? 0 : previousState!.hashCode) +
    (currentState == null ? 0 : currentState!.hashCode);

  @override
  String toString() => 'EntityStateChanged[entityId=$entityId, entityType=$entityType, changedAt=$changedAt, changedBy=$changedBy, typeOffChange=$typeOffChange, displayName=$displayName, accountId=$accountId, sequenceNumber=$sequenceNumber, entityRefId=$entityRefId, entityParentId=$entityParentId, metadata=$metadata, previousState=$previousState, currentState=$currentState]';

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
    if (this.changedBy != null) {
      json[r'changedBy'] = this.changedBy;
    } else {
      json[r'changedBy'] = null;
    }
    if (this.typeOffChange != null) {
      json[r'typeOffChange'] = this.typeOffChange;
    } else {
      json[r'typeOffChange'] = null;
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
    if (this.metadata != null) {
      json[r'metadata'] = this.metadata;
    } else {
      json[r'metadata'] = null;
    }
    if (this.previousState != null) {
      json[r'previousState'] = this.previousState;
    } else {
      json[r'previousState'] = null;
    }
    if (this.currentState != null) {
      json[r'currentState'] = this.currentState;
    } else {
      json[r'currentState'] = null;
    }
    return json;
  }

  /// Returns a new [EntityStateChanged] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EntityStateChanged? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EntityStateChanged[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EntityStateChanged[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EntityStateChanged(
        entityId: mapValueOfType<String>(json, r'entityId'),
        entityType: mapValueOfType<String>(json, r'entityType'),
        changedAt: mapDateTime(json, r'changedAt', r''),
        changedBy: mapValueOfType<String>(json, r'changedBy'),
        typeOffChange: mapValueOfType<int>(json, r'typeOffChange'),
        displayName: mapValueOfType<String>(json, r'displayName'),
        accountId: mapValueOfType<String>(json, r'accountId'),
        sequenceNumber: mapValueOfType<int>(json, r'sequenceNumber'),
        entityRefId: mapValueOfType<String>(json, r'entityRefId'),
        entityParentId: mapValueOfType<String>(json, r'entityParentId'),
        metadata: mapValueOfType<Object>(json, r'metadata'),
        previousState: mapValueOfType<int>(json, r'previousState'),
        currentState: mapValueOfType<int>(json, r'currentState'),
      );
    }
    return null;
  }

  static List<EntityStateChanged> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EntityStateChanged>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EntityStateChanged.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EntityStateChanged> mapFromJson(dynamic json) {
    final map = <String, EntityStateChanged>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EntityStateChanged.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EntityStateChanged-objects as value to a dart map
  static Map<String, List<EntityStateChanged>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EntityStateChanged>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EntityStateChanged.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


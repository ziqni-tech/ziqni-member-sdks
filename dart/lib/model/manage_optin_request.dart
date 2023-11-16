//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

class ManageOptinRequest {
  /// Returns a new [ManageOptinRequest] instance.
  ManageOptinRequest({
    this.entityId,
    this.entityType,
    required this.action,
  });

  /// The system identifier for the entity
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? entityId;

  /// Achievement, Competition, or Contest 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? entityType;

  OptinAction action;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ManageOptinRequest &&
    other.entityId == entityId &&
    other.entityType == entityType &&
    other.action == action;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entityId == null ? 0 : entityId!.hashCode) +
    (entityType == null ? 0 : entityType!.hashCode) +
    (action.hashCode);

  @override
  String toString() => 'ManageOptinRequest[entityId=$entityId, entityType=$entityType, action=$action]';

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
      json[r'action'] = this.action;
    return json;
  }

  /// Returns a new [ManageOptinRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ManageOptinRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ManageOptinRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ManageOptinRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ManageOptinRequest(
        entityId: mapValueOfType<String>(json, r'entityId'),
        entityType: mapValueOfType<String>(json, r'entityType'),
        action: OptinAction.fromJson(json[r'action'])!,
      );
    }
    return null;
  }

  static List<ManageOptinRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ManageOptinRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ManageOptinRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ManageOptinRequest> mapFromJson(dynamic json) {
    final map = <String, ManageOptinRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ManageOptinRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ManageOptinRequest-objects as value to a dart map
  static Map<String, List<ManageOptinRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ManageOptinRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ManageOptinRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'action',
  };
}


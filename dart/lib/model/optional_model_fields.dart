//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

class OptionalModelFields {
  /// Returns a new [OptionalModelFields] instance.
  OptionalModelFields({
    this.customFields = const {},
    this.tags = const [],
    this.metadata = const {},
  });

  Map<String, Object> customFields;

  /// A list of id's used to tag models
  List<String> tags;

  Map<String, String> metadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OptionalModelFields &&
    _deepEquality.equals(other.customFields, customFields) &&
    _deepEquality.equals(other.tags, tags) &&
    _deepEquality.equals(other.metadata, metadata);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (customFields.hashCode) +
    (tags.hashCode) +
    (metadata.hashCode);

  @override
  String toString() => 'OptionalModelFields[customFields=$customFields, tags=$tags, metadata=$metadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'customFields'] = this.customFields;
      json[r'tags'] = this.tags;
      json[r'metadata'] = this.metadata;
    return json;
  }

  /// Returns a new [OptionalModelFields] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OptionalModelFields? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OptionalModelFields[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OptionalModelFields[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OptionalModelFields(
        customFields: mapCastOfType<String, Object>(json, r'customFields') ?? const {},
        tags: json[r'tags'] is Iterable
            ? (json[r'tags'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        metadata: mapCastOfType<String, String>(json, r'metadata') ?? const {},
      );
    }
    return null;
  }

  static List<OptionalModelFields> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OptionalModelFields>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OptionalModelFields.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OptionalModelFields> mapFromJson(dynamic json) {
    final map = <String, OptionalModelFields>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OptionalModelFields.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OptionalModelFields-objects as value to a dart map
  static Map<String, List<OptionalModelFields>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OptionalModelFields>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OptionalModelFields.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


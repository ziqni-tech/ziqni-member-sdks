//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

class CallbackEntry {
  /// Returns a new [CallbackEntry] instance.
  CallbackEntry({
    required this.name,
    this.constraints = const [],
  });

  /// 
  String name;

  /// 
  List<String> constraints;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CallbackEntry &&
    other.name == name &&
    _deepEquality.equals(other.constraints, constraints);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (constraints.hashCode);

  @override
  String toString() => 'CallbackEntry[name=$name, constraints=$constraints]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'constraints'] = this.constraints;
    return json;
  }

  /// Returns a new [CallbackEntry] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CallbackEntry? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CallbackEntry[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CallbackEntry[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CallbackEntry(
        name: mapValueOfType<String>(json, r'name')!,
        constraints: json[r'constraints'] is Iterable
            ? (json[r'constraints'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<CallbackEntry> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CallbackEntry>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CallbackEntry.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CallbackEntry> mapFromJson(dynamic json) {
    final map = <String, CallbackEntry>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CallbackEntry.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CallbackEntry-objects as value to a dart map
  static Map<String, List<CallbackEntry>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CallbackEntry>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CallbackEntry.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'constraints',
  };
}


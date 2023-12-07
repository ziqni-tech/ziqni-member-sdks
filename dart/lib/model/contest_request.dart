//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

class ContestRequest {
  /// Returns a new [ContestRequest] instance.
  ContestRequest({
    this.languageKey,
    this.contestFilter,
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
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ContestFilter? contestFilter;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ContestRequest &&
    other.languageKey == languageKey &&
    other.contestFilter == contestFilter;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (languageKey == null ? 0 : languageKey!.hashCode) +
    (contestFilter == null ? 0 : contestFilter!.hashCode);

  @override
  String toString() => 'ContestRequest[languageKey=$languageKey, contestFilter=$contestFilter]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.languageKey != null) {
      json[r'languageKey'] = this.languageKey;
    } else {
      json[r'languageKey'] = null;
    }
    if (this.contestFilter != null) {
      json[r'contestFilter'] = this.contestFilter;
    } else {
      json[r'contestFilter'] = null;
    }
    return json;
  }

  /// Returns a new [ContestRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ContestRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ContestRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ContestRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ContestRequest(
        languageKey: mapValueOfType<String>(json, r'languageKey'),
        contestFilter: ContestFilter.fromJson(json[r'contestFilter']),
      );
    }
    return null;
  }

  static List<ContestRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ContestRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ContestRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ContestRequest> mapFromJson(dynamic json) {
    final map = <String, ContestRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ContestRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ContestRequest-objects as value to a dart map
  static Map<String, List<ContestRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ContestRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ContestRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


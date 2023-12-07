//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

class AchievementRequest {
  /// Returns a new [AchievementRequest] instance.
  AchievementRequest({
    this.achievementFilter,
    this.languageKey,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AchievementFilter? achievementFilter;

  /// The language codes can be found in the settings/transalations section of the back office
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? languageKey;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AchievementRequest &&
    other.achievementFilter == achievementFilter &&
    other.languageKey == languageKey;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (achievementFilter == null ? 0 : achievementFilter!.hashCode) +
    (languageKey == null ? 0 : languageKey!.hashCode);

  @override
  String toString() => 'AchievementRequest[achievementFilter=$achievementFilter, languageKey=$languageKey]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.achievementFilter != null) {
      json[r'achievementFilter'] = this.achievementFilter;
    } else {
      json[r'achievementFilter'] = null;
    }
    if (this.languageKey != null) {
      json[r'languageKey'] = this.languageKey;
    } else {
      json[r'languageKey'] = null;
    }
    return json;
  }

  /// Returns a new [AchievementRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AchievementRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AchievementRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AchievementRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AchievementRequest(
        achievementFilter: AchievementFilter.fromJson(json[r'achievementFilter']),
        languageKey: mapValueOfType<String>(json, r'languageKey'),
      );
    }
    return null;
  }

  static List<AchievementRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AchievementRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AchievementRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AchievementRequest> mapFromJson(dynamic json) {
    final map = <String, AchievementRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AchievementRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AchievementRequest-objects as value to a dart map
  static Map<String, List<AchievementRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AchievementRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AchievementRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


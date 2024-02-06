//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

class ClaimAwardRequest {
  /// Returns a new [ClaimAwardRequest] instance.
  ClaimAwardRequest({
    this.languageKey,
    this.awardIds = const [],
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
  List<String> awardIds;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ClaimAwardRequest &&
    other.languageKey == languageKey &&
    _deepEquality.equals(other.awardIds, awardIds);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (languageKey == null ? 0 : languageKey!.hashCode) +
    (awardIds.hashCode);

  @override
  String toString() => 'ClaimAwardRequest[languageKey=$languageKey, awardIds=$awardIds]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.languageKey != null) {
      json[r'languageKey'] = this.languageKey;
    } else {
      json[r'languageKey'] = null;
    }
      json[r'awardIds'] = this.awardIds;
    return json;
  }

  /// Returns a new [ClaimAwardRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ClaimAwardRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ClaimAwardRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ClaimAwardRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ClaimAwardRequest(
        languageKey: mapValueOfType<String>(json, r'languageKey'),
        awardIds: json[r'awardIds'] is Iterable
            ? (json[r'awardIds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<ClaimAwardRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ClaimAwardRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ClaimAwardRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ClaimAwardRequest> mapFromJson(dynamic json) {
    final map = <String, ClaimAwardRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ClaimAwardRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ClaimAwardRequest-objects as value to a dart map
  static Map<String, List<ClaimAwardRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ClaimAwardRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ClaimAwardRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


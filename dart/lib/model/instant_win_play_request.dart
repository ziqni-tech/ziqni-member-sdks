//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

class InstantWinPlayRequest {
  /// Returns a new [InstantWinPlayRequest] instance.
  InstantWinPlayRequest({
    this.awardId,
    this.languageKey,
    this.currencyKey,
  });

  /// The award identifier is required to claim this. This can only be made once.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? awardId;

  /// The language codes can be found in the settings/transalations section of the back office
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? languageKey;

  /// The UoM currency key to normalise the value to for presentation. Example; If the reward is in EUR and this value is set to USD then the value will be multiplied by 1.09387699997429
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currencyKey;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InstantWinPlayRequest &&
    other.awardId == awardId &&
    other.languageKey == languageKey &&
    other.currencyKey == currencyKey;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (awardId == null ? 0 : awardId!.hashCode) +
    (languageKey == null ? 0 : languageKey!.hashCode) +
    (currencyKey == null ? 0 : currencyKey!.hashCode);

  @override
  String toString() => 'InstantWinPlayRequest[awardId=$awardId, languageKey=$languageKey, currencyKey=$currencyKey]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.awardId != null) {
      json[r'awardId'] = this.awardId;
    } else {
      json[r'awardId'] = null;
    }
    if (this.languageKey != null) {
      json[r'languageKey'] = this.languageKey;
    } else {
      json[r'languageKey'] = null;
    }
    if (this.currencyKey != null) {
      json[r'currencyKey'] = this.currencyKey;
    } else {
      json[r'currencyKey'] = null;
    }
    return json;
  }

  /// Returns a new [InstantWinPlayRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InstantWinPlayRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InstantWinPlayRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InstantWinPlayRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InstantWinPlayRequest(
        awardId: mapValueOfType<String>(json, r'awardId'),
        languageKey: mapValueOfType<String>(json, r'languageKey'),
        currencyKey: mapValueOfType<String>(json, r'currencyKey'),
      );
    }
    return null;
  }

  static List<InstantWinPlayRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InstantWinPlayRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InstantWinPlayRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InstantWinPlayRequest> mapFromJson(dynamic json) {
    final map = <String, InstantWinPlayRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InstantWinPlayRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InstantWinPlayRequest-objects as value to a dart map
  static Map<String, List<InstantWinPlayRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InstantWinPlayRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InstantWinPlayRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


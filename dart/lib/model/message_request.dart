//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

class MessageRequest {
  /// Returns a new [MessageRequest] instance.
  MessageRequest({
    this.languageKey,
    this.messageFilter,
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
  MessageFilter? messageFilter;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MessageRequest &&
    other.languageKey == languageKey &&
    other.messageFilter == messageFilter;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (languageKey == null ? 0 : languageKey!.hashCode) +
    (messageFilter == null ? 0 : messageFilter!.hashCode);

  @override
  String toString() => 'MessageRequest[languageKey=$languageKey, messageFilter=$messageFilter]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.languageKey != null) {
      json[r'languageKey'] = this.languageKey;
    } else {
      json[r'languageKey'] = null;
    }
    if (this.messageFilter != null) {
      json[r'messageFilter'] = this.messageFilter;
    } else {
      json[r'messageFilter'] = null;
    }
    return json;
  }

  /// Returns a new [MessageRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MessageRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MessageRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MessageRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MessageRequest(
        languageKey: mapValueOfType<String>(json, r'languageKey'),
        messageFilter: MessageFilter.fromJson(json[r'messageFilter']),
      );
    }
    return null;
  }

  static List<MessageRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MessageRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MessageRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MessageRequest> mapFromJson(dynamic json) {
    final map = <String, MessageRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MessageRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MessageRequest-objects as value to a dart map
  static Map<String, List<MessageRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MessageRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MessageRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


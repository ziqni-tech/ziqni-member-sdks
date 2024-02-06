//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

class AwardResponse {
  /// Returns a new [AwardResponse] instance.
  AwardResponse({
    this.meta,
    this.data = const [],
    this.errors = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ResponseMeta? meta;

  /// 
  List<Award> data;

  /// 
  List<Error> errors;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AwardResponse &&
    other.meta == meta &&
    _deepEquality.equals(other.data, data) &&
    _deepEquality.equals(other.errors, errors);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (meta == null ? 0 : meta!.hashCode) +
    (data.hashCode) +
    (errors.hashCode);

  @override
  String toString() => 'AwardResponse[meta=$meta, data=$data, errors=$errors]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.meta != null) {
      json[r'meta'] = this.meta;
    } else {
      json[r'meta'] = null;
    }
      json[r'data'] = this.data;
      json[r'errors'] = this.errors;
    return json;
  }

  /// Returns a new [AwardResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AwardResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AwardResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AwardResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AwardResponse(
        meta: ResponseMeta.fromJson(json[r'meta']),
        data: Award.listFromJson(json[r'data']),
        errors: Error.listFromJson(json[r'errors']),
      );
    }
    return null;
  }

  static List<AwardResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AwardResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AwardResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AwardResponse> mapFromJson(dynamic json) {
    final map = <String, AwardResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AwardResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AwardResponse-objects as value to a dart map
  static Map<String, List<AwardResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AwardResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AwardResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


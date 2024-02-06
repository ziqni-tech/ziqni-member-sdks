//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

class RewardRequest {
  /// Returns a new [RewardRequest] instance.
  RewardRequest({
    this.entityFilter = const [],
    this.languageKey,
    this.sortBy = const [],
    this.currencyKey,
    this.skip,
    this.limit,
  });

  /// 
  List<EntityFilter> entityFilter;

  /// The language codes can be found in the settings/transalations section of the back office
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? languageKey;

  /// 
  List<QuerySortBy> sortBy;

  /// The UoM currency key to normalise the value to for presentation. Example; If the reward is in EUR and this value is set to USD then the value will be multiplied by 1.09387699997429
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currencyKey;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? skip;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? limit;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RewardRequest &&
    _deepEquality.equals(other.entityFilter, entityFilter) &&
    other.languageKey == languageKey &&
    _deepEquality.equals(other.sortBy, sortBy) &&
    other.currencyKey == currencyKey &&
    other.skip == skip &&
    other.limit == limit;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entityFilter.hashCode) +
    (languageKey == null ? 0 : languageKey!.hashCode) +
    (sortBy.hashCode) +
    (currencyKey == null ? 0 : currencyKey!.hashCode) +
    (skip == null ? 0 : skip!.hashCode) +
    (limit == null ? 0 : limit!.hashCode);

  @override
  String toString() => 'RewardRequest[entityFilter=$entityFilter, languageKey=$languageKey, sortBy=$sortBy, currencyKey=$currencyKey, skip=$skip, limit=$limit]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'entityFilter'] = this.entityFilter;
    if (this.languageKey != null) {
      json[r'languageKey'] = this.languageKey;
    } else {
      json[r'languageKey'] = null;
    }
      json[r'sortBy'] = this.sortBy;
    if (this.currencyKey != null) {
      json[r'currencyKey'] = this.currencyKey;
    } else {
      json[r'currencyKey'] = null;
    }
    if (this.skip != null) {
      json[r'skip'] = this.skip;
    } else {
      json[r'skip'] = null;
    }
    if (this.limit != null) {
      json[r'limit'] = this.limit;
    } else {
      json[r'limit'] = null;
    }
    return json;
  }

  /// Returns a new [RewardRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RewardRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RewardRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RewardRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RewardRequest(
        entityFilter: EntityFilter.listFromJson(json[r'entityFilter']),
        languageKey: mapValueOfType<String>(json, r'languageKey'),
        sortBy: QuerySortBy.listFromJson(json[r'sortBy']),
        currencyKey: mapValueOfType<String>(json, r'currencyKey'),
        skip: mapValueOfType<int>(json, r'skip'),
        limit: mapValueOfType<int>(json, r'limit'),
      );
    }
    return null;
  }

  static List<RewardRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RewardRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RewardRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RewardRequest> mapFromJson(dynamic json) {
    final map = <String, RewardRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RewardRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RewardRequest-objects as value to a dart map
  static Map<String, List<RewardRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RewardRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RewardRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


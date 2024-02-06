//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

class ScoringStrategy {
  /// Returns a new [ScoringStrategy] instance.
  ScoringStrategy({
    this.limitUpdatesTo,
    this.sumBestXOf,
    this.lastUpdateTimeStamp,
    this.recordTimeWhenSumReaches,
  });

  /// The scoring strategies types \"SumBest\" value
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? limitUpdatesTo;

  /// The scoring strategies types \"LimitedTo\" value
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? sumBestXOf;

  /// The scoring strategies types \"FirstTo\" value
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? lastUpdateTimeStamp;

  /// Not supported at the moment
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? recordTimeWhenSumReaches;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ScoringStrategy &&
    other.limitUpdatesTo == limitUpdatesTo &&
    other.sumBestXOf == sumBestXOf &&
    other.lastUpdateTimeStamp == lastUpdateTimeStamp &&
    other.recordTimeWhenSumReaches == recordTimeWhenSumReaches;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (limitUpdatesTo == null ? 0 : limitUpdatesTo!.hashCode) +
    (sumBestXOf == null ? 0 : sumBestXOf!.hashCode) +
    (lastUpdateTimeStamp == null ? 0 : lastUpdateTimeStamp!.hashCode) +
    (recordTimeWhenSumReaches == null ? 0 : recordTimeWhenSumReaches!.hashCode);

  @override
  String toString() => 'ScoringStrategy[limitUpdatesTo=$limitUpdatesTo, sumBestXOf=$sumBestXOf, lastUpdateTimeStamp=$lastUpdateTimeStamp, recordTimeWhenSumReaches=$recordTimeWhenSumReaches]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.limitUpdatesTo != null) {
      json[r'limitUpdatesTo'] = this.limitUpdatesTo;
    } else {
      json[r'limitUpdatesTo'] = null;
    }
    if (this.sumBestXOf != null) {
      json[r'sumBestXOf'] = this.sumBestXOf;
    } else {
      json[r'sumBestXOf'] = null;
    }
    if (this.lastUpdateTimeStamp != null) {
      json[r'lastUpdateTimeStamp'] = this.lastUpdateTimeStamp;
    } else {
      json[r'lastUpdateTimeStamp'] = null;
    }
    if (this.recordTimeWhenSumReaches != null) {
      json[r'recordTimeWhenSumReaches'] = this.recordTimeWhenSumReaches;
    } else {
      json[r'recordTimeWhenSumReaches'] = null;
    }
    return json;
  }

  /// Returns a new [ScoringStrategy] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ScoringStrategy? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ScoringStrategy[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ScoringStrategy[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ScoringStrategy(
        limitUpdatesTo: mapValueOfType<int>(json, r'limitUpdatesTo'),
        sumBestXOf: mapValueOfType<int>(json, r'sumBestXOf'),
        lastUpdateTimeStamp: mapValueOfType<int>(json, r'lastUpdateTimeStamp'),
        recordTimeWhenSumReaches: mapValueOfType<double>(json, r'recordTimeWhenSumReaches'),
      );
    }
    return null;
  }

  static List<ScoringStrategy> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScoringStrategy>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScoringStrategy.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ScoringStrategy> mapFromJson(dynamic json) {
    final map = <String, ScoringStrategy>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ScoringStrategy.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ScoringStrategy-objects as value to a dart map
  static Map<String, List<ScoringStrategy>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ScoringStrategy>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ScoringStrategy.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


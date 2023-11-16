//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

class OptinStatus {
  /// Returns a new [OptinStatus] instance.
  OptinStatus({
    required this.entityType,
    required this.entityId,
    required this.statusCode,
    required this.status,
    this.percentageComplete,
    required this.points,
  });

  /// 
  String entityType;

  /// 
  String entityId;

  /// Processing = 0, NotEntered = 5, Entering = 10, Entrant = 15, Preparing = 20, Running = 25, Completing = 30, Completed = 35
  int statusCode;

  /// Processing = 0, NotEntered = 5, Entering = 10, Entrant = 15,\\             \\ Preparing = 20, Running = 25, Completing = 30, Completed = 35
  String status;

  /// What percentage has been completed so far, this is a number between 0 and 100
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? percentageComplete;

  /// 
  double points;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OptinStatus &&
    other.entityType == entityType &&
    other.entityId == entityId &&
    other.statusCode == statusCode &&
    other.status == status &&
    other.percentageComplete == percentageComplete &&
    other.points == points;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entityType.hashCode) +
    (entityId.hashCode) +
    (statusCode.hashCode) +
    (status.hashCode) +
    (percentageComplete == null ? 0 : percentageComplete!.hashCode) +
    (points.hashCode);

  @override
  String toString() => 'OptinStatus[entityType=$entityType, entityId=$entityId, statusCode=$statusCode, status=$status, percentageComplete=$percentageComplete, points=$points]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'entityType'] = this.entityType;
      json[r'entityId'] = this.entityId;
      json[r'statusCode'] = this.statusCode;
      json[r'status'] = this.status;
    if (this.percentageComplete != null) {
      json[r'percentageComplete'] = this.percentageComplete;
    } else {
      json[r'percentageComplete'] = null;
    }
      json[r'points'] = this.points;
    return json;
  }

  /// Returns a new [OptinStatus] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OptinStatus? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OptinStatus[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OptinStatus[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OptinStatus(
        entityType: mapValueOfType<String>(json, r'entityType')!,
        entityId: mapValueOfType<String>(json, r'entityId')!,
        statusCode: mapValueOfType<int>(json, r'statusCode')!,
        status: mapValueOfType<String>(json, r'status')!,
        percentageComplete: num.parse('${json[r'percentageComplete']}'),
        points: mapValueOfType<double>(json, r'points')!,
      );
    }
    return null;
  }

  static List<OptinStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OptinStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OptinStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OptinStatus> mapFromJson(dynamic json) {
    final map = <String, OptinStatus>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OptinStatus.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OptinStatus-objects as value to a dart map
  static Map<String, List<OptinStatus>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OptinStatus>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OptinStatus.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'entityType',
    'entityId',
    'statusCode',
    'status',
    'points',
  };
}


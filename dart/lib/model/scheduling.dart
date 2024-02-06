//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

class Scheduling {
  /// Returns a new [Scheduling] instance.
  Scheduling({
    required this.scheduleType,
    required this.scheduleOccurrencesLimit,
    this.every = const [],
    required this.startDate,
    this.endDate,
    this.constraints = const [],
  });

  ScheduleType scheduleType;

  /// A value indicating how many times it will be issued
  int scheduleOccurrencesLimit;

  List<int> every;

  /// The start date and time of a schedule. ISO8601 timestamp
  DateTime startDate;

  /// The end date and time of a schedule. ISO8601 timestamp
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? endDate;

  /// Additional constraints
  List<String> constraints;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Scheduling &&
    other.scheduleType == scheduleType &&
    other.scheduleOccurrencesLimit == scheduleOccurrencesLimit &&
    _deepEquality.equals(other.every, every) &&
    other.startDate == startDate &&
    other.endDate == endDate &&
    _deepEquality.equals(other.constraints, constraints);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (scheduleType.hashCode) +
    (scheduleOccurrencesLimit.hashCode) +
    (every.hashCode) +
    (startDate.hashCode) +
    (endDate == null ? 0 : endDate!.hashCode) +
    (constraints.hashCode);

  @override
  String toString() => 'Scheduling[scheduleType=$scheduleType, scheduleOccurrencesLimit=$scheduleOccurrencesLimit, every=$every, startDate=$startDate, endDate=$endDate, constraints=$constraints]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'scheduleType'] = this.scheduleType;
      json[r'scheduleOccurrencesLimit'] = this.scheduleOccurrencesLimit;
      json[r'every'] = this.every;
      json[r'startDate'] = this.startDate.toUtc().toIso8601String();
    if (this.endDate != null) {
      json[r'endDate'] = this.endDate!.toUtc().toIso8601String();
    } else {
      json[r'endDate'] = null;
    }
      json[r'constraints'] = this.constraints;
    return json;
  }

  /// Returns a new [Scheduling] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Scheduling? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Scheduling[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Scheduling[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Scheduling(
        scheduleType: ScheduleType.fromJson(json[r'scheduleType'])!,
        scheduleOccurrencesLimit: mapValueOfType<int>(json, r'scheduleOccurrencesLimit')!,
        every: json[r'every'] is Iterable
            ? (json[r'every'] as Iterable).cast<int>().toList(growable: false)
            : const [],
        startDate: mapDateTime(json, r'startDate', r'')!,
        endDate: mapDateTime(json, r'endDate', r''),
        constraints: json[r'constraints'] is Iterable
            ? (json[r'constraints'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<Scheduling> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Scheduling>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Scheduling.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Scheduling> mapFromJson(dynamic json) {
    final map = <String, Scheduling>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Scheduling.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Scheduling-objects as value to a dart map
  static Map<String, List<Scheduling>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Scheduling>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Scheduling.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'scheduleType',
    'scheduleOccurrencesLimit',
    'every',
    'startDate',
    'constraints',
  };
}


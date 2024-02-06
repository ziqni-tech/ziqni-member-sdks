//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

class Strategy {
  /// Returns a new [Strategy] instance.
  Strategy({
    this.strategyType,
    this.rankingStrategy,
    this.scoringStrategy,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  StrategyType? strategyType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RankingStrategy? rankingStrategy;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ScoringStrategy? scoringStrategy;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Strategy &&
    other.strategyType == strategyType &&
    other.rankingStrategy == rankingStrategy &&
    other.scoringStrategy == scoringStrategy;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (strategyType == null ? 0 : strategyType!.hashCode) +
    (rankingStrategy == null ? 0 : rankingStrategy!.hashCode) +
    (scoringStrategy == null ? 0 : scoringStrategy!.hashCode);

  @override
  String toString() => 'Strategy[strategyType=$strategyType, rankingStrategy=$rankingStrategy, scoringStrategy=$scoringStrategy]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.strategyType != null) {
      json[r'strategyType'] = this.strategyType;
    } else {
      json[r'strategyType'] = null;
    }
    if (this.rankingStrategy != null) {
      json[r'rankingStrategy'] = this.rankingStrategy;
    } else {
      json[r'rankingStrategy'] = null;
    }
    if (this.scoringStrategy != null) {
      json[r'scoringStrategy'] = this.scoringStrategy;
    } else {
      json[r'scoringStrategy'] = null;
    }
    return json;
  }

  /// Returns a new [Strategy] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Strategy? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Strategy[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Strategy[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Strategy(
        strategyType: StrategyType.fromJson(json[r'strategyType']),
        rankingStrategy: RankingStrategy.fromJson(json[r'rankingStrategy']),
        scoringStrategy: ScoringStrategy.fromJson(json[r'scoringStrategy']),
      );
    }
    return null;
  }

  static List<Strategy> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Strategy>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Strategy.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Strategy> mapFromJson(dynamic json) {
    final map = <String, Strategy>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Strategy.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Strategy-objects as value to a dart map
  static Map<String, List<Strategy>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Strategy>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Strategy.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


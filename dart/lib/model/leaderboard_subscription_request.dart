//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

class LeaderboardSubscriptionRequest {
  /// Returns a new [LeaderboardSubscriptionRequest] instance.
  LeaderboardSubscriptionRequest({
    this.leaderboardFilter,
    required this.entityId,
    required this.action,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  LeaderboardFilter? leaderboardFilter;

  /// Either the competition, contest, tournament or match identifier
  String entityId;

  /// Either subscribe or unsubscribe from the data feed
  LeaderboardSubscriptionRequestActionEnum action;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LeaderboardSubscriptionRequest &&
    other.leaderboardFilter == leaderboardFilter &&
    other.entityId == entityId &&
    other.action == action;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (leaderboardFilter == null ? 0 : leaderboardFilter!.hashCode) +
    (entityId.hashCode) +
    (action.hashCode);

  @override
  String toString() => 'LeaderboardSubscriptionRequest[leaderboardFilter=$leaderboardFilter, entityId=$entityId, action=$action]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.leaderboardFilter != null) {
      json[r'leaderboardFilter'] = this.leaderboardFilter;
    } else {
      json[r'leaderboardFilter'] = null;
    }
      json[r'entityId'] = this.entityId;
      json[r'action'] = this.action;
    return json;
  }

  /// Returns a new [LeaderboardSubscriptionRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LeaderboardSubscriptionRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LeaderboardSubscriptionRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LeaderboardSubscriptionRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LeaderboardSubscriptionRequest(
        leaderboardFilter: LeaderboardFilter.fromJson(json[r'leaderboardFilter']),
        entityId: mapValueOfType<String>(json, r'entityId')!,
        action: LeaderboardSubscriptionRequestActionEnum.fromJson(json[r'action'])!,
      );
    }
    return null;
  }

  static List<LeaderboardSubscriptionRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LeaderboardSubscriptionRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LeaderboardSubscriptionRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LeaderboardSubscriptionRequest> mapFromJson(dynamic json) {
    final map = <String, LeaderboardSubscriptionRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LeaderboardSubscriptionRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LeaderboardSubscriptionRequest-objects as value to a dart map
  static Map<String, List<LeaderboardSubscriptionRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LeaderboardSubscriptionRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LeaderboardSubscriptionRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'entityId',
    'action',
  };
}

/// Either subscribe or unsubscribe from the data feed
class LeaderboardSubscriptionRequestActionEnum {
  /// Instantiate a new enum with the provided [value].
  const LeaderboardSubscriptionRequestActionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const subscribe = LeaderboardSubscriptionRequestActionEnum._(r'Subscribe');
  static const unsubscribe = LeaderboardSubscriptionRequestActionEnum._(r'Unsubscribe');

  /// List of all possible values in this [enum][LeaderboardSubscriptionRequestActionEnum].
  static const values = <LeaderboardSubscriptionRequestActionEnum>[
    subscribe,
    unsubscribe,
  ];

  static LeaderboardSubscriptionRequestActionEnum? fromJson(dynamic value) => LeaderboardSubscriptionRequestActionEnumTypeTransformer().decode(value);

  static List<LeaderboardSubscriptionRequestActionEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LeaderboardSubscriptionRequestActionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LeaderboardSubscriptionRequestActionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [LeaderboardSubscriptionRequestActionEnum] to String,
/// and [decode] dynamic data back to [LeaderboardSubscriptionRequestActionEnum].
class LeaderboardSubscriptionRequestActionEnumTypeTransformer {
  factory LeaderboardSubscriptionRequestActionEnumTypeTransformer() => _instance ??= const LeaderboardSubscriptionRequestActionEnumTypeTransformer._();

  const LeaderboardSubscriptionRequestActionEnumTypeTransformer._();

  String encode(LeaderboardSubscriptionRequestActionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a LeaderboardSubscriptionRequestActionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  LeaderboardSubscriptionRequestActionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Subscribe': return LeaderboardSubscriptionRequestActionEnum.subscribe;
        case r'Unsubscribe': return LeaderboardSubscriptionRequestActionEnum.unsubscribe;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [LeaderboardSubscriptionRequestActionEnumTypeTransformer] instance.
  static LeaderboardSubscriptionRequestActionEnumTypeTransformer? _instance;
}



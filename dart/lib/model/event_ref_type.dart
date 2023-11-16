//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

/// Defines an even type attached to the message
class EventRefType {
  /// Instantiate a new enum with the provided [value].
  const EventRefType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const competition = EventRefType._(r'Competition');
  static const contest = EventRefType._(r'Contest');
  static const achievement = EventRefType._(r'Achievement');
  static const user = EventRefType._(r'User');
  static const memberMessage = EventRefType._(r'MemberMessage');

  /// List of all possible values in this [enum][EventRefType].
  static const values = <EventRefType>[
    competition,
    contest,
    achievement,
    user,
    memberMessage,
  ];

  static EventRefType? fromJson(dynamic value) => EventRefTypeTypeTransformer().decode(value);

  static List<EventRefType> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EventRefType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EventRefType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EventRefType] to String,
/// and [decode] dynamic data back to [EventRefType].
class EventRefTypeTypeTransformer {
  factory EventRefTypeTypeTransformer() => _instance ??= const EventRefTypeTypeTransformer._();

  const EventRefTypeTypeTransformer._();

  String encode(EventRefType data) => data.value;

  /// Decodes a [dynamic value][data] to a EventRefType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EventRefType? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Competition': return EventRefType.competition;
        case r'Contest': return EventRefType.contest;
        case r'Achievement': return EventRefType.achievement;
        case r'User': return EventRefType.user;
        case r'MemberMessage': return EventRefType.memberMessage;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EventRefTypeTypeTransformer] instance.
  static EventRefTypeTypeTransformer? _instance;
}


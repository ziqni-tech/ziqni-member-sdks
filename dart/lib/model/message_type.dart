//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

/// The type of message of the member
class MessageType {
  /// Instantiate a new enum with the provided [value].
  const MessageType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const achievement = MessageType._(r'Achievement');
  static const ticket = MessageType._(r'Ticket');
  static const reward = MessageType._(r'Reward');
  static const text = MessageType._(r'Text');
  static const notification = MessageType._(r'Notification');
  static const inboxItem = MessageType._(r'InboxItem');
  static const notificationInboxItem = MessageType._(r'NotificationInboxItem');

  /// List of all possible values in this [enum][MessageType].
  static const values = <MessageType>[
    achievement,
    ticket,
    reward,
    text,
    notification,
    inboxItem,
    notificationInboxItem,
  ];

  static MessageType? fromJson(dynamic value) => MessageTypeTypeTransformer().decode(value);

  static List<MessageType> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MessageType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MessageType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [MessageType] to String,
/// and [decode] dynamic data back to [MessageType].
class MessageTypeTypeTransformer {
  factory MessageTypeTypeTransformer() => _instance ??= const MessageTypeTypeTransformer._();

  const MessageTypeTypeTransformer._();

  String encode(MessageType data) => data.value;

  /// Decodes a [dynamic value][data] to a MessageType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MessageType? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Achievement': return MessageType.achievement;
        case r'Ticket': return MessageType.ticket;
        case r'Reward': return MessageType.reward;
        case r'Text': return MessageType.text;
        case r'Notification': return MessageType.notification;
        case r'InboxItem': return MessageType.inboxItem;
        case r'NotificationInboxItem': return MessageType.notificationInboxItem;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [MessageTypeTypeTransformer] instance.
  static MessageTypeTypeTransformer? _instance;
}


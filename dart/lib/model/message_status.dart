//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

/// The status of the message
class MessageStatus {
  /// Instantiate a new enum with the provided [value].
  const MessageStatus._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const new_ = MessageStatus._(r'New');
  static const read = MessageStatus._(r'Read');
  static const collaborationRequest = MessageStatus._(r'CollaborationRequest');
  static const actioned = MessageStatus._(r'Actioned');
  static const claimed = MessageStatus._(r'Claimed');
  static const expired = MessageStatus._(r'Expired');
  static const canceled = MessageStatus._(r'Canceled');
  static const deprecated = MessageStatus._(r'Deprecated');

  /// List of all possible values in this [enum][MessageStatus].
  static const values = <MessageStatus>[
    new_,
    read,
    collaborationRequest,
    actioned,
    claimed,
    expired,
    canceled,
    deprecated,
  ];

  static MessageStatus? fromJson(dynamic value) => MessageStatusTypeTransformer().decode(value);

  static List<MessageStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MessageStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MessageStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [MessageStatus] to String,
/// and [decode] dynamic data back to [MessageStatus].
class MessageStatusTypeTransformer {
  factory MessageStatusTypeTransformer() => _instance ??= const MessageStatusTypeTransformer._();

  const MessageStatusTypeTransformer._();

  String encode(MessageStatus data) => data.value;

  /// Decodes a [dynamic value][data] to a MessageStatus.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MessageStatus? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'New': return MessageStatus.new_;
        case r'Read': return MessageStatus.read;
        case r'CollaborationRequest': return MessageStatus.collaborationRequest;
        case r'Actioned': return MessageStatus.actioned;
        case r'Claimed': return MessageStatus.claimed;
        case r'Expired': return MessageStatus.expired;
        case r'Canceled': return MessageStatus.canceled;
        case r'Deprecated': return MessageStatus.deprecated;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [MessageStatusTypeTransformer] instance.
  static MessageStatusTypeTransformer? _instance;
}


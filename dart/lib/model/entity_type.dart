//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

/// Entity the item is associated to.
class EntityType {
  /// Instantiate a new enum with the provided [value].
  const EntityType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const member = EntityType._(r'Member');
  static const product = EntityType._(r'Product');
  static const achievement = EntityType._(r'Achievement');
  static const repository = EntityType._(r'Repository');
  static const fileObject = EntityType._(r'FileObject');
  static const language = EntityType._(r'Language');
  static const memberMessage = EntityType._(r'MemberMessage');
  static const reward = EntityType._(r'Reward');
  static const memberAward = EntityType._(r'MemberAward');
  static const award = EntityType._(r'Award');
  static const message = EntityType._(r'Message');
  static const rewardType = EntityType._(r'RewardType');
  static const actionType = EntityType._(r'ActionType');
  static const unitOfMeasure = EntityType._(r'UnitOfMeasure');
  static const competition = EntityType._(r'Competition');
  static const contest = EntityType._(r'Contest');
  static const sqsConnection = EntityType._(r'SqsConnection');
  static const kafkaConnection = EntityType._(r'KafkaConnection');
  static const rabbitMqConnection = EntityType._(r'RabbitMqConnection');
  static const events = EntityType._(r'Events');
  static const webhook = EntityType._(r'Webhook');
  static const attachment = EntityType._(r'Attachment');
  static const ruleSet = EntityType._(r'RuleSet');

  /// List of all possible values in this [enum][EntityType].
  static const values = <EntityType>[
    member,
    product,
    achievement,
    repository,
    fileObject,
    language,
    memberMessage,
    reward,
    memberAward,
    award,
    message,
    rewardType,
    actionType,
    unitOfMeasure,
    competition,
    contest,
    sqsConnection,
    kafkaConnection,
    rabbitMqConnection,
    events,
    webhook,
    attachment,
    ruleSet,
  ];

  static EntityType? fromJson(dynamic value) => EntityTypeTypeTransformer().decode(value);

  static List<EntityType> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EntityType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EntityType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EntityType] to String,
/// and [decode] dynamic data back to [EntityType].
class EntityTypeTypeTransformer {
  factory EntityTypeTypeTransformer() => _instance ??= const EntityTypeTypeTransformer._();

  const EntityTypeTypeTransformer._();

  String encode(EntityType data) => data.value;

  /// Decodes a [dynamic value][data] to a EntityType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EntityType? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Member': return EntityType.member;
        case r'Product': return EntityType.product;
        case r'Achievement': return EntityType.achievement;
        case r'Repository': return EntityType.repository;
        case r'FileObject': return EntityType.fileObject;
        case r'Language': return EntityType.language;
        case r'MemberMessage': return EntityType.memberMessage;
        case r'Reward': return EntityType.reward;
        case r'MemberAward': return EntityType.memberAward;
        case r'Award': return EntityType.award;
        case r'Message': return EntityType.message;
        case r'RewardType': return EntityType.rewardType;
        case r'ActionType': return EntityType.actionType;
        case r'UnitOfMeasure': return EntityType.unitOfMeasure;
        case r'Competition': return EntityType.competition;
        case r'Contest': return EntityType.contest;
        case r'SqsConnection': return EntityType.sqsConnection;
        case r'KafkaConnection': return EntityType.kafkaConnection;
        case r'RabbitMqConnection': return EntityType.rabbitMqConnection;
        case r'Events': return EntityType.events;
        case r'Webhook': return EntityType.webhook;
        case r'Attachment': return EntityType.attachment;
        case r'RuleSet': return EntityType.ruleSet;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EntityTypeTypeTransformer] instance.
  static EntityTypeTypeTransformer? _instance;
}


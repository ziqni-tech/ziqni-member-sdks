//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

/// The status of contest
class ContestStatus {
  /// Instantiate a new enum with the provided [value].
  const ContestStatus._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const unknown = ContestStatus._(r'Unknown');
  static const deleting = ContestStatus._(r'Deleting');
  static const deleted = ContestStatus._(r'Deleted');
  static const draft = ContestStatus._(r'Draft');
  static const template = ContestStatus._(r'Template');
  static const preparing = ContestStatus._(r'Preparing');
  static const ready = ContestStatus._(r'Ready');
  static const starting = ContestStatus._(r'Starting');
  static const active = ContestStatus._(r'Active');
  static const finishing = ContestStatus._(r'Finishing');
  static const finished = ContestStatus._(r'Finished');
  static const cancelling = ContestStatus._(r'Cancelling');
  static const cancelled = ContestStatus._(r'Cancelled');
  static const finalising = ContestStatus._(r'Finalising');
  static const finalised = ContestStatus._(r'Finalised');

  /// List of all possible values in this [enum][ContestStatus].
  static const values = <ContestStatus>[
    unknown,
    deleting,
    deleted,
    draft,
    template,
    preparing,
    ready,
    starting,
    active,
    finishing,
    finished,
    cancelling,
    cancelled,
    finalising,
    finalised,
  ];

  static ContestStatus? fromJson(dynamic value) => ContestStatusTypeTransformer().decode(value);

  static List<ContestStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ContestStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ContestStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ContestStatus] to String,
/// and [decode] dynamic data back to [ContestStatus].
class ContestStatusTypeTransformer {
  factory ContestStatusTypeTransformer() => _instance ??= const ContestStatusTypeTransformer._();

  const ContestStatusTypeTransformer._();

  String encode(ContestStatus data) => data.value;

  /// Decodes a [dynamic value][data] to a ContestStatus.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ContestStatus? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Unknown': return ContestStatus.unknown;
        case r'Deleting': return ContestStatus.deleting;
        case r'Deleted': return ContestStatus.deleted;
        case r'Draft': return ContestStatus.draft;
        case r'Template': return ContestStatus.template;
        case r'Preparing': return ContestStatus.preparing;
        case r'Ready': return ContestStatus.ready;
        case r'Starting': return ContestStatus.starting;
        case r'Active': return ContestStatus.active;
        case r'Finishing': return ContestStatus.finishing;
        case r'Finished': return ContestStatus.finished;
        case r'Cancelling': return ContestStatus.cancelling;
        case r'Cancelled': return ContestStatus.cancelled;
        case r'Finalising': return ContestStatus.finalising;
        case r'Finalised': return ContestStatus.finalised;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ContestStatusTypeTransformer] instance.
  static ContestStatusTypeTransformer? _instance;
}


//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

/// The status of competition
class CompetitionStatus {
  /// Instantiate a new enum with the provided [value].
  const CompetitionStatus._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const unknown = CompetitionStatus._(r'Unknown');
  static const deleting = CompetitionStatus._(r'Deleting');
  static const deleted = CompetitionStatus._(r'Deleted');
  static const draft = CompetitionStatus._(r'Draft');
  static const template = CompetitionStatus._(r'Template');
  static const preparing = CompetitionStatus._(r'Preparing');
  static const ready = CompetitionStatus._(r'Ready');
  static const starting = CompetitionStatus._(r'Starting');
  static const active = CompetitionStatus._(r'Active');
  static const finishing = CompetitionStatus._(r'Finishing');
  static const finished = CompetitionStatus._(r'Finished');
  static const cancelling = CompetitionStatus._(r'Cancelling');
  static const cancelled = CompetitionStatus._(r'Cancelled');
  static const finalising = CompetitionStatus._(r'Finalising');
  static const finalised = CompetitionStatus._(r'Finalised');

  /// List of all possible values in this [enum][CompetitionStatus].
  static const values = <CompetitionStatus>[
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

  static CompetitionStatus? fromJson(dynamic value) => CompetitionStatusTypeTransformer().decode(value);

  static List<CompetitionStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CompetitionStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CompetitionStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CompetitionStatus] to String,
/// and [decode] dynamic data back to [CompetitionStatus].
class CompetitionStatusTypeTransformer {
  factory CompetitionStatusTypeTransformer() => _instance ??= const CompetitionStatusTypeTransformer._();

  const CompetitionStatusTypeTransformer._();

  String encode(CompetitionStatus data) => data.value;

  /// Decodes a [dynamic value][data] to a CompetitionStatus.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CompetitionStatus? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Unknown': return CompetitionStatus.unknown;
        case r'Deleting': return CompetitionStatus.deleting;
        case r'Deleted': return CompetitionStatus.deleted;
        case r'Draft': return CompetitionStatus.draft;
        case r'Template': return CompetitionStatus.template;
        case r'Preparing': return CompetitionStatus.preparing;
        case r'Ready': return CompetitionStatus.ready;
        case r'Starting': return CompetitionStatus.starting;
        case r'Active': return CompetitionStatus.active;
        case r'Finishing': return CompetitionStatus.finishing;
        case r'Finished': return CompetitionStatus.finished;
        case r'Cancelling': return CompetitionStatus.cancelling;
        case r'Cancelled': return CompetitionStatus.cancelled;
        case r'Finalising': return CompetitionStatus.finalising;
        case r'Finalised': return CompetitionStatus.finalised;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CompetitionStatusTypeTransformer] instance.
  static CompetitionStatusTypeTransformer? _instance;
}


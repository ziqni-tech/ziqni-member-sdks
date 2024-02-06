//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

class Message {
  /// Returns a new [Message] instance.
  Message({
    required this.id,
    this.spaceName,
    this.created,
    this.customFields = const {},
    this.tags = const [],
    this.metadata = const {},
    this.eventRefType,
    this.eventRefId,
    this.messageType,
    this.subject,
    this.body,
    this.status,
    this.expiry,
    this.memberIds = const [],
    this.memberTags = const [],
  });

  /// 
  String id;

  /// This is the space name which is linked to the account
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? spaceName;

  /// ISO8601 timestamp for when a Model was created. All records are stored in UTC time zone
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? created;

  Map<String, Object> customFields;

  /// A list of id's used to tag models
  List<String> tags;

  Map<String, String> metadata;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EventRefType? eventRefType;

  /// The reference ID of the event object
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? eventRefId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MessageType? messageType;

  /// The title of the message
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subject;

  /// The context of the message
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? body;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MessageStatus? status;

  /// The time that the message will disappear after. ISO8601 timestamp
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? expiry;

  /// The reference ID of the event object
  List<String> memberIds;

  /// 
  List<String> memberTags;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Message &&
    other.id == id &&
    other.spaceName == spaceName &&
    other.created == created &&
    _deepEquality.equals(other.customFields, customFields) &&
    _deepEquality.equals(other.tags, tags) &&
    _deepEquality.equals(other.metadata, metadata) &&
    other.eventRefType == eventRefType &&
    other.eventRefId == eventRefId &&
    other.messageType == messageType &&
    other.subject == subject &&
    other.body == body &&
    other.status == status &&
    other.expiry == expiry &&
    _deepEquality.equals(other.memberIds, memberIds) &&
    _deepEquality.equals(other.memberTags, memberTags);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (spaceName == null ? 0 : spaceName!.hashCode) +
    (created == null ? 0 : created!.hashCode) +
    (customFields.hashCode) +
    (tags.hashCode) +
    (metadata.hashCode) +
    (eventRefType == null ? 0 : eventRefType!.hashCode) +
    (eventRefId == null ? 0 : eventRefId!.hashCode) +
    (messageType == null ? 0 : messageType!.hashCode) +
    (subject == null ? 0 : subject!.hashCode) +
    (body == null ? 0 : body!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (expiry == null ? 0 : expiry!.hashCode) +
    (memberIds.hashCode) +
    (memberTags.hashCode);

  @override
  String toString() => 'Message[id=$id, spaceName=$spaceName, created=$created, customFields=$customFields, tags=$tags, metadata=$metadata, eventRefType=$eventRefType, eventRefId=$eventRefId, messageType=$messageType, subject=$subject, body=$body, status=$status, expiry=$expiry, memberIds=$memberIds, memberTags=$memberTags]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.spaceName != null) {
      json[r'spaceName'] = this.spaceName;
    } else {
      json[r'spaceName'] = null;
    }
    if (this.created != null) {
      json[r'created'] = this.created!.toUtc().toIso8601String();
    } else {
      json[r'created'] = null;
    }
      json[r'customFields'] = this.customFields;
      json[r'tags'] = this.tags;
      json[r'metadata'] = this.metadata;
    if (this.eventRefType != null) {
      json[r'eventRefType'] = this.eventRefType;
    } else {
      json[r'eventRefType'] = null;
    }
    if (this.eventRefId != null) {
      json[r'eventRefId'] = this.eventRefId;
    } else {
      json[r'eventRefId'] = null;
    }
    if (this.messageType != null) {
      json[r'messageType'] = this.messageType;
    } else {
      json[r'messageType'] = null;
    }
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
    if (this.body != null) {
      json[r'body'] = this.body;
    } else {
      json[r'body'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.expiry != null) {
      json[r'expiry'] = this.expiry!.toUtc().toIso8601String();
    } else {
      json[r'expiry'] = null;
    }
      json[r'memberIds'] = this.memberIds;
      json[r'memberTags'] = this.memberTags;
    return json;
  }

  /// Returns a new [Message] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Message? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Message[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Message[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Message(
        id: mapValueOfType<String>(json, r'id')!,
        spaceName: mapValueOfType<String>(json, r'spaceName'),
        created: mapDateTime(json, r'created', r''),
        customFields: mapCastOfType<String, Object>(json, r'customFields') ?? const {},
        tags: json[r'tags'] is Iterable
            ? (json[r'tags'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        metadata: mapCastOfType<String, String>(json, r'metadata') ?? const {},
        eventRefType: EventRefType.fromJson(json[r'eventRefType']),
        eventRefId: mapValueOfType<String>(json, r'eventRefId'),
        messageType: MessageType.fromJson(json[r'messageType']),
        subject: mapValueOfType<String>(json, r'subject'),
        body: mapValueOfType<String>(json, r'body'),
        status: MessageStatus.fromJson(json[r'status']),
        expiry: mapDateTime(json, r'expiry', r''),
        memberIds: json[r'memberIds'] is Iterable
            ? (json[r'memberIds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        memberTags: json[r'memberTags'] is Iterable
            ? (json[r'memberTags'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<Message> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Message>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Message.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Message> mapFromJson(dynamic json) {
    final map = <String, Message>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Message.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Message-objects as value to a dart map
  static Map<String, List<Message>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Message>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Message.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
  };
}


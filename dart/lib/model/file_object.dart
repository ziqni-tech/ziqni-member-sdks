//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

class FileObject {
  /// Returns a new [FileObject] instance.
  FileObject({
    required this.id,
    this.spaceName,
    this.created,
    this.customFields = const {},
    this.tags = const [],
    this.metadata = const {},
    required this.repositoryId,
    required this.name,
    required this.mimeType,
    required this.path,
    required this.parentFolderPath,
    this.uri,
    this.size,
    this.constraints = const [],
  });

  /// Ziqni id of the model
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

  /// The repository identifier this file belongs too
  String repositoryId;

  /// Name of the original file uploaded
  String name;

  /// Mime type of the file. Valid mime types - text/csv or application/vmd.ms-excelor or application/x-directory for directories
  String mimeType;

  /// The name of the attachment within the bucket
  String path;

  /// The folder name containing the attachment within the bucket
  String parentFolderPath;

  /// The uniform resource identifier where the file can be viewed/downloaded
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? uri;

  /// The size of the file
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? size;

  /// Additional constraints, if the value is present it means the
  List<String> constraints;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FileObject &&
    other.id == id &&
    other.spaceName == spaceName &&
    other.created == created &&
    _deepEquality.equals(other.customFields, customFields) &&
    _deepEquality.equals(other.tags, tags) &&
    _deepEquality.equals(other.metadata, metadata) &&
    other.repositoryId == repositoryId &&
    other.name == name &&
    other.mimeType == mimeType &&
    other.path == path &&
    other.parentFolderPath == parentFolderPath &&
    other.uri == uri &&
    other.size == size &&
    _deepEquality.equals(other.constraints, constraints);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (spaceName == null ? 0 : spaceName!.hashCode) +
    (created == null ? 0 : created!.hashCode) +
    (customFields.hashCode) +
    (tags.hashCode) +
    (metadata.hashCode) +
    (repositoryId.hashCode) +
    (name.hashCode) +
    (mimeType.hashCode) +
    (path.hashCode) +
    (parentFolderPath.hashCode) +
    (uri == null ? 0 : uri!.hashCode) +
    (size == null ? 0 : size!.hashCode) +
    (constraints.hashCode);

  @override
  String toString() => 'FileObject[id=$id, spaceName=$spaceName, created=$created, customFields=$customFields, tags=$tags, metadata=$metadata, repositoryId=$repositoryId, name=$name, mimeType=$mimeType, path=$path, parentFolderPath=$parentFolderPath, uri=$uri, size=$size, constraints=$constraints]';

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
      json[r'repositoryId'] = this.repositoryId;
      json[r'name'] = this.name;
      json[r'mimeType'] = this.mimeType;
      json[r'path'] = this.path;
      json[r'parentFolderPath'] = this.parentFolderPath;
    if (this.uri != null) {
      json[r'uri'] = this.uri;
    } else {
      json[r'uri'] = null;
    }
    if (this.size != null) {
      json[r'size'] = this.size;
    } else {
      json[r'size'] = null;
    }
      json[r'constraints'] = this.constraints;
    return json;
  }

  /// Returns a new [FileObject] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FileObject? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FileObject[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FileObject[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FileObject(
        id: mapValueOfType<String>(json, r'id')!,
        spaceName: mapValueOfType<String>(json, r'spaceName'),
        created: mapDateTime(json, r'created', r''),
        customFields: mapCastOfType<String, Object>(json, r'customFields') ?? const {},
        tags: json[r'tags'] is Iterable
            ? (json[r'tags'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        metadata: mapCastOfType<String, String>(json, r'metadata') ?? const {},
        repositoryId: mapValueOfType<String>(json, r'repositoryId')!,
        name: mapValueOfType<String>(json, r'name')!,
        mimeType: mapValueOfType<String>(json, r'mimeType')!,
        path: mapValueOfType<String>(json, r'path')!,
        parentFolderPath: mapValueOfType<String>(json, r'parentFolderPath')!,
        uri: mapValueOfType<String>(json, r'uri'),
        size: mapValueOfType<int>(json, r'size'),
        constraints: json[r'constraints'] is Iterable
            ? (json[r'constraints'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<FileObject> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FileObject>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FileObject.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FileObject> mapFromJson(dynamic json) {
    final map = <String, FileObject>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FileObject.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FileObject-objects as value to a dart map
  static Map<String, List<FileObject>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FileObject>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FileObject.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'repositoryId',
    'name',
    'mimeType',
    'path',
    'parentFolderPath',
  };
}


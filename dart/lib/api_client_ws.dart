//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars


part of ziqni.member.api;

class ApiClientWs {

  ApiClientWs({this.basePath = 'wss://member-api.ziqni.com/ws/websocket'});

  final String basePath;
  late StompClient client;
  late Completer<ApiClientWs> isReady;

  Future<ApiClientWs> start(String token) async {

    client = StompClient(
        config: StompConfig(
          url: 'wss://member-api.ziqni.com/ws/websocket',
          onConnect: onConnectCallback,
          onWebSocketError: (dynamic error) => print('+++++ onWebSocketError ::: $error'),
          // onDebugMessage: (dynamic frame) => print('+++++ onDebugMessage ::: ' + frame.toString()), // Very noisy
          onDisconnect: (dynamic frame) => print('+++++ onDisconnect ::: $frame'),
          onWebSocketDone: () => print('+++++ onWebSocketDone ::: Websocket is done'),
          onStompError: (dynamic frame) => print('+++++ onStompError ::: ' + frame.body),
          onUnhandledFrame: (dynamic frame) => print('+++++ onUnhandledFrame ::: ' + frame.body),
          onUnhandledMessage: (dynamic frame) => print('+++++ onUnhandledMessage ::: ' + frame.body),
          onUnhandledReceipt: (dynamic frame) => print('+++++ onUnhandledReceipt ::: ' + frame.body),
          stompConnectHeaders: {
            'login': username,
            'passcode': token  },
        ));


    client.activate();
    isReady = Completer<ApiClientWs>();
    return isReady.future;
  }

  void onConnectCallback(StompFrame connectFrame) {
    print('+++++ Websocket connected to $basePath');
    subscribe();
    defaultApiClientWs = this;
    isReady.complete(this);
  }

  void subscribe() {
    client.subscribe(destination: '/user/queue/rpc-results', headers: {}, callback: handleRpcResultsCallbacks );
    client.subscribe(destination: '/user/queue/callbacks', headers: {}, callback: handleGeneralCallbacks );
  }

  void handleRpcResultsCallbacks(StompFrame frame){
    var messageId = frame.headers[message_id_header];

    if(messageId != null) {
      var stompMessageCompleter = messages[messageId];

      if(stompMessageCompleter != null) {
        messages.remove(messageId);
        stompMessageCompleter.completed(frame);
      }
    }
  }

  void handleGeneralCallbacks(StompFrame frame){
    print('+++++ user/queue/callbacks ::: ');
    print(frame);
  }

  Completer<TResponse> send<TResponse extends Object>({required String destination, required Map<String, dynamic> body, required String messageResponseType}) {
    final stompMessageCompleter = StompMessageCompleter<TResponse>(messageResponseType); // Create a new completer
    final bodyJson = json.encode(body); // Serialize the request body
    final messageId = uuid.v1(); // Generate a v1 (time-based) id
    messages.putIfAbsent(messageId, () =>  stompMessageCompleter); // Add the completer to the messages map
    client.send(destination: destination, body: bodyJson, headers: { message_id_header: messageId }); // Send the request
    return stompMessageCompleter.completer; // Return the completer future
  }



  Future<dynamic> deserializeAsync(String value, String targetType, {bool growable = false,}) async =>
      // ignore: deprecated_member_use_from_same_package
  deserialize(value, targetType, growable: growable);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use deserializeAsync() instead.')
  dynamic deserialize(String value, String targetType, {bool growable = false,}) {
    // Remove all spaces. Necessary for regular expressions as well.
    targetType = targetType.replaceAll(' ', ''); // ignore: parameter_assignments

    // If the expected target type is String, nothing to do...
    return targetType == 'String'
        ? value
        : fromJson(json.decode(value), targetType, growable: growable);
  }

  Future<String> serializeAsync(Object? value) async => value == null ? '' : json.encode(value);

  /// Returns a native instance of an OpenAPI class matching the [specified type][targetType].
  static dynamic fromJson(dynamic value, String targetType, {bool growable = false,}) {
    try {
      switch (targetType) {
        case 'String':
          return value is String ? value : value.toString();
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'bool':
          if (value is bool) {
            return value;
          }
          final valueString = '$value'.toLowerCase();
          return valueString == 'true' || valueString == '1';
        case 'DateTime':
          return value is DateTime ? value : DateTime.tryParse(value);
        case 'Achievement':
          return Achievement.fromJson(value);
        case 'AchievementFilter':
          return AchievementFilter.fromJson(value);
        case 'AchievementRequest':
          return AchievementRequest.fromJson(value);
        case 'AchievementResponse':
          return AchievementResponse.fromJson(value);
        case 'ActionTypeAdjustmentFactor':
          return ActionTypeAdjustmentFactor.fromJson(value);
        case 'Award':
          return Award.fromJson(value);
        case 'AwardFilter':
          return AwardFilter.fromJson(value);
        case 'AwardRequest':
          return AwardRequest.fromJson(value);
        case 'AwardResponse':
          return AwardResponse.fromJson(value);
        case 'AwardStatus':
          return AwardStatusTypeTransformer().decode(value);
        case 'CallbackEntry':
          return CallbackEntry.fromJson(value);
        case 'CallbacksResponse':
          return CallbacksResponse.fromJson(value);
        case 'ClaimAwardRequest':
          return ClaimAwardRequest.fromJson(value);
        case 'Competition':
          return Competition.fromJson(value);
        case 'CompetitionFilter':
          return CompetitionFilter.fromJson(value);
        case 'CompetitionRequest':
          return CompetitionRequest.fromJson(value);
        case 'CompetitionResponse':
          return CompetitionResponse.fromJson(value);
        case 'CompetitionStatus':
          return CompetitionStatusTypeTransformer().decode(value);
        case 'CompetitionType':
          return CompetitionTypeTypeTransformer().decode(value);
        case 'Contest':
          return Contest.fromJson(value);
        case 'ContestFilter':
          return ContestFilter.fromJson(value);
        case 'ContestReduced':
          return ContestReduced.fromJson(value);
        case 'ContestRequest':
          return ContestRequest.fromJson(value);
        case 'ContestResponse':
          return ContestResponse.fromJson(value);
        case 'ContestStatus':
          return ContestStatusTypeTransformer().decode(value);
        case 'CustomFields':
          return CustomFields.fromJson(value);
        case 'DateRange':
          return DateRange.fromJson(value);
        case 'Dependancy':
          return Dependancy.fromJson(value);
        case 'DependantOn':
          return DependantOn.fromJson(value);
        case 'EntityChanged':
          return EntityChanged.fromJson(value);
        case 'EntityFilter':
          return EntityFilter.fromJson(value);
        case 'EntityGraph':
          return EntityGraph.fromJson(value);
        case 'EntityGraphEdge':
          return EntityGraphEdge.fromJson(value);
        case 'EntityGraphEdgeType':
          return EntityGraphEdgeTypeTypeTransformer().decode(value);
        case 'EntityGraphNode':
          return EntityGraphNode.fromJson(value);
        case 'EntityGraphRequest':
          return EntityGraphRequest.fromJson(value);
        case 'EntityGraphResponse':
          return EntityGraphResponse.fromJson(value);
        case 'EntityGraphResult':
          return EntityGraphResult.fromJson(value);
        case 'EntityGraphTraversal':
          return EntityGraphTraversalTypeTransformer().decode(value);
        case 'EntityRequest':
          return EntityRequest.fromJson(value);
        case 'EntityStateChanged':
          return EntityStateChanged.fromJson(value);
        case 'EntityType':
          return EntityTypeTypeTransformer().decode(value);
        case 'Error':
          return Error.fromJson(value);
        case 'EventRefType':
          return EventRefTypeTypeTransformer().decode(value);
        case 'FieldType':
          return FieldTypeTypeTransformer().decode(value);
        case 'File':
          return File.fromJson(value);
        case 'FileObject':
          return FileObject.fromJson(value);
        case 'FileObjectResponse':
          return FileObjectResponse.fromJson(value);
        case 'FileRequest':
          return FileRequest.fromJson(value);
        case 'FileResponse':
          return FileResponse.fromJson(value);
        case 'GridLocation':
          return GridLocation.fromJson(value);
        case 'InstantWin':
          return InstantWin.fromJson(value);
        case 'InstantWinFilter':
          return InstantWinFilter.fromJson(value);
        case 'InstantWinPlayOutcome':
          return InstantWinPlayOutcome.fromJson(value);
        case 'InstantWinPlayRequest':
          return InstantWinPlayRequest.fromJson(value);
        case 'InstantWinPlayResponse':
          return InstantWinPlayResponse.fromJson(value);
        case 'InstantWinRequest':
          return InstantWinRequest.fromJson(value);
        case 'InstantWinResponse':
          return InstantWinResponse.fromJson(value);
        case 'InstantWinResult':
          return InstantWinResult.fromJson(value);
        case 'InstantWinTile':
          return InstantWinTile.fromJson(value);
        case 'Leaderboard':
          return Leaderboard.fromJson(value);
        case 'LeaderboardEntry':
          return LeaderboardEntry.fromJson(value);
        case 'LeaderboardFilter':
          return LeaderboardFilter.fromJson(value);
        case 'LeaderboardMember':
          return LeaderboardMember.fromJson(value);
        case 'LeaderboardResponse':
          return LeaderboardResponse.fromJson(value);
        case 'LeaderboardSubscriptionRequest':
          return LeaderboardSubscriptionRequest.fromJson(value);
        case 'ManageOptinRequest':
          return ManageOptinRequest.fromJson(value);
        case 'Member':
          return Member.fromJson(value);
        case 'MemberRequest':
          return MemberRequest.fromJson(value);
        case 'MemberResponse':
          return MemberResponse.fromJson(value);
        case 'MemberType':
          return MemberTypeTypeTransformer().decode(value);
        case 'Message':
          return Message.fromJson(value);
        case 'MessageFilter':
          return MessageFilter.fromJson(value);
        case 'MessageRequest':
          return MessageRequest.fromJson(value);
        case 'MessageResponse':
          return MessageResponse.fromJson(value);
        case 'MessageStatus':
          return MessageStatusTypeTransformer().decode(value);
        case 'MessageType':
          return MessageTypeTypeTransformer().decode(value);
        case 'MetaBasic':
          return MetaBasic.fromJson(value);
        case 'MetaInfo':
          return MetaInfo.fromJson(value);
        case 'ModelDefault':
          return ModelDefault.fromJson(value);
        case 'NumberRange':
          return NumberRange.fromJson(value);
        case 'OptInResponse':
          return OptInResponse.fromJson(value);
        case 'OptInStatesRequest':
          return OptInStatesRequest.fromJson(value);
        case 'OptinAction':
          return OptinActionTypeTransformer().decode(value);
        case 'OptinStatesFilter':
          return OptinStatesFilter.fromJson(value);
        case 'OptinStatus':
          return OptinStatus.fromJson(value);
        case 'OptionalModelFields':
          return OptionalModelFields.fromJson(value);
        case 'Product':
          return Product.fromJson(value);
        case 'ProductFilter':
          return ProductFilter.fromJson(value);
        case 'ProductReduced':
          return ProductReduced.fromJson(value);
        case 'ProductRequest':
          return ProductRequest.fromJson(value);
        case 'ProductResponse':
          return ProductResponse.fromJson(value);
        case 'ProxyMessage':
          return ProxyMessage.fromJson(value);
        case 'QueryMultipleFields':
          return QueryMultipleFields.fromJson(value);
        case 'QuerySortBy':
          return QuerySortBy.fromJson(value);
        case 'RangeQuery':
          return RangeQuery.fromJson(value);
        case 'RankingStrategy':
          return RankingStrategy.fromJson(value);
        case 'ResponseMeta':
          return ResponseMeta.fromJson(value);
        case 'Reward':
          return Reward.fromJson(value);
        case 'RewardReduced':
          return RewardReduced.fromJson(value);
        case 'RewardRequest':
          return RewardRequest.fromJson(value);
        case 'RewardResponse':
          return RewardResponse.fromJson(value);
        case 'RewardTypeReduced':
          return RewardTypeReduced.fromJson(value);
        case 'RoundType':
          return RoundTypeTypeTransformer().decode(value);
        case 'Rule':
          return Rule.fromJson(value);
        case 'RuleArgument':
          return RuleArgument.fromJson(value);
        case 'RuleExpression':
          return RuleExpression.fromJson(value);
        case 'RuleRequest':
          return RuleRequest.fromJson(value);
        case 'RuleResponse':
          return RuleResponse.fromJson(value);
        case 'RuleRoutine':
          return RuleRoutine.fromJson(value);
        case 'ScheduleType':
          return ScheduleTypeTypeTransformer().decode(value);
        case 'Scheduling':
          return Scheduling.fromJson(value);
        case 'ScoringStrategy':
          return ScoringStrategy.fromJson(value);
        case 'SortOrder':
          return SortOrderTypeTransformer().decode(value);
        case 'Strategy':
          return Strategy.fromJson(value);
        case 'StrategyType':
          return StrategyTypeTypeTransformer().decode(value);
        case 'UnsubscribeRequest':
          return UnsubscribeRequest.fromJson(value);
        default:
          dynamic match;
          if (value is List && (match = _regList.firstMatch(targetType)?.group(1)) != null) {
            return value
                .map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,))
                .toList(growable: growable);
          }
          if (value is Set && (match = _regSet.firstMatch(targetType)?.group(1)) != null) {
            return value
                .map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,))
                .toSet();
          }
          if (value is Map && (match = _regMap.firstMatch(targetType)?.group(1)) != null) {
            return Map<String, dynamic>.fromIterables(
              value.keys.cast<String>(),
              value.values.map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,)),
            );
          }
      }
    } on Exception catch (error, trace) {
      throw ApiException.withInner(HttpStatus.internalServerError, 'Exception during deserialization.', error, trace,);
    }
    throw ApiException(HttpStatus.internalServerError, 'Could not find a suitable class for deserialization',);
  }
}

/// Primarily intended for use in an isolate.
Future<String> serializeAsync(Object? value) async => value == null ? '' : json.encode(value);

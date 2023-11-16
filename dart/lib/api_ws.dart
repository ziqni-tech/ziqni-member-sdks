//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library ziqni.member.api;

import 'dart:collection';
import 'dart:ffi';

import 'package:stomp_dart_client/stomp.dart';
import 'package:stomp_dart_client/stomp_config.dart';
import 'package:stomp_dart_client/stomp_frame.dart';

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:uuid/uuid.dart';
import 'package:collection/collection.dart';
import 'package:ziqni_member_sdk/stomp_message_completer.dart';

import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client_ws.dart';
//part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
//part 'auth/authentication.dart';
//part 'auth/api_key_auth.dart';
//part 'auth/oauth.dart';
//part 'auth/http_basic_auth.dart';
//part 'auth/http_bearer_auth.dart';

part 'api/achievements_api_ws.dart';
part 'api/awards_api_ws.dart';
part 'api/callbacks_api_ws.dart';
part 'api/competitions_api_ws.dart';
part 'api/contests_api_ws.dart';
part 'api/files_api_ws.dart';
part 'api/graphs_api_ws.dart';
part 'api/heartbeat_api_ws.dart';
part 'api/instant_wins_api_ws.dart';
part 'api/leaderboard_api_ws.dart';
part 'api/members_api_ws.dart';
part 'api/messages_api_ws.dart';
part 'api/opt_in_api_ws.dart';
part 'api/products_api_ws.dart';
part 'api/rewards_api_ws.dart';
part 'api/rules_api_ws.dart';

part 'model/achievement.dart';
part 'model/achievement_filter.dart';
part 'model/achievement_request.dart';
part 'model/achievement_response.dart';
part 'model/action_type_adjustment_factor.dart';
part 'model/award.dart';
part 'model/award_filter.dart';
part 'model/award_request.dart';
part 'model/award_response.dart';
part 'model/award_status.dart';
part 'model/callback_entry.dart';
part 'model/callbacks_response.dart';
part 'model/claim_award_request.dart';
part 'model/competition.dart';
part 'model/competition_filter.dart';
part 'model/competition_request.dart';
part 'model/competition_response.dart';
part 'model/competition_status.dart';
part 'model/competition_type.dart';
part 'model/contest.dart';
part 'model/contest_filter.dart';
part 'model/contest_reduced.dart';
part 'model/contest_request.dart';
part 'model/contest_response.dart';
part 'model/contest_status.dart';
part 'model/custom_fields.dart';
part 'model/date_range.dart';
part 'model/dependancy.dart';
part 'model/dependant_on.dart';
part 'model/entity_changed.dart';
part 'model/entity_filter.dart';
part 'model/entity_graph.dart';
part 'model/entity_graph_edge.dart';
part 'model/entity_graph_edge_type.dart';
part 'model/entity_graph_node.dart';
part 'model/entity_graph_request.dart';
part 'model/entity_graph_response.dart';
part 'model/entity_graph_result.dart';
part 'model/entity_graph_traversal.dart';
part 'model/entity_request.dart';
part 'model/entity_state_changed.dart';
part 'model/entity_type.dart';
part 'model/error.dart';
part 'model/event_ref_type.dart';
part 'model/field_type.dart';
part 'model/file.dart';
part 'model/file_object.dart';
part 'model/file_object_response.dart';
part 'model/file_request.dart';
part 'model/file_response.dart';
part 'model/grid_location.dart';
part 'model/instant_win.dart';
part 'model/instant_win_filter.dart';
part 'model/instant_win_play_outcome.dart';
part 'model/instant_win_play_request.dart';
part 'model/instant_win_play_response.dart';
part 'model/instant_win_request.dart';
part 'model/instant_win_response.dart';
part 'model/instant_win_result.dart';
part 'model/instant_win_tile.dart';
part 'model/leaderboard.dart';
part 'model/leaderboard_entry.dart';
part 'model/leaderboard_filter.dart';
part 'model/leaderboard_member.dart';
part 'model/leaderboard_response.dart';
part 'model/leaderboard_subscription_request.dart';
part 'model/manage_optin_request.dart';
part 'model/member.dart';
part 'model/member_request.dart';
part 'model/member_response.dart';
part 'model/member_type.dart';
part 'model/message.dart';
part 'model/message_filter.dart';
part 'model/message_request.dart';
part 'model/message_response.dart';
part 'model/message_status.dart';
part 'model/message_type.dart';
part 'model/meta_basic.dart';
part 'model/meta_info.dart';
part 'model/model_default.dart';
part 'model/number_range.dart';
part 'model/opt_in_response.dart';
part 'model/opt_in_states_request.dart';
part 'model/optin_action.dart';
part 'model/optin_states_filter.dart';
part 'model/optin_status.dart';
part 'model/optional_model_fields.dart';
part 'model/product.dart';
part 'model/product_filter.dart';
part 'model/product_reduced.dart';
part 'model/product_request.dart';
part 'model/product_response.dart';
part 'model/proxy_message.dart';
part 'model/query_multiple_fields.dart';
part 'model/query_sort_by.dart';
part 'model/range_query.dart';
part 'model/ranking_strategy.dart';
part 'model/response_meta.dart';
part 'model/reward.dart';
part 'model/reward_reduced.dart';
part 'model/reward_request.dart';
part 'model/reward_response.dart';
part 'model/reward_type_reduced.dart';
part 'model/round_type.dart';
part 'model/rule.dart';
part 'model/rule_argument.dart';
part 'model/rule_expression.dart';
part 'model/rule_request.dart';
part 'model/rule_response.dart';
part 'model/rule_routine.dart';
part 'model/schedule_type.dart';
part 'model/scheduling.dart';
part 'model/scoring_strategy.dart';
part 'model/sort_order.dart';
part 'model/strategy.dart';
part 'model/strategy_type.dart';
part 'model/unsubscribe_request.dart';


/// An [ApiClient] instance that uses the default values obtained from
/// the OpenAPI specification file.
var defaultApiClientWs = ApiClientWs();

const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
const _deepEquality = DeepCollectionEquality();
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

bool _isEpochMarker(String? pattern) => pattern == _dateEpochMarker || pattern == '/$_dateEpochMarker/';

final uuid = Uuid();
final username = 'Bearer';
final message_id_header = 'message-id';
final Map<String, StompMessageCompleter<Object>> messages = HashMap();

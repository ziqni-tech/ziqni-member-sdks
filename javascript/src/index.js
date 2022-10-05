/**
 * ZIQNI Member API
 * The ZIQNI Member-API is the primary resource used to build services and widgets for your members [customers, players, patients, etc]. The service is Stomp websokets with SOCK.js even though the system is decribed using OpenApi schema for convenience.
 *
 * The version of the OpenAPI document: 1.0.0
 *
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */


import ApiClient from './ApiClient';
import Achievement from './model/Achievement';
import AchievementAllOf from './model/AchievementAllOf';
import AchievementFilter from './model/AchievementFilter';
import AchievementRequest from './model/AchievementRequest';
import AchievementResponse from './model/AchievementResponse';
import Award from './model/Award';
import AwardAllOf from './model/AwardAllOf';
import AwardFilter from './model/AwardFilter';
import AwardRequest from './model/AwardRequest';
import AwardResponse from './model/AwardResponse';
import ClaimAwardRequest from './model/ClaimAwardRequest';
import Competition from './model/Competition';
import CompetitionAllOf from './model/CompetitionAllOf';
import CompetitionFilter from './model/CompetitionFilter';
import CompetitionRequest from './model/CompetitionRequest';
import CompetitionResponse from './model/CompetitionResponse';
import CompetitionStatus from './model/CompetitionStatus';
import CompetitionType from './model/CompetitionType';
import Contest from './model/Contest';
import ContestAllOf from './model/ContestAllOf';
import ContestFilter from './model/ContestFilter';
import ContestReduced from './model/ContestReduced';
import ContestRequest from './model/ContestRequest';
import ContestResponse from './model/ContestResponse';
import ContestStatus from './model/ContestStatus';
import DateRange from './model/DateRange';
import Dependancy from './model/Dependancy';
import DependantOn from './model/DependantOn';
import EntityChangeSubscription from './model/EntityChangeSubscription';
import EntityChangeSubscriptionRequest from './model/EntityChangeSubscriptionRequest';
import EntityChangeSubscriptionResponse from './model/EntityChangeSubscriptionResponse';
import EntityChanged from './model/EntityChanged';
import EntityFilter from './model/EntityFilter';
import EntityRequest from './model/EntityRequest';
import EntityStateChanged from './model/EntityStateChanged';
import EntityType from './model/EntityType';
import Error from './model/Error';
import EventRefType from './model/EventRefType';
import FieldType from './model/FieldType';
import File from './model/File';
import FileRequest from './model/FileRequest';
import FileResponse from './model/FileResponse';
import LeaderboardFilter from './model/LeaderboardFilter';
import LeaderboardSubscriptionRequest from './model/LeaderboardSubscriptionRequest';
import ManageOptinRequest from './model/ManageOptinRequest';
import Member from './model/Member';
import MemberAllOf from './model/MemberAllOf';
import MemberRequest from './model/MemberRequest';
import MemberResponse from './model/MemberResponse';
import MemberSessionRequest from './model/MemberSessionRequest';
import MemberSessionResponse from './model/MemberSessionResponse';
import MemberType from './model/MemberType';
import Message from './model/Message';
import MessageAllOf from './model/MessageAllOf';
import MessageRequest from './model/MessageRequest';
import MessageResponse from './model/MessageResponse';
import MessageStatus from './model/MessageStatus';
import MessageType from './model/MessageType';
import MetaBasic from './model/MetaBasic';
import MetaInfo from './model/MetaInfo';
import ModelDefault from './model/ModelDefault';
import NumberRange from './model/NumberRange';
import OptInRequestStatus from './model/OptInRequestStatus';
import OptInResponse from './model/OptInResponse';
import OptinAction from './model/OptinAction';
import OptionalModelFields from './model/OptionalModelFields';
import ProductReduced from './model/ProductReduced';
import Proxy from './model/Proxy';
import ProxyRequest from './model/ProxyRequest';
import ProxyResponse from './model/ProxyResponse';
import QueryMultipleFields from './model/QueryMultipleFields';
import QuerySortBy from './model/QuerySortBy';
import RangeQuery from './model/RangeQuery';
import RankingStrategy from './model/RankingStrategy';
import ResponseMeta from './model/ResponseMeta';
import Reward from './model/Reward';
import RewardReduced from './model/RewardReduced';
import RewardRequest from './model/RewardRequest';
import RewardResponse from './model/RewardResponse';
import RewardTypeReduced from './model/RewardTypeReduced';
import RoundType from './model/RoundType';
import Rule from './model/Rule';
import RuleArgument from './model/RuleArgument';
import RuleExpression from './model/RuleExpression';
import RuleRequest from './model/RuleRequest';
import RuleResponse from './model/RuleResponse';
import RuleRoutine from './model/RuleRoutine';
import ScheduleType from './model/ScheduleType';
import Scheduling from './model/Scheduling';
import ScoringStrategy from './model/ScoringStrategy';
import SortOrder from './model/SortOrder';
import Strategy from './model/Strategy';
import StrategyType from './model/StrategyType';
import UnsubscribeRequest from './model/UnsubscribeRequest';
import AchievementsApiWs from './api/AchievementsApiWs';
import AwardsApiWs from './api/AwardsApiWs';
import CompetitionsApiWs from './api/CompetitionsApiWs';
import ContestsApiWs from './api/ContestsApiWs';
import EntityChangesApiWs from './api/EntityChangesApiWs';
import FilesApiWs from './api/FilesApiWs';
import LeaderboardApiWs from './api/LeaderboardApiWs';
import MembersApiWs from './api/MembersApiWs';
import MessagesApiWs from './api/MessagesApiWs';
import OptInApiWs from './api/OptInApiWs';
import RewardsApiWs from './api/RewardsApiWs';
import RulesApiWs from './api/RulesApiWs';
import ApiClientStomp from './ApiClientStomp';


/**
* The_ZIQNI_Member_API_is_the_primary_resource_used_to_build_services_and_widgets_for_your_members__customers_players_patients_etc__The_service_is_Stomp_websokets_with_SOCK_js_even_though_the_system_is_decribed_using_OpenApi_schema_for_convenience_.<br>
* The <code>index</code> module provides access to constructors for all the classes which comprise the public API.
* <p>
* An AMD (recommended!) or CommonJS application will generally do something equivalent to the following:
* <pre>
* var ZiqniMemberApi = require('index'); // See note below*.
* var xxxSvc = new ZiqniMemberApi.XxxApi(); // Allocate the API class we're going to use.
* var yyyModel = new ZiqniMemberApi.Yyy(); // Construct a model instance.
* yyyModel.someProperty = 'someValue';
* ...
* var zzz = xxxSvc.doSomething(yyyModel); // Invoke the service.
* ...
* </pre>
* <em>*NOTE: For a top-level AMD script, use require(['index'], function(){...})
* and put the application logic within the callback function.</em>
* </p>
* <p>
* A non-AMD browser application (discouraged) might do something like this:
* <pre>
* var xxxSvc = new ZiqniMemberApi.XxxApi(); // Allocate the API class we're going to use.
* var yyy = new ZiqniMemberApi.Yyy(); // Construct a model instance.
* yyyModel.someProperty = 'someValue';
* ...
* var zzz = xxxSvc.doSomething(yyyModel); // Invoke the service.
* ...
* </pre>
* </p>
* @module index
* @version 1.0.0
*/
export {
    /**
     * The ApiClient constructor.
     * @property {module:ApiClient}
     */
    ApiClient,

    /**
     * The Achievement model constructor.
     * @property {module:model/Achievement}
     */
    Achievement,

    /**
     * The AchievementAllOf model constructor.
     * @property {module:model/AchievementAllOf}
     */
    AchievementAllOf,

    /**
     * The AchievementFilter model constructor.
     * @property {module:model/AchievementFilter}
     */
    AchievementFilter,

    /**
     * The AchievementRequest model constructor.
     * @property {module:model/AchievementRequest}
     */
    AchievementRequest,

    /**
     * The AchievementResponse model constructor.
     * @property {module:model/AchievementResponse}
     */
    AchievementResponse,

    /**
     * The Award model constructor.
     * @property {module:model/Award}
     */
    Award,

    /**
     * The AwardAllOf model constructor.
     * @property {module:model/AwardAllOf}
     */
    AwardAllOf,

    /**
     * The AwardFilter model constructor.
     * @property {module:model/AwardFilter}
     */
    AwardFilter,

    /**
     * The AwardRequest model constructor.
     * @property {module:model/AwardRequest}
     */
    AwardRequest,

    /**
     * The AwardResponse model constructor.
     * @property {module:model/AwardResponse}
     */
    AwardResponse,

    /**
     * The ClaimAwardRequest model constructor.
     * @property {module:model/ClaimAwardRequest}
     */
    ClaimAwardRequest,

    /**
     * The Competition model constructor.
     * @property {module:model/Competition}
     */
    Competition,

    /**
     * The CompetitionAllOf model constructor.
     * @property {module:model/CompetitionAllOf}
     */
    CompetitionAllOf,

    /**
     * The CompetitionFilter model constructor.
     * @property {module:model/CompetitionFilter}
     */
    CompetitionFilter,

    /**
     * The CompetitionRequest model constructor.
     * @property {module:model/CompetitionRequest}
     */
    CompetitionRequest,

    /**
     * The CompetitionResponse model constructor.
     * @property {module:model/CompetitionResponse}
     */
    CompetitionResponse,

    /**
     * The CompetitionStatus model constructor.
     * @property {module:model/CompetitionStatus}
     */
    CompetitionStatus,

    /**
     * The CompetitionType model constructor.
     * @property {module:model/CompetitionType}
     */
    CompetitionType,

    /**
     * The Contest model constructor.
     * @property {module:model/Contest}
     */
    Contest,

    /**
     * The ContestAllOf model constructor.
     * @property {module:model/ContestAllOf}
     */
    ContestAllOf,

    /**
     * The ContestFilter model constructor.
     * @property {module:model/ContestFilter}
     */
    ContestFilter,

    /**
     * The ContestReduced model constructor.
     * @property {module:model/ContestReduced}
     */
    ContestReduced,

    /**
     * The ContestRequest model constructor.
     * @property {module:model/ContestRequest}
     */
    ContestRequest,

    /**
     * The ContestResponse model constructor.
     * @property {module:model/ContestResponse}
     */
    ContestResponse,

    /**
     * The ContestStatus model constructor.
     * @property {module:model/ContestStatus}
     */
    ContestStatus,

    /**
     * The DateRange model constructor.
     * @property {module:model/DateRange}
     */
    DateRange,

    /**
     * The Dependancy model constructor.
     * @property {module:model/Dependancy}
     */
    Dependancy,

    /**
     * The DependantOn model constructor.
     * @property {module:model/DependantOn}
     */
    DependantOn,

    /**
     * The EntityChangeSubscription model constructor.
     * @property {module:model/EntityChangeSubscription}
     */
    EntityChangeSubscription,

    /**
     * The EntityChangeSubscriptionRequest model constructor.
     * @property {module:model/EntityChangeSubscriptionRequest}
     */
    EntityChangeSubscriptionRequest,

    /**
     * The EntityChangeSubscriptionResponse model constructor.
     * @property {module:model/EntityChangeSubscriptionResponse}
     */
    EntityChangeSubscriptionResponse,

    /**
     * The EntityChanged model constructor.
     * @property {module:model/EntityChanged}
     */
    EntityChanged,

    /**
     * The EntityFilter model constructor.
     * @property {module:model/EntityFilter}
     */
    EntityFilter,

    /**
     * The EntityRequest model constructor.
     * @property {module:model/EntityRequest}
     */
    EntityRequest,

    /**
     * The EntityStateChanged model constructor.
     * @property {module:model/EntityStateChanged}
     */
    EntityStateChanged,

    /**
     * The EntityType model constructor.
     * @property {module:model/EntityType}
     */
    EntityType,

    /**
     * The Error model constructor.
     * @property {module:model/Error}
     */
    Error,

    /**
     * The EventRefType model constructor.
     * @property {module:model/EventRefType}
     */
    EventRefType,

    /**
     * The FieldType model constructor.
     * @property {module:model/FieldType}
     */
    FieldType,

    /**
     * The File model constructor.
     * @property {module:model/File}
     */
    File,

    /**
     * The FileRequest model constructor.
     * @property {module:model/FileRequest}
     */
    FileRequest,

    /**
     * The FileResponse model constructor.
     * @property {module:model/FileResponse}
     */
    FileResponse,

    /**
     * The LeaderboardFilter model constructor.
     * @property {module:model/LeaderboardFilter}
     */
    LeaderboardFilter,

    /**
     * The LeaderboardSubscriptionRequest model constructor.
     * @property {module:model/LeaderboardSubscriptionRequest}
     */
    LeaderboardSubscriptionRequest,

    /**
     * The ManageOptinRequest model constructor.
     * @property {module:model/ManageOptinRequest}
     */
    ManageOptinRequest,

    /**
     * The Member model constructor.
     * @property {module:model/Member}
     */
    Member,

    /**
     * The MemberAllOf model constructor.
     * @property {module:model/MemberAllOf}
     */
    MemberAllOf,

    /**
     * The MemberRequest model constructor.
     * @property {module:model/MemberRequest}
     */
    MemberRequest,

    /**
     * The MemberResponse model constructor.
     * @property {module:model/MemberResponse}
     */
    MemberResponse,

    /**
     * The MemberSessionRequest model constructor.
     * @property {module:model/MemberSessionRequest}
     */
    MemberSessionRequest,

    /**
     * The MemberSessionResponse model constructor.
     * @property {module:model/MemberSessionResponse}
     */
    MemberSessionResponse,

    /**
     * The MemberType model constructor.
     * @property {module:model/MemberType}
     */
    MemberType,

    /**
     * The Message model constructor.
     * @property {module:model/Message}
     */
    Message,

    /**
     * The MessageAllOf model constructor.
     * @property {module:model/MessageAllOf}
     */
    MessageAllOf,

    /**
     * The MessageRequest model constructor.
     * @property {module:model/MessageRequest}
     */
    MessageRequest,

    /**
     * The MessageResponse model constructor.
     * @property {module:model/MessageResponse}
     */
    MessageResponse,

    /**
     * The MessageStatus model constructor.
     * @property {module:model/MessageStatus}
     */
    MessageStatus,

    /**
     * The MessageType model constructor.
     * @property {module:model/MessageType}
     */
    MessageType,

    /**
     * The MetaBasic model constructor.
     * @property {module:model/MetaBasic}
     */
    MetaBasic,

    /**
     * The MetaInfo model constructor.
     * @property {module:model/MetaInfo}
     */
    MetaInfo,

    /**
     * The ModelDefault model constructor.
     * @property {module:model/ModelDefault}
     */
    ModelDefault,

    /**
     * The NumberRange model constructor.
     * @property {module:model/NumberRange}
     */
    NumberRange,

    /**
     * The OptInRequestStatus model constructor.
     * @property {module:model/OptInRequestStatus}
     */
    OptInRequestStatus,

    /**
     * The OptInResponse model constructor.
     * @property {module:model/OptInResponse}
     */
    OptInResponse,

    /**
     * The OptinAction model constructor.
     * @property {module:model/OptinAction}
     */
    OptinAction,

    /**
     * The OptionalModelFields model constructor.
     * @property {module:model/OptionalModelFields}
     */
    OptionalModelFields,

    /**
     * The ProductReduced model constructor.
     * @property {module:model/ProductReduced}
     */
    ProductReduced,

    /**
     * The Proxy model constructor.
     * @property {module:model/Proxy}
     */
    Proxy,

    /**
     * The ProxyRequest model constructor.
     * @property {module:model/ProxyRequest}
     */
    ProxyRequest,

    /**
     * The ProxyResponse model constructor.
     * @property {module:model/ProxyResponse}
     */
    ProxyResponse,

    /**
     * The QueryMultipleFields model constructor.
     * @property {module:model/QueryMultipleFields}
     */
    QueryMultipleFields,

    /**
     * The QuerySortBy model constructor.
     * @property {module:model/QuerySortBy}
     */
    QuerySortBy,

    /**
     * The RangeQuery model constructor.
     * @property {module:model/RangeQuery}
     */
    RangeQuery,

    /**
     * The RankingStrategy model constructor.
     * @property {module:model/RankingStrategy}
     */
    RankingStrategy,

    /**
     * The ResponseMeta model constructor.
     * @property {module:model/ResponseMeta}
     */
    ResponseMeta,

    /**
     * The Reward model constructor.
     * @property {module:model/Reward}
     */
    Reward,

    /**
     * The RewardReduced model constructor.
     * @property {module:model/RewardReduced}
     */
    RewardReduced,

    /**
     * The RewardRequest model constructor.
     * @property {module:model/RewardRequest}
     */
    RewardRequest,

    /**
     * The RewardResponse model constructor.
     * @property {module:model/RewardResponse}
     */
    RewardResponse,

    /**
     * The RewardTypeReduced model constructor.
     * @property {module:model/RewardTypeReduced}
     */
    RewardTypeReduced,

    /**
     * The RoundType model constructor.
     * @property {module:model/RoundType}
     */
    RoundType,

    /**
     * The Rule model constructor.
     * @property {module:model/Rule}
     */
    Rule,

    /**
     * The RuleArgument model constructor.
     * @property {module:model/RuleArgument}
     */
    RuleArgument,

    /**
     * The RuleExpression model constructor.
     * @property {module:model/RuleExpression}
     */
    RuleExpression,

    /**
     * The RuleRequest model constructor.
     * @property {module:model/RuleRequest}
     */
    RuleRequest,

    /**
     * The RuleResponse model constructor.
     * @property {module:model/RuleResponse}
     */
    RuleResponse,

    /**
     * The RuleRoutine model constructor.
     * @property {module:model/RuleRoutine}
     */
    RuleRoutine,

    /**
     * The ScheduleType model constructor.
     * @property {module:model/ScheduleType}
     */
    ScheduleType,

    /**
     * The Scheduling model constructor.
     * @property {module:model/Scheduling}
     */
    Scheduling,

    /**
     * The ScoringStrategy model constructor.
     * @property {module:model/ScoringStrategy}
     */
    ScoringStrategy,

    /**
     * The SortOrder model constructor.
     * @property {module:model/SortOrder}
     */
    SortOrder,

    /**
     * The Strategy model constructor.
     * @property {module:model/Strategy}
     */
    Strategy,

    /**
     * The StrategyType model constructor.
     * @property {module:model/StrategyType}
     */
    StrategyType,

    /**
     * The UnsubscribeRequest model constructor.
     * @property {module:model/UnsubscribeRequest}
     */
    UnsubscribeRequest,

    /**
    * The AchievementsApi service constructor.
    * @property {module:api/AchievementsApi}
    */
    AchievementsApiWs,

    /**
    * The AwardsApi service constructor.
    * @property {module:api/AwardsApi}
    */
    AwardsApiWs,

    /**
    * The CompetitionsApi service constructor.
    * @property {module:api/CompetitionsApi}
    */
    CompetitionsApiWs,

    /**
    * The ContestsApi service constructor.
    * @property {module:api/ContestsApi}
    */
    ContestsApiWs,

    /**
    * The EntityChangesApi service constructor.
    * @property {module:api/EntityChangesApi}
    */
    EntityChangesApiWs,

    /**
    * The FilesApi service constructor.
    * @property {module:api/FilesApi}
    */
    FilesApiWs,

    /**
    * The LeaderboardApi service constructor.
    * @property {module:api/LeaderboardApi}
    */
    LeaderboardApiWs,

    /**
    * The MembersApi service constructor.
    * @property {module:api/MembersApi}
    */
    MembersApiWs,

    /**
    * The MessagesApi service constructor.
    * @property {module:api/MessagesApi}
    */
    MessagesApiWs,

    /**
    * The OptInApi service constructor.
    * @property {module:api/OptInApi}
    */
    OptInApiWs,

    /**
    * The RewardsApi service constructor.
    * @property {module:api/RewardsApi}
    */
    RewardsApiWs,

    /**
    * The RulesApi service constructor.
    * @property {module:api/RulesApi}
    */
    RulesApiWs,

    /**
     * The ApiClientStomp service instance.
     * @property {module:ApiClient}
     */
      ApiClientStomp,
};

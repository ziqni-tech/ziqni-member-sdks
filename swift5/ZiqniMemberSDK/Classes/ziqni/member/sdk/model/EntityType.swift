//
// EntityType.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Entity the item is associated to. */
public enum EntityType: String, Codable, CaseIterable {
    case member = "Member"
    case product = "Product"
    case achievement = "Achievement"
    case repository = "Repository"
    case fileObject = "FileObject"
    case language = "Language"
    case memberMessage = "MemberMessage"
    case reward = "Reward"
    case memberAward = "MemberAward"
    case award = "Award"
    case message = "Message"
    case rewardType = "RewardType"
    case actionType = "ActionType"
    case unitOfMeasure = "UnitOfMeasure"
    case competition = "Competition"
    case contest = "Contest"
    case sqsConnection = "SqsConnection"
    case kafkaConnection = "KafkaConnection"
    case rabbitMqConnection = "RabbitMqConnection"
    case events = "Events"
    case webhook = "Webhook"
    case attachment = "Attachment"
    case ruleSet = "RuleSet"
}
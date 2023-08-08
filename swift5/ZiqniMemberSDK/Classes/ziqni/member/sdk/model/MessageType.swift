//
// MessageType.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The type of message of the member */
public enum MessageType: String, Codable, CaseIterable {
    case achievement = "Achievement"
    case ticket = "Ticket"
    case reward = "Reward"
    case text = "Text"
    case notification = "Notification"
    case inboxItem = "InboxItem"
    case notificationInboxItem = "NotificationInboxItem"
}

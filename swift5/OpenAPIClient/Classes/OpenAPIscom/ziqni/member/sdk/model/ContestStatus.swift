//
// ContestStatus.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The status of contest */
public enum ContestStatus: String, Codable, CaseIterable {
    case unknown = "Unknown"
    case deleting = "Deleting"
    case deleted = "Deleted"
    case draft = "Draft"
    case template = "Template"
    case preparing = "Preparing"
    case ready = "Ready"
    case starting = "Starting"
    case active = "Active"
    case finishing = "Finishing"
    case finished = "Finished"
    case cancelling = "Cancelling"
    case cancelled = "Cancelled"
    case finalising = "Finalising"
    case finalised = "Finalised"
}

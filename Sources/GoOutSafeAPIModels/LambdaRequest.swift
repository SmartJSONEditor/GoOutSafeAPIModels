//
//  File.swift
//
//
//  Created by Jan Kubny on 3/21/22.
//

import Foundation

public struct LocationRequestItem: Codable {
    /// Location push token of requested device
    public let locationToken: String
    /// Keychain stored deviceID for iCloud account.
    public let requestingKeychainDeviceID: String
    /// Requested timestamp(Time stamp of when the original request was issued)
    public let requestedTimeStamp: Double
    /// User Info
    public let userInfo:[String: String]
}

public struct PushAlertItem: Codable {
    /// Location push token of requested device
    public let pushToken: String
    /// Title
    public let alertTitle: String
    /// Message
    public let alertMessage: String
}

public struct ScheduleLocationPushItem: Codable {
    /// Device UUID
    public let deviceId: String
    /// Location Token
    public let locationToken: String
    /// Requesting device UUID
    public let requestingKeychainDeviceID: String
    /// Tracker ID
    public let trackerId: String
    /// Created timestamp
    public let createdTimeStamp: Double
    /// Service Type PUB | PRIVATE
    public let serviceType: String
    /// Timestamps of trigger times
    public let triggerTimeStamps: [Double]
}

public struct TrackerItem: Codable {
    /// Device UUID
    public let deviceId: String
    /// Tracker ID
    public let trackerId: String
    /// Base64 encoded CLLocationCodable
    public let locationData: String
}

public struct LambdaRequest: Codable {
    /// Push direct location request
    public let locationPushItems: [LocationRequestItem]?
    /// Push APNS notification
    public let alertPushItems: [PushAlertItem]?
    /// Schedule Location Items
    public let scheduleLocationPush:[ScheduleLocationPushItem]?
    /// Update tracker from Location Extension
    public let tracker:TrackerItem?
    /// Periodic schedule service
    public let process: Bool?
}

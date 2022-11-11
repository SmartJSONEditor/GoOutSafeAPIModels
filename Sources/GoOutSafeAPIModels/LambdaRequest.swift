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
    
    public init(locationToken: String, requestingKeychainDeviceID: String, requestedTimeStamp: Double, userInfo: [String : String]) {
        self.locationToken = locationToken
        self.requestingKeychainDeviceID = requestingKeychainDeviceID
        self.requestedTimeStamp = requestedTimeStamp
        self.userInfo = userInfo
    }
}

public struct PushAlertItem: Codable {
    /// Location push token of requested device
    public let pushToken: String
    /// Title
    public let alertTitle: String
    /// Message
    public let alertMessage: String
    
    public init(pushToken: String, alertTitle: String, alertMessage: String) {
        self.pushToken = pushToken
        self.alertTitle = alertTitle
        self.alertMessage = alertMessage
    }
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
    
    public init(deviceId: String, locationToken: String, requestingKeychainDeviceID: String, trackerId: String, createdTimeStamp: Double, serviceType: String, triggerTimeStamps: [Double]) {
        self.deviceId = deviceId
        self.locationToken = locationToken
        self.requestingKeychainDeviceID = requestingKeychainDeviceID
        self.trackerId = trackerId
        self.createdTimeStamp = createdTimeStamp
        self.serviceType = serviceType
        self.triggerTimeStamps = triggerTimeStamps
    }
}

public struct TrackerItem: Codable {
    /// Device UUID
    public let deviceId: String
    /// Tracker ID
    public let trackerId: String
    /// Base64 encoded CLLocationCodable
    public let locationData: String
    
    public init(deviceId: String, trackerId: String, locationData: String) {
        self.deviceId = deviceId
        self.trackerId = trackerId
        self.locationData = locationData
    }
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
    
    public init(locationPushItems: [LocationRequestItem]?, alertPushItems: [PushAlertItem]?, scheduleLocationPush: [ScheduleLocationPushItem]?, tracker: TrackerItem?, process: Bool?) {
        self.locationPushItems = locationPushItems
        self.alertPushItems = alertPushItems
        self.scheduleLocationPush = scheduleLocationPush
        self.tracker = tracker
        self.process = process
    }
}

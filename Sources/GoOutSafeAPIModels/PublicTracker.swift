//
//  File.swift
//  
//
//  Created by Jan Kubny on 12/11/22.
//

import Foundation

/// Tracker returned to clients from DynamoDB
public struct PublicTracker: Codable {
    public var trackerId: String
    public var expiresAt: Double
    public var trackerStartsAt: Double
    public var trackerEndsAt: Double
    public var locations: [String]
    
    public init(trackerId: String, expiresAt: Double, trackerStartsAt: Double, trackerEndsAt: Double, locations: [String]) {
        self.trackerId = trackerId
        self.expiresAt = expiresAt
        self.trackerStartsAt = trackerStartsAt
        self.trackerEndsAt = trackerEndsAt
        self.locations = locations
    }
}

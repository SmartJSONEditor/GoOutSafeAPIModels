//
//  File.swift
//
//
//  Created by Jan Kubny on 3/24/22.
//

import Foundation

public struct LambdaResponse: Codable {
    public let statuses: [String]?
    public let debugPrint: String?
    public let error: String?
    public let tracker: PublicTracker?
    
    public init(statuses: [String]? = nil, debugPrint: String? = nil, error: String? = nil, tracker: PublicTracker? = nil) {
        self.statuses = statuses
        self.debugPrint = debugPrint
        self.error = error
        self.tracker = tracker
    }
}

//
//  File.swift
//  
//
//  Created by Jan Kubny on 13/11/22.
//

import Foundation

public enum APIError: Error {
    case decodingError
    case requestError
    case invalidHandler
    case undefined
    case publicTrackerIDNotFound
    case publicTrackerCodingError

    public static func fromString(_ string: String) -> APIError {
        switch string {
        case "APIError.invalidHandler": return APIError.invalidHandler
        case "APIError.decodingError": return APIError.decodingError
        case "APIError.requestError": return APIError.requestError
        case "APIError.publicTrackerIDNotFound": return APIError.publicTrackerIDNotFound
        case "APIError.publicTrackerCodingError": return APIError.publicTrackerCodingError
        default:
            return APIError.undefined
        }
    }
}

extension APIError: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .invalidHandler: return "APIError.invalidHandler"
        case .decodingError: return "APIError.decodingError"
        case .requestError: return "APIError.requestError"
        case .publicTrackerIDNotFound: return "APIError.publicTrackerIDNotFound"
        case .publicTrackerCodingError: return "APIError.publicTrackerCodingError"
        case .undefined: return "APIError.undefined"
        }
    }
}


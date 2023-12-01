//
// IssueUpiRefund400Response.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct IssueUpiRefund400Response: Codable, JSONEncodable, Hashable {

    public var decentroTxnId: String?
    public var status: String?
    public var responseCode: String?
    public var message: String?

    public init(decentroTxnId: String? = nil, status: String? = nil, responseCode: String? = nil, message: String? = nil) {
        self.decentroTxnId = decentroTxnId
        self.status = status
        self.responseCode = responseCode
        self.message = message
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case decentroTxnId
        case status
        case responseCode
        case message
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(decentroTxnId, forKey: .decentroTxnId)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(responseCode, forKey: .responseCode)
        try container.encodeIfPresent(message, forKey: .message)
    }
}


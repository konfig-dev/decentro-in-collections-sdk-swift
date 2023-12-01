//
// IssueUpiRefundRequest.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct IssueUpiRefundRequest: Codable, JSONEncodable, Hashable {

    public var referenceId: String
    public var transactionId: String?
    public var bankReferenceNumber: String?
    public var purposeMessage: String?

    public init(referenceId: String, transactionId: String? = nil, bankReferenceNumber: String? = nil, purposeMessage: String? = nil) {
        self.referenceId = referenceId
        self.transactionId = transactionId
        self.bankReferenceNumber = bankReferenceNumber
        self.purposeMessage = purposeMessage
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case referenceId = "reference_id"
        case transactionId = "transaction_id"
        case bankReferenceNumber = "bank_reference_number"
        case purposeMessage = "purpose_message"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(referenceId, forKey: .referenceId)
        try container.encodeIfPresent(transactionId, forKey: .transactionId)
        try container.encodeIfPresent(bankReferenceNumber, forKey: .bankReferenceNumber)
        try container.encodeIfPresent(purposeMessage, forKey: .purposeMessage)
    }
}


@testable import Decentro

import XCTest

class SimpleTest: XCTestCase {
    override func setUpWithError() throws {
        DecentroAPI.customHeaders = [
            "client_id": ProcessInfo.processInfo.environment["DECENTRO_CLIENT_ID"]!,
            "client_secret": ProcessInfo.processInfo.environment["DECENTRO_CLIENT_SECRET"]!,
            "module_secret": ProcessInfo.processInfo.environment["DECENTRO_COLLECTIONS_MODULE_SECRET"]!,
            "provider_secret": ProcessInfo.processInfo.environment["DECENTRO_COLLECTIONS_PROVIDER_SECRET"]!
        ]
        DecentroAPI.basePath = "https://in.staging.decentro.tech/sim"
    }

    override func tearDownWithError() throws {}

    func testGeneratePaymentLink() throws {
        let expectation = XCTestExpectation(description: "Response is not null")
        let generatePaymentLinkRequest = GeneratePaymentLinkRequest(
            referenceId: "123456789014",
            payeeAccount: ProcessInfo.processInfo.environment["DECENTRO_COLLECTIONS_TEST_ACCOUNT_NUMBER"]!,
            amount: 123,
            purposeMessage: "purpose_message",
            generateQr: 1,
            expiryTime: 10
        )
        print("HERE YE HERE YE, CUSTOM HEADERS")
        print(DecentroAPI.customHeaders)
        CollectionsAPI.generatePaymentLink(generatePaymentLinkRequest: generatePaymentLinkRequest) { response, error in
            guard error == nil else {
                print(error!)
                return
            }

            if response != nil {
                expectation.fulfill()
            }
        }
        wait(for: [expectation], timeout: 10.0)
    }
}
# Swift5 API client for Decentro

Collections

## Overview
This API client was generated by [Konfig](https://konfigthis.com).

- API version: 1.0.0
- Package version: 1.0.0
For more information, please visit [https://decentro.tech](https://decentro.tech)

## Installation

### CocoaPods

1. Add `source 'https://github.com/CocoaPods/Specs.git'` to your `Podfile`
2. Add `pod 'Decentro', '~> 1.0.0'` to your `Podfile`

Your `Podfile` should look like:
```ruby
# Podfile
source 'https://github.com/CocoaPods/Specs.git'

target 'Example' do
  pod 'Decentro', '~> 1.0.0'
end
```
3. Run `pod install`

```shell
❯ pod install
Analyzing dependencies
Downloading dependencies
Installing Decentro 1.0.0
Generating Pods project
Integrating client project
Pod installation complete! There is 1 dependency from the Podfile and 2 total pods installed.
```

## Getting Started

```swift
import Decentro

let apiKey = ProcessInfo.processInfo.environment["API_KEY"]!
DecentroAPI.customHeaders = [
    "client_id": apiKey,
]


let apiKey = ProcessInfo.processInfo.environment["API_KEY"]!
DecentroAPI.customHeaders = [
    "client_secret": apiKey,
]


let apiKey = ProcessInfo.processInfo.environment["API_KEY"]!
DecentroAPI.customHeaders = [
    "module_secret": apiKey,
]


let apiKey = ProcessInfo.processInfo.environment["API_KEY"]!
DecentroAPI.customHeaders = [
    "provider_secret": apiKey,
]


let generatePaymentLinkRequest = GeneratePaymentLinkRequest(referenceId: "referenceId_example", payeeAccount: "payeeAccount_example", amount: 123, purposeMessage: "purposeMessage_example", generateQr: 123, expiryTime: 123, customizedQrWithLogo: 123, generateUri: 123) // GeneratePaymentLinkRequest | 

// Generate payment link
CollectionsAPI.generatePaymentLink(generatePaymentLinkRequest: generatePaymentLinkRequest) { (response, error) in
    guard error == nil else {
        print(error!)
        return
    }

    if response != nil {
        dump(response)
    }
}

```

## API Endpoints

All URIs are relative to *https://in.staging.decentro.tech*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*CollectionsAPI* | [**generatePaymentLink**](docs/CollectionsAPI.md#generatepaymentlink) | **POST** /v2/payments/upi/link | Generate payment link
*CollectionsAPI* | [**getTransactionStatus**](docs/CollectionsAPI.md#gettransactionstatus) | **GET** /v2/payments/transaction/{transaction_id}/status | Get transaction status
*CollectionsAPI* | [**issueCollectRequest**](docs/CollectionsAPI.md#issuecollectrequest) | **POST** /v2/payments/collection | Issue collect request
*CollectionsAPI* | [**issueUpiRefund**](docs/CollectionsAPI.md#issueupirefund) | **POST** /v2/payments/upi/refund | Issue UPI Refund
*CollectionsAPI* | [**validateUpiHandle**](docs/CollectionsAPI.md#validateupihandle) | **POST** /v2/payments/vpa/validate | Validate UPI handle


## Models

 - [GeneratePaymentLink400Response](docs/GeneratePaymentLink400Response.md)
 - [GeneratePaymentLinkRequest](docs/GeneratePaymentLinkRequest.md)
 - [GeneratePaymentLinkResponse](docs/GeneratePaymentLinkResponse.md)
 - [GeneratePaymentLinkResponseData](docs/GeneratePaymentLinkResponseData.md)
 - [GeneratePaymentLinkResponseDataPspUri](docs/GeneratePaymentLinkResponseDataPspUri.md)
 - [GetTransactionStatusResponse](docs/GetTransactionStatusResponse.md)
 - [GetTransactionStatusResponseData](docs/GetTransactionStatusResponseData.md)
 - [GetTransactionStatusResponseError](docs/GetTransactionStatusResponseError.md)
 - [IssueCollectRequest400Response](docs/IssueCollectRequest400Response.md)
 - [IssueCollectRequestRequest](docs/IssueCollectRequestRequest.md)
 - [IssueCollectRequestResponse](docs/IssueCollectRequestResponse.md)
 - [IssueCollectRequestResponseData](docs/IssueCollectRequestResponseData.md)
 - [IssueUpiRefund400Response](docs/IssueUpiRefund400Response.md)
 - [IssueUpiRefundRequest](docs/IssueUpiRefundRequest.md)
 - [IssueUpiRefundResponse](docs/IssueUpiRefundResponse.md)
 - [IssueUpiRefundResponseData](docs/IssueUpiRefundResponseData.md)
 - [ValidateUpiHandle400Response](docs/ValidateUpiHandle400Response.md)
 - [ValidateUpiHandleRequest](docs/ValidateUpiHandleRequest.md)
 - [ValidateUpiHandleResponse](docs/ValidateUpiHandleResponse.md)
 - [ValidateUpiHandleResponseData](docs/ValidateUpiHandleResponseData.md)


## Authorization


## client_id

- **Type**: API key
- **API key parameter name**: client_id
- **Location**: HTTP header

```swift 
import Decentro


let apiKey = ProcessInfo.processInfo.environment["API_KEY"]!
DecentroAPI.customHeaders = [
    "client_id": apiKey,
]
```

## client_secret

- **Type**: API key
- **API key parameter name**: client_secret
- **Location**: HTTP header

```swift 
import Decentro


let apiKey = ProcessInfo.processInfo.environment["API_KEY"]!
DecentroAPI.customHeaders = [
    "client_secret": apiKey,
]
```

## module_secret

- **Type**: API key
- **API key parameter name**: module_secret
- **Location**: HTTP header

```swift 
import Decentro


let apiKey = ProcessInfo.processInfo.environment["API_KEY"]!
DecentroAPI.customHeaders = [
    "module_secret": apiKey,
]
```

## provider_secret

- **Type**: API key
- **API key parameter name**: provider_secret
- **Location**: HTTP header

```swift 
import Decentro


let apiKey = ProcessInfo.processInfo.environment["API_KEY"]!
DecentroAPI.customHeaders = [
    "provider_secret": apiKey,
]
```


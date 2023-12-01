# CollectionsAPI

All URIs are relative to *https://in.staging.decentro.tech*

Method | HTTP request | Description
------------- | ------------- | -------------
[**generatePaymentLink**](CollectionsAPI.md#generatepaymentlink) | **POST** /v2/payments/upi/link | Generate payment link
[**getTransactionStatus**](CollectionsAPI.md#gettransactionstatus) | **GET** /v2/payments/transaction/{transaction_id}/status | Get transaction status
[**issueCollectRequest**](CollectionsAPI.md#issuecollectrequest) | **POST** /v2/payments/collection | Issue collect request
[**issueUpiRefund**](CollectionsAPI.md#issueupirefund) | **POST** /v2/payments/upi/refund | Issue UPI Refund
[**validateUpiHandle**](CollectionsAPI.md#validateupihandle) | **POST** /v2/payments/vpa/validate | Validate UPI handle


# **generatePaymentLink**
```swift
    open class func generatePaymentLink(generatePaymentLinkRequest: GeneratePaymentLinkRequest, completion: @escaping (_ data: GeneratePaymentLinkResponse?, _ error: Error?) -> Void)
```

Generate payment link

### Example
```swift
import Decentro

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

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **generatePaymentLinkRequest** | [**GeneratePaymentLinkRequest**](GeneratePaymentLinkRequest.md) |  | 

### Return type

[**GeneratePaymentLinkResponse**](GeneratePaymentLinkResponse.md)

### Authorization

[client_id](../README.md#client_id), [client_secret](../README.md#client_secret), [module_secret](../README.md#module_secret), [provider_secret](../README.md#provider_secret)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **getTransactionStatus**
```swift
    open class func getTransactionStatus(transactionId: String, completion: @escaping (_ data: GetTransactionStatusResponse?, _ error: Error?) -> Void)
```

Get transaction status

### Example
```swift
import Decentro

let transactionId = "transactionId_example" // String | 

// Get transaction status
CollectionsAPI.getTransactionStatus(transactionId: transactionId) { (response, error) in
    guard error == nil else {
        print(error!)
        return
    }

    if response != nil {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transactionId** | **String** |  | 

### Return type

[**GetTransactionStatusResponse**](GetTransactionStatusResponse.md)

### Authorization

[client_id](../README.md#client_id), [client_secret](../README.md#client_secret), [module_secret](../README.md#module_secret), [provider_secret](../README.md#provider_secret)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **issueCollectRequest**
```swift
    open class func issueCollectRequest(issueCollectRequestRequest: IssueCollectRequestRequest, completion: @escaping (_ data: IssueCollectRequestResponse?, _ error: Error?) -> Void)
```

Issue collect request

### Example
```swift
import Decentro

let issueCollectRequestRequest = IssueCollectRequestRequest(referenceId: "referenceId_example", payerUpi: "payerUpi_example", payeeAccount: "payeeAccount_example", amount: 123, purposeMessage: "purposeMessage_example", expiryTime: 123) // IssueCollectRequestRequest | 

// Issue collect request
CollectionsAPI.issueCollectRequest(issueCollectRequestRequest: issueCollectRequestRequest) { (response, error) in
    guard error == nil else {
        print(error!)
        return
    }

    if response != nil {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **issueCollectRequestRequest** | [**IssueCollectRequestRequest**](IssueCollectRequestRequest.md) |  | 

### Return type

[**IssueCollectRequestResponse**](IssueCollectRequestResponse.md)

### Authorization

[client_id](../README.md#client_id), [client_secret](../README.md#client_secret), [module_secret](../README.md#module_secret), [provider_secret](../README.md#provider_secret)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **issueUpiRefund**
```swift
    open class func issueUpiRefund(issueUpiRefundRequest: IssueUpiRefundRequest, completion: @escaping (_ data: IssueUpiRefundResponse?, _ error: Error?) -> Void)
```

Issue UPI Refund

### Example
```swift
import Decentro

let issueUpiRefundRequest = IssueUpiRefundRequest(referenceId: "referenceId_example", transactionId: "transactionId_example", bankReferenceNumber: "bankReferenceNumber_example", purposeMessage: "purposeMessage_example") // IssueUpiRefundRequest | 

// Issue UPI Refund
CollectionsAPI.issueUpiRefund(issueUpiRefundRequest: issueUpiRefundRequest) { (response, error) in
    guard error == nil else {
        print(error!)
        return
    }

    if response != nil {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **issueUpiRefundRequest** | [**IssueUpiRefundRequest**](IssueUpiRefundRequest.md) |  | 

### Return type

[**IssueUpiRefundResponse**](IssueUpiRefundResponse.md)

### Authorization

[client_id](../README.md#client_id), [client_secret](../README.md#client_secret), [module_secret](../README.md#module_secret), [provider_secret](../README.md#provider_secret)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **validateUpiHandle**
```swift
    open class func validateUpiHandle(validateUpiHandleRequest: ValidateUpiHandleRequest, completion: @escaping (_ data: ValidateUpiHandleResponse?, _ error: Error?) -> Void)
```

Validate UPI handle

### Example
```swift
import Decentro

let validateUpiHandleRequest = ValidateUpiHandleRequest(referenceId: "referenceId_example", upiId: "upiId_example", type: "type_example") // ValidateUpiHandleRequest | 

// Validate UPI handle
CollectionsAPI.validateUpiHandle(validateUpiHandleRequest: validateUpiHandleRequest) { (response, error) in
    guard error == nil else {
        print(error!)
        return
    }

    if response != nil {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **validateUpiHandleRequest** | [**ValidateUpiHandleRequest**](ValidateUpiHandleRequest.md) |  | 

### Return type

[**ValidateUpiHandleResponse**](ValidateUpiHandleResponse.md)

### Authorization

[client_id](../README.md#client_id), [client_secret](../README.md#client_secret), [module_secret](../README.md#module_secret), [provider_secret](../README.md#provider_secret)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


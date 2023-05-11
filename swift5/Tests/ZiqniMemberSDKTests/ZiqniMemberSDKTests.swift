import XCTest
@testable import ZiqniMemberSDK

final class ZiqniMemberSDKTests: XCTestCase {
    func testConnect() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        
        XCTAssertEqual("Hello, World!", "Hello, World!")
    }
    
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        let url = URL(string: StompWebSocketClient.basePath)!
        let token = "eyJhbGciOiJIUzI1NiJ9.eyJhcGlfa2V5X2lkIjoiYVBpWVZZUUJnVHFxQzZwdWJ5aHMiLCJtZW1iZXJfcmVmZXJlbmNlX2lkIjoiNzQ2MTgxNjU4NjI2MjY1OSIsImFjY291bnRfaWQiOiJWb1lvdlh3Qm42OWk2elVjSVBBYyIsInNwYWNlX25hbWUiOiJ0ZXN0LXNwYWNlLTEiLCJuYW1lIjoiQW50b25pbm8gTC4iLCJtZW1iZXJfdHlwZSI6IkluZGl2aWR1YWwiLCJtZW1iZXJfaWQiOiJtUGhSVllRQmdUcXFDNnB1YmlQSiIsInJlc291cmNlX2FjY2VzcyI6eyJ6aXFuaS1nYXBpIjp7InJvbGVzIjpbIlB1YmxpYyIsIk1lbWJlciIsIlZpZXdBY2hpZXZlbWVudHMiLCJWaWV3QXdhcmRzIiwiQ2xhaW1Bd2FyZHMiLCJWaWV3Q29tcGV0aXRpb25zIiwiVmlld0NvbnRlc3RzIiwiVmlld0ZpbGVzIiwiVmlld01lbWJlcnMiLCJNZW1iZXJzT3B0aW4iLCJWaWV3TWVzc2FnZXMiLCJDb25uZWN0UHJveHkiLCJWaWV3UmV3YXJkcyIsIlZpZXdSdWxlcyJdfX0sInN1YiI6Im1QaFJWWVFCZ1RxcUM2cHViaVBKIiwianRpIjoiZTk4NTA4YmUtYmU3Zi00ZjZmLTlhNjEtODYzYjcwZjQxNGFhIiwiaWF0IjoxNjY5MDI2OTA5LCJleHAiOjIwMjkwMjY5MDl9.8O8vF8y1yUzGff5Rk278skyhWdrWZPhiBEddCxW7nb8"
        let x = StompWebSocketClient(url: url, token: "String")
    
        
        XCTAssertEqual("Hello, World!", "Hello, World!")
        
        let memberRequest = MemberRequest(includeFields: ["All"], includeCustomFields: [])
        x.send(to: "/gapi/getMember", body: "{}")
        x.disconnect()
    }
}

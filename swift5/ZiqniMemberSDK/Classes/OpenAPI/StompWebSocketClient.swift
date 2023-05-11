import Foundation
import SwiftStomp

// We use the SwiftStomp library to handle the STOMP WebSocket communication.
// The StompWebSocketClient class creates an instance of StompClient with the provided URL,
// and provides methods for connecting, subscribing, sending messages, and disconnecting.
// ------------
// To use this class, create an instance with the URL of the STOMP WebSocket endpoint:
// ------------
// let url = URL(string: "ws://localhost:8080/stomp")!
// let client = StompWebSocketClient(url: url)
// ------------
// Then, call the connect method to authenticate and connect to the server:
// ------------
// client.connect(username: "username", password: "password") {
//     print("Connected to STOMP server")
// }

open class StompWebSocketClient {

    let uuid = UUID()
    let basePath = "wss://member-api.ziqni.com/ws/websocket"
    let rpcTopic = "/user/queue/rpc-results"
    let callbacksTopic = "/user/queue/callbacks"
    
    private let swiftStomp: SwiftStomp

    
    init(url: URL, token: String) {
        var headers: [String:String] = [:]
        headers["login"] = "Bearer"
        headers["passcode"] = token
        
        self.swiftStomp = SwiftStomp(host: url, headers: headers) //< Create instance
        self.swiftStomp.delegate = self //< Set delegate
        self.swiftStomp.autoReconnect = true //< Auto reconnect on error or cancel
        self.swiftStomp.connect() //< Connect
        
    }

    func subscribe(to destination: String) {
        swiftStomp.subscribe(to: destination, mode: .clientIndividual)
    }

    func send(to destination: String, body: String) {
        let msgId = self.uuid.uuidString
        swiftStomp.send(body: body, to: destination, receiptId: msgId, headers: [:])
    }

    func disconnect() {
        swiftStomp.disconnect()
    }
}

// SwiftStompDelegate Methods

extension StompWebSocketClient: SwiftStompDelegate {
    public func onConnect(swiftStomp: SwiftStomp, connectType: StompConnectType) {
        print("Connected to STOMP server")
    }
    
    public func onDisconnect(swiftStomp: SwiftStomp, disconnectType: StompDisconnectType) {
        print("Disconnected from STOMP server")
    }
    
    public func onMessageReceived(swiftStomp: SwiftStomp, message: Any?, messageId: String, destination: String, headers: [String : String]) {
        
    }
    
    public func onReceipt(swiftStomp: SwiftStomp, receiptId: String) {
        
    }
    
    public func onError(swiftStomp: SwiftStomp, briefDescription: String, fullDescription: String?, receiptId: String?, type: StompErrorType) {
        
    }
    
    public func onSocketEvent(eventName: String, description: String) {
        print("Received socket event " + eventName + ", " + description)
    }
}

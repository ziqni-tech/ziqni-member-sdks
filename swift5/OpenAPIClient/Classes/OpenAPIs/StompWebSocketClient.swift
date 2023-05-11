import StompClientLib
import Foundation

// This implementation uses the StompClientLib library, which is available through CocoaPods or Carthage.
// The StompWebSocketClient class provides methods for connecting to a STOMP server, subscribing to a destination, sending a message, and disconnecting from the server.
//
// To use this class, create an instance with the URL of the STOMP WebSocket endpoint:
//  let url = URL(string: "ws://localhost:8080/stomp")!
//  let client = StompWebSocketClient(url: url)
//
// Then, call the connect method to authenticate and connect to the server:
//    client.connect(username: "username", password: "password") {
//        print("Connected to STOMP server")
//    }
// You can then subscribe to a destination and receive messages with the subscribe method:
//
// client.subscribe(to: "/topic/chat") { message in
//     print("Received message: \(message)")
// }
// To send a message to a destination, use the send method:
//
// client.send(to: "/topic/chat", body: "Hello, world!")
// Finally, to disconnect from the server, call the disconnect method:
//
// client.disconnect()
// Note that this is a basic example and does not include error handling or other advanced features. For more information on using the StompClientLib library, refer to the library's documentation.
class StompWebSocketClient {
    public static var basePath = URL("ws://member-api.ziqni.com/ws")
    public static var rpcTopic = "/user/queue/rpc-results"
    public static var callbacksTopic = "/user/queue/callbacks"

    private let client: StompClientLib

    init() {
        client = StompClientLib()
        client.openSocketWithURL(basePath)
    }

    init(url: URL) {
        client = StompClientLib()
        client.openSocketWithURL(url)
    }

    func connect(username: String?, password: String?, completionHandler: @escaping (() -> Void)) {
        client.connect(username: username, passcode: password) { _, _ in
            completionHandler()
        }
    }

    func subscribe(to destination: String, completionHandler: @escaping ((String?) -> Void)) {
        client.subscribe(destination: destination) { _, message in
            completionHandler(message)
        }
    }

    func send(to destination: String, body: String) {
        client.sendJSONForDict(dict: ["destination": destination, "body": body])
    }

    func disconnect() {
        client.disconnect()
    }
}

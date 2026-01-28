
import Foundation
import PaymentsCore

public struct PaymentsClient: Sendable {
    let http: HTTPClient
    init(http: HTTPClient) {
        self.http = http
    }
    // v0.1 placeholder (luego implementamos tokenize/charge/refund/status)
}

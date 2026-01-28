import Foundation
import PaymentsCore

public enum PaymentsSDK {
  private static var configuration: PaymentsConfiguration?

  public static func configure(_ config: PaymentsConfiguration) {
    configuration = config
  }

  public static func makeClient() -> PaymentsClient {
    guard let config = configuration else {
      preconditionFailure("PaymentsSDK not configured. Call PaymentsSDK.configure(_) first.")
    }
    let logger = Logger(level: config.logLevel)
    let http = URLSessionHTTPClient(
      baseURL: config.environment.baseURL,
      timeout: config.timeout,
      publishableKey: config.publishableKey,
      logger: logger
    )
    return PaymentsClient(http: http)
  }
}

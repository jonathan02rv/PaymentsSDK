import Foundation

public struct PaymentsConfiguration: Sendable {
  public enum Environment: Sendable {
    case sandbox, production

    var baseURL: URL {
      switch self {
      case .sandbox: return URL(string: "https://sandbox.api.example.com")!
      case .production: return URL(string: "https://api.example.com")!
      }
    }
  }

  public let environment: Environment
  public let publishableKey: String
  public let timeout: TimeInterval
  public let logLevel: PaymentsLogLevel

  public init(
    environment: Environment,
    publishableKey: String,
    timeout: TimeInterval = 30,
    logLevel: PaymentsLogLevel = .none
  ) {
    self.environment = environment
    self.publishableKey = publishableKey
    self.timeout = timeout
    self.logLevel = logLevel
  }
}

public enum PaymentsLogLevel: Int, Sendable {
  case none = 0, error, info, debug
}


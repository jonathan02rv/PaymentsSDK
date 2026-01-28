import Foundation
import os.log

public struct Logger: Sendable {
  private let level: PaymentsLogLevel
  public init(level: PaymentsLogLevel) { self.level = level }

  public func debug(_ msg: String) { log(.debug, msg) }
  public func info(_ msg: String)  { log(.info, msg) }
  public func error(_ msg: String) { log(.error, msg) }

  private func log(_ kind: OSLogType, _ msg: String) {
    guard level != .none else { return }
    os_log("%{public}@", log: .default, type: kind, msg)
  }
}

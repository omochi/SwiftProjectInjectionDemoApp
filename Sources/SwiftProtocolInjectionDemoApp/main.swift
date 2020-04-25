import SwiftProtocolInjectionDemoLib

extension A: P {
    public static var message: String { "A is P" }
}

extension B: P {}

lib()

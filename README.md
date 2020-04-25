Library

```swift
public protocol P {
    static var message: String { get }
}

public enum A {}
public enum B {}
public enum C {}

extension P {
    public static var message: String { "default message" }
}

public func lib() {
    if let p = A.self as? P.Type {
        print(p.message)
    } else {
        print("A is not P")
    }

    if let p = B.self as? P.Type {
        print(p.message)
    } else {
        print("B is not P")
    }

    if let p = C.self as? P.Type {
        print(p.message)
    } else {
        print("C is not P")
    }
}
```

App

```swift
extension A: P {
    public static var message: String { "A is P" }
}

extension B: P {}

lib()
```

Output

```
A is P
default message
C is not P
```

#if os(macOS) && !targetEnvironment(macCatalyst)
import AppKit
#elseif canImport(UIKit)
import UIKit
#endif

#if (os(macOS) && !targetEnvironment(macCatalyst)) || canImport(UIKit)

@available(iOS 15.0, macOS 12.0, tvOS 15.0, *)
extension NSTextLocation {
	public static func < (lhs: Self, rhs: Self) -> Bool {
		return lhs.compare(rhs) == .orderedAscending
	}

	public static func == (lhs: Self, rhs: Self) -> Bool {
		return lhs.compare(rhs) == .orderedSame
	}

	public static func <= (lhs: Self, rhs: Self) -> Bool {
		return lhs < rhs || lhs == rhs
	}

	public static func > (lhs: Self, rhs: Self) -> Bool {
		return lhs.compare(rhs) == .orderedDescending
	}

	public static func >= (lhs: Self, rhs: Self) -> Bool {
		return lhs > rhs || lhs > rhs
	}
}

#endif

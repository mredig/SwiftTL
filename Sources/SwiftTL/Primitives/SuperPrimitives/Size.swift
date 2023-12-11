import Foundation

public struct Size: RawRepresentable, Hashable, Codable {
	public var rawValue: SIMD3<Double>

	public var width: Double {
		get { rawValue.x }
		set { rawValue.x = newValue }
	}

	public var depth: Double {
		get { rawValue.y }
		set { rawValue.y = newValue }
	}

	public var height: Double {
		get { rawValue.z }
		set { rawValue.z = newValue }
	}

	public init(rawValue: SIMD3<Double>) {
		self.rawValue = rawValue
	}

	public init(_ width: Double, _ depth: Double, _ height: Double) {
		self.init(rawValue: SIMD3<Double>(width, depth, height))
	}
}

extension SIMD3<Double> {
	var toSize: Size {
		unsafeBitCast(self, to: Size.self)
	}
}

extension Size {
	var toSimd3: SIMD3<Double> {
		unsafeBitCast(self, to: SIMD3<Double>.self)
	}
}

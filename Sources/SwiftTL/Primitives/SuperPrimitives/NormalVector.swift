import Foundation

public struct NormalVector: RawRepresentable, Hashable, Codable {
	public var rawValue: SIMD3<Double>

	public var x: Double {
		get { rawValue.x }
		set { rawValue.x = newValue }
	}

	public var y: Double {
		get { rawValue.y }
		set { rawValue.y = newValue }
	}

	public var z: Double {
		get { rawValue.z }
		set { rawValue.z = newValue }
	}

	public init(rawValue: SIMD3<Double>) {
		self.rawValue = rawValue
	}

	public init(_ x: Double, _ y: Double, _ z: Double) {
		self.init(rawValue: SIMD3<Double>(x, y, z))
	}
}

extension SIMD3<Double> {
	var toNormalVector: NormalVector {
		unsafeBitCast(self, to: NormalVector.self)
	}
}

extension NormalVector {
	var toSimd3: SIMD3<Double> {
		unsafeBitCast(self, to: SIMD3<Double>.self)
	}
}

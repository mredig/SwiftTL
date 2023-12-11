import Foundation

public struct Vertex: RawRepresentable {
	public var rawValue: SIMD3<Double>

	public init(rawValue: SIMD3<Double>) {
		self.rawValue = rawValue
	}

	public init(_ a: Double, _ b: Double, _ c: Double) {
		self.init(rawValue: SIMD3<Double>(a, b, c))
	}
}

extension SIMD3<Double> {
	var toVertex: Vertex {
		unsafeBitCast(self, to: Vertex.self)
	}
}

extension Vertex {
	var toSimd3: SIMD3<Double> {
		unsafeBitCast(self, to: SIMD3<Double>.self)
	}
}

import Foundation

public struct Plane {
	public let triangle1: Triangle
	public let triangle2: Triangle

	public init(corners a: Vertex, _ b: Vertex, _ c: Vertex, _ d: Vertex, normal: NormalVector) {
		self.triangle1 = Triangle(
			vertices: a, b, c,
			normal: normal)
		self.triangle2 = Triangle(
			vertices: a, c, d,
			normal: normal)
	}

	public init(corners a: Vertex, _ b: Vertex, _ c: Vertex, _ d: Vertex) {
		self.triangle1 = Triangle(
			vertices: a, b, c)
		self.triangle2 = Triangle(
			vertices: a, c, d)
	}

//	public struct Corners: RawRepresentable, ABCDWithNormal {
//		public var rawValue: simd_double4x3
//
//		public init(rawValue: simd_double4x3) {
//			self.rawValue = rawValue
//		}
//
//		public init(_ a: Vertex, _ b: Vertex, _ c: Vertex, _ d: Vertex) {
//			self.init(rawValue: simd_double4x3(a.toSimd3, b.toSimd3, c.toSimd3, d.toSimd3))
//		}
//	}
}

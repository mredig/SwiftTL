import Foundation

public typealias Polygon = Triangle
public struct Triangle: RawRepresentable, ABCDProperties {
	public var rawValue: simd_double4x3

	fileprivate var columns: (SIMD3<Double>, SIMD3<Double>, SIMD3<Double>, SIMD3<Double>) {
		get { rawValue.columns }
		set { rawValue.columns = newValue }
	}

	public init(_ a: SIMD3<Double>, _ b: SIMD3<Double>, _ c: SIMD3<Double>, _ d: SIMD3<Double>) {
		self.init(rawValue: simd_double4x3(a, b, c, d))
	}

	public init(_ a: Vertex, _ b: Vertex, _ c: Vertex, _ d: NormalVector) {
		self.init(a.rawValue, b.rawValue, c.rawValue, d)
	}

	public init(rawValue: simd_double4x3) {
		self.rawValue = rawValue
	}
}

public extension Triangle {
	var vertices: Vertices {
		Vertices(a, b, c)
	}

	var normal: NormalVector {
		get { columns.3 }
		set { columns.3 = newValue }
	}

	init(vertices a: Vertex, _ b: Vertex, _ c: Vertex, normal: NormalVector, ccwOrder: Bool = true) {
		self.init(a, b, c, normal)

		if ccwOrder, Self.assertTriIsCCWNormal(self) == false {
			(self.a, self.b) = (b, a)
			guard
				Self.assertTriIsCCWNormal(self)
			else { fatalError() }
		}
	}

	init(vertices: Vertices, normal: NormalVector, ccwOrder: Bool = true) {
		self.init(vertices: vertices.a, vertices.b, vertices.c, normal: normal, ccwOrder: ccwOrder)
	}

	init(vertices: Vertices) {
		let normal = Self.computeNormal(from: vertices)
		self.init(vertices.a, vertices.b, vertices.c, normal)
	}

	init(vertices a: Vertex, _ b: Vertex, _ c: Vertex) {
		self.init(vertices: Vertices(a, b, c))
	}

	static func assertTriIsCCWNormal(_ tri: Self) -> Bool {
		let computedNormal = computeNormal(from: tri.vertices)

		guard
			simd_dot(computedNormal, simd_normalize(tri.normal)) >= 0
		else { return false }
		return true
	}

	static func computeNormal(from tri: Vertices) -> NormalVector {
		let edge1 = tri.b.toSimd3 - tri.a.toSimd3
		let edge2 = tri.c.toSimd3 - tri.a.toSimd3
		var computedNormal = simd_cross(edge1, edge2)
		computedNormal = simd_normalize(computedNormal)

		return computedNormal
	}

	func toSTLTriangle() -> String {
		"""
		facet normal \(normal.x) \(normal.y) \(normal.z)
			outer loop
				vertex \(a.toSimd3.x) \(a.toSimd3.y) \(a.toSimd3.z)
				vertex \(b.toSimd3.x) \(b.toSimd3.y) \(b.toSimd3.z)
				vertex \(c.toSimd3.x) \(c.toSimd3.y) \(c.toSimd3.z)
			endloop
		endfacet
		"""
	}
}

extension Triangle {
	public struct Vertices: RawRepresentable {
		public var rawValue: simd_double3x3

		public var a: Vertex {
			get { rawValue.columns.0.toVertex }
			set { rawValue.columns.0 = newValue.toSimd3 }
		}

		public var b: Vertex {
			get { rawValue.columns.1.toVertex }
			set { rawValue.columns.1 = newValue.toSimd3 }
		}

		public var c: Vertex {
			get { rawValue.columns.2.toVertex }
			set { rawValue.columns.2 = newValue.toSimd3 }
		}

		public init(rawValue: simd_double3x3) {
			self.rawValue = rawValue
		}

		public init(_ a: Vertex, _ b: Vertex, _ c: Vertex) {
			self.init(rawValue: simd_double3x3(a.rawValue, b.rawValue, c.rawValue))
		}
	}
}

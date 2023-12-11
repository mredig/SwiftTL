import Foundation
@_exported import simd

public class Generator {
	public let name: String

	private(set) var triangles: [Triangle] = []

	public init(name: String) {
		self.name = name.replacingOccurrences(of: ##"\s"##, with: "_", options: .regularExpression)
	}

	public func addTriangle(_ triangle: Triangle) {
		triangles.append(triangle)
	}

	public func addPlane(_ plane: Plane) {
		triangles.append(plane.triangle1)
		triangles.append(plane.triangle2)
	}

	public func toSTL() -> String {
		"""
		solid \(name)	UNITS=mm

		\(triangles.map { $0.toSTLTriangle() }.joined(separator: "\n\n"))

		endsolid \(name)
		"""
	}
}

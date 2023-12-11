import Foundation

public struct Plane {
	public let triangle1: Triangle
	public let triangle2: Triangle

	/// Creates a plane. No checks are made to confirm it's a flat plane. Vertices must be in cw or ccw order.
	/// Will break if you cross the plane diagonally. You can specify the normal with this initializer.
	public init(corners a: Vertex, _ b: Vertex, _ c: Vertex, _ d: Vertex, normal: NormalVector) {
		self.triangle1 = Triangle(
			vertices: a, b, c,
			normal: normal)
		self.triangle2 = Triangle(
			vertices: a, c, d,
			normal: normal)
	}

	/// Creates a plane. No checks are made to confirm it's a flat plane. Vertices must be in cw or ccw order.
	/// Will break if you cross the plane diagonally. The normal is calculated based on the order of the vertices (ccw faces out)
	public init(corners a: Vertex, _ b: Vertex, _ c: Vertex, _ d: Vertex) {
		self.triangle1 = Triangle(
			vertices: a, b, c)
		self.triangle2 = Triangle(
			vertices: a, c, d)
	}
}

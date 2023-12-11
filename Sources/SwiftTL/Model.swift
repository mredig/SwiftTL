import Foundation

public protocol Model {
	var polygons: [Polygon] { get }
	var vertices: Set<Vertex> { get }
}

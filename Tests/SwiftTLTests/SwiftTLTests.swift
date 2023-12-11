import XCTest
import SwiftTL

final class SwiftTLTests: XCTestCase {
    func testGen1() throws {
		let cube = Generator(name: "cube")

		let cubeCorners: [Vertex] = [
			Vertex(0, 0, 0),
			Vertex(1, 0, 0),
			Vertex(1, 1, 0),
			Vertex(0, 1, 0),
			Vertex(0, 0, 1),
			Vertex(0, 1, 1),
			Vertex(1, 1, 1),
			Vertex(1, 0, 1),
		]

		let planes = [
			Plane(corners: cubeCorners[0], cubeCorners[1], cubeCorners[2], cubeCorners[3], normal: .init(0, 0, -1)),
			Plane(corners: cubeCorners[3], cubeCorners[2], cubeCorners[6], cubeCorners[5], normal: .init(0, 1, 0)),
			Plane(corners: cubeCorners[4], cubeCorners[0], cubeCorners[3], cubeCorners[5], normal: .init(-1, 0, 0)),
			Plane(corners: cubeCorners[1], cubeCorners[7], cubeCorners[6], cubeCorners[2], normal: .init(1, 0, 0)),
			Plane(corners: cubeCorners[4], cubeCorners[7], cubeCorners[1], cubeCorners[0], normal: .init(0, -1, 0)),
			Plane(corners: cubeCorners[4], cubeCorners[5], cubeCorners[6], cubeCorners[7], normal: .init(0, 0, 1)),
		]

		planes.forEach { cube.addPlane($0) }

		let result = cube.toSTL()

		XCTAssertEqual(gen1Expectation, result)
    }

	func testGen2() throws {
		func createBox(withXYDimensions xy: CGSize, height: Double) -> Generator {
			let box = Generator(name: "flat box")

			let corners = [
				Vertex(0, 0, 0),
				Vertex(xy.width, 0, 0),
				Vertex(xy.width, xy.depth, 0),
				Vertex(0, xy.depth, 0),
				Vertex(0, 0, height),
				Vertex(0, xy.depth, height),
				Vertex(xy.width, xy.depth, height),
				Vertex(xy.width, 0, height),
			]

			let topCorners = [
				Vertex(0, 0, height),
				Vertex(xy.width * 0.5, 0, height),
				Vertex(xy.width, 0, height),
				Vertex(xy.width, xy.depth, height),
				Vertex(xy.width * 0.5, xy.depth, height),
				Vertex(0, xy.depth, height),
			]

			let planes = [
				Plane(corners: corners[0], corners[1], corners[2], corners[3], normal: .init(0, 0, -1)),
				Plane(corners: corners[3], corners[2], corners[6], corners[5], normal: .init(0, 1, 0)),
				Plane(corners: corners[4], corners[0], corners[3], corners[5], normal: .init(-1, 0, 0)),
				Plane(corners: corners[1], corners[7], corners[6], corners[2], normal: .init(1, 0, 0)),
				Plane(corners: corners[4], corners[7], corners[1], corners[0], normal: .init(0, -1, 0)),
		//		Plane(corners: simd_double4x3(corners[4], corners[5], corners[6], corners[7]), normal: .init(0, 0, 1)),
			]

			let topPlanes = [
				Plane(corners: topCorners[0], topCorners[1], topCorners[4], topCorners[5], normal: .init(0, 0, 1)),
				Plane(corners: topCorners[1], topCorners[2], topCorners[3], topCorners[4], normal: .init(0, 0, 1)),
			]

			planes.forEach { box.addPlane($0) }
			topPlanes.forEach { box.addPlane($0) }
			return box
		}


		let flatBox = createBox(withXYDimensions: CGSize(width: 100, height: 200), height: 10)

		XCTAssertEqual(gen2Expectation, flatBox.toSTL())
	}

	func testArbitraryBox() throws {
		let box = Box(size: Size(10, 20, 30), widthDivisions: 10, depthDivisions: 20, heightDivisions: 30)

		let gen = Generator(name: "a box")
		box.polygons.forEach { gen.addTriangle($0) }

		let render = gen.toSTL()
		XCTAssertEqual(boxExpectation, render)
	}
}

extension CGSize {
	var depth: Double {
		get { height }
		set { height = newValue }
	}
}

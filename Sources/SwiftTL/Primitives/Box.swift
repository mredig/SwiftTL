import Foundation

public struct Box: Model {
	public var polygons: [Polygon] = []
	public var vertices: Set<Vertex> {
		polygons.reduce(into: Set<Vertex>()) {
			$0.formUnion($1.vertices.asArray)
		}
	}

	public init(size: Size, widthDivisions: Int = 1, depthDivisions: Int = 1, heightDivisions: Int = 1) {
		let xDiv = max(widthDivisions, 1)
		let yDiv = max(depthDivisions, 1)
		let zDiv = max(heightDivisions, 1)

		let xStepSize = size.width / Double(xDiv)
		let yStepSize = size.depth / Double(yDiv)
		let zStepSize = size.height / Double(zDiv)

		let xFaceVerts: (pos: [[Vertex]], neg: [[Vertex]]) = {
			var posVerts: [[Vertex]] = []
			var negVerts: [[Vertex]] = []
			var index = 0
			for z in stride(from: 0, through: size.height, by: zStepSize) {
				posVerts.append([])
				negVerts.append([])
				defer { index += 1 }
				for y in stride(from: 0, through: size.depth, by: xStepSize) {
					posVerts[index].append(Vertex(size.width, y, z))
					negVerts[index].append(Vertex(0, y, z))
				}
			}
			return (posVerts, negVerts)
		}()

		let yFaceVerts: (pos: [[Vertex]], neg: [[Vertex]]) = {
			var posVerts: [[Vertex]] = []
			var negVerts: [[Vertex]] = []
			var index = 0
			for z in stride(from: 0, through: size.height, by: zStepSize) {
				posVerts.append([])
				negVerts.append([])
				defer { index += 1 }
				for x in stride(from: 0, through: size.width, by: yStepSize) {
					posVerts[index].append(Vertex(x, size.depth, z))
					negVerts[index].append(Vertex(x, 0, z))
				}
			}
			return (posVerts, negVerts)
		}()

		let zFaceVerts: (pos: [[Vertex]], neg: [[Vertex]]) = {
			var posVerts: [[Vertex]] = []
			var negVerts: [[Vertex]] = []
			var index = 0
			for y in stride(from: 0, through: size.depth, by: zStepSize) {
				posVerts.append([])
				negVerts.append([])
				defer { index += 1 }
				for x in stride(from: 0, through: size.width, by: zStepSize) {
					posVerts[index].append(Vertex(x, y, size.height))
					negVerts[index].append(Vertex(x, y, 0))
				}
			}
			return (posVerts, negVerts)
		}()

		func polyMaker(positiveVerts: [[Vertex]], negativeVerts: [[Vertex]], posNormal: NormalVector) -> (pos: [Plane], neg: [Plane]) {
			let vCount = positiveVerts.count
			let hCount = positiveVerts[0].count

			var posFaces: [Plane] = []
			var negFaces: [Plane] = []

			for v in 0..<(vCount - 1) {
				for h in 0..<(hCount - 1) {
					let pos1 = positiveVerts[v][h]
					let pos2 = positiveVerts[v][h + 1]
					let pos3 = positiveVerts[v + 1][h + 1]
					let pos4 = positiveVerts[v + 1][h]
					let posPlane = Plane(corners: pos1, pos2, pos3, pos4, normal: posNormal)

					let neg1 = negativeVerts[v][h]
					let neg2 = negativeVerts[v][h + 1]
					let neg3 = negativeVerts[v + 1][h + 1]
					let neg4 = negativeVerts[v + 1][h]
					let negNormal = (posNormal.toSimd3 * -1).toNormalVector
					let negPlane = Plane(corners: neg1, neg2, neg3, neg4, normal: negNormal)

					posFaces.append(posPlane)
					negFaces.append(negPlane)
				}
			}
			return (posFaces, negFaces)
		}

		let xPolys = polyMaker(positiveVerts: xFaceVerts.pos, negativeVerts: xFaceVerts.neg, posNormal: NormalVector(1, 0, 0))
		let yPolys = polyMaker(positiveVerts: yFaceVerts.pos, negativeVerts: yFaceVerts.neg, posNormal: NormalVector(0, 1, 0))
		let zPolys = polyMaker(positiveVerts: zFaceVerts.pos, negativeVerts: zFaceVerts.neg, posNormal: NormalVector(0, 0, 1))

		polygons.append(contentsOf: xPolys.neg.flatMap { [$0.triangle1, $0.triangle2] })
		polygons.append(contentsOf: xPolys.pos.flatMap { [$0.triangle1, $0.triangle2] })

		polygons.append(contentsOf: yPolys.neg.flatMap { [$0.triangle1, $0.triangle2] })
		polygons.append(contentsOf: yPolys.pos.flatMap { [$0.triangle1, $0.triangle2] })

		polygons.append(contentsOf: zPolys.neg.flatMap { [$0.triangle1, $0.triangle2] })
		polygons.append(contentsOf: zPolys.pos.flatMap { [$0.triangle1, $0.triangle2] })
	}
}

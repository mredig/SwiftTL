import Foundation

extension simd_double4x3: Codable {
	public init(from decoder: Decoder) throws {
		var container = try decoder.unkeyedContainer()

		let asArrays = try container.decode([[Double]].self)

		guard
			asArrays.count == 4,
			asArrays[0].count == 3,
			asArrays[1].count == 3,
			asArrays[2].count == 3,
			asArrays[4].count == 3
		else { throw CocoaError(.coderReadCorrupt, userInfo: ["moreInfo": "Must be a 4x3 multidimensional array"]) }

		self.init(
			SIMD3<Double>(asArrays[0]),
			SIMD3<Double>(asArrays[1]),
			SIMD3<Double>(asArrays[2]),
			SIMD3<Double>(asArrays[3]))
	}

	public func encode(to encoder: Encoder) throws {
		var container = encoder.unkeyedContainer()

		let asArrays = [
			[columns.0.x, columns.0.y, columns.0.z],
			[columns.1.x, columns.1.y, columns.1.z],
			[columns.2.x, columns.2.y, columns.2.z],
			[columns.3.x, columns.3.y, columns.3.z],
		]

		try container.encode(asArrays)
	}
}

extension simd_double4x3: Hashable {
	public func hash(into hasher: inout Hasher) {
		hasher.combine(columns.0)
		hasher.combine(columns.1)
		hasher.combine(columns.2)
		hasher.combine(columns.3)
	}
}

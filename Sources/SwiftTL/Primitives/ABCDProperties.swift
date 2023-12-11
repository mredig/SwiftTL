import Foundation

protocol ABCDProperties: RawRepresentable where RawValue == simd_double4x3 {
	var rawValue: simd_double4x3 { get set }
	var a: Vertex { get set }
	var b: Vertex { get set }
	var c: Vertex { get set }
	var d: Vertex { get set }
}

extension ABCDProperties {
	var a: Vertex {
		get { rawValue.columns.0.toVertex }
		set { rawValue.columns.0 = newValue.toSimd3 }
	}

	var b: Vertex {
		get { rawValue.columns.1.toVertex }
		set { rawValue.columns.1 = newValue.toSimd3 }
	}

	var c: Vertex {
		get { rawValue.columns.2.toVertex }
		set { rawValue.columns.2 = newValue.toSimd3 }
	}

	var d: Vertex {
		get { rawValue.columns.3.toVertex }
		set { rawValue.columns.3 = newValue.toSimd3 }
	}
}

protocol ABCDWithNormal: ABCDProperties {
	var normal: NormalVector { get set }
}

extension ABCDWithNormal {
	var normal: NormalVector {
		get { unsafeBitCast(d, to: NormalVector.self) }
		set { d = unsafeBitCast(newValue, to: Vertex.self) }
	}
}

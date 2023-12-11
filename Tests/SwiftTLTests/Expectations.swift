import Foundation

let gen1Expectation = """
solid cube	UNITS=mm

facet normal 0.0 0.0 -1.0
	outer loop
		vertex 1.0 0.0 0.0
		vertex 0.0 0.0 0.0
		vertex 1.0 1.0 0.0
	endloop
endfacet

facet normal 0.0 0.0 -1.0
	outer loop
		vertex 1.0 1.0 0.0
		vertex 0.0 0.0 0.0
		vertex 0.0 1.0 0.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 1.0 1.0 0.0
		vertex 0.0 1.0 0.0
		vertex 1.0 1.0 1.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 1.0 1.0 1.0
		vertex 0.0 1.0 0.0
		vertex 0.0 1.0 1.0
	endloop
endfacet

facet normal -1.0 0.0 0.0
	outer loop
		vertex 0.0 0.0 0.0
		vertex 0.0 0.0 1.0
		vertex 0.0 1.0 0.0
	endloop
endfacet

facet normal -1.0 0.0 0.0
	outer loop
		vertex 0.0 1.0 0.0
		vertex 0.0 0.0 1.0
		vertex 0.0 1.0 1.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 1.0 0.0 1.0
		vertex 1.0 0.0 0.0
		vertex 1.0 1.0 1.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 1.0 1.0 1.0
		vertex 1.0 0.0 0.0
		vertex 1.0 1.0 0.0
	endloop
endfacet

facet normal 0.0 -1.0 0.0
	outer loop
		vertex 1.0 0.0 1.0
		vertex 0.0 0.0 1.0
		vertex 1.0 0.0 0.0
	endloop
endfacet

facet normal 0.0 -1.0 0.0
	outer loop
		vertex 1.0 0.0 0.0
		vertex 0.0 0.0 1.0
		vertex 0.0 0.0 0.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 0.0 1.0 1.0
		vertex 0.0 0.0 1.0
		vertex 1.0 1.0 1.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 1.0 1.0 1.0
		vertex 0.0 0.0 1.0
		vertex 1.0 0.0 1.0
	endloop
endfacet

endsolid cube
"""

let gen2Expectation = """
solid flat_box	UNITS=mm

facet normal 0.0 0.0 -1.0
	outer loop
		vertex 100.0 0.0 0.0
		vertex 0.0 0.0 0.0
		vertex 100.0 200.0 0.0
	endloop
endfacet

facet normal 0.0 0.0 -1.0
	outer loop
		vertex 100.0 200.0 0.0
		vertex 0.0 0.0 0.0
		vertex 0.0 200.0 0.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 100.0 200.0 0.0
		vertex 0.0 200.0 0.0
		vertex 100.0 200.0 10.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 100.0 200.0 10.0
		vertex 0.0 200.0 0.0
		vertex 0.0 200.0 10.0
	endloop
endfacet

facet normal -1.0 0.0 0.0
	outer loop
		vertex 0.0 0.0 0.0
		vertex 0.0 0.0 10.0
		vertex 0.0 200.0 0.0
	endloop
endfacet

facet normal -1.0 0.0 0.0
	outer loop
		vertex 0.0 200.0 0.0
		vertex 0.0 0.0 10.0
		vertex 0.0 200.0 10.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 100.0 0.0 10.0
		vertex 100.0 0.0 0.0
		vertex 100.0 200.0 10.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 100.0 200.0 10.0
		vertex 100.0 0.0 0.0
		vertex 100.0 200.0 0.0
	endloop
endfacet

facet normal 0.0 -1.0 0.0
	outer loop
		vertex 100.0 0.0 10.0
		vertex 0.0 0.0 10.0
		vertex 100.0 0.0 0.0
	endloop
endfacet

facet normal 0.0 -1.0 0.0
	outer loop
		vertex 100.0 0.0 0.0
		vertex 0.0 0.0 10.0
		vertex 0.0 0.0 0.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 0.0 0.0 10.0
		vertex 50.0 0.0 10.0
		vertex 50.0 200.0 10.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 0.0 0.0 10.0
		vertex 50.0 200.0 10.0
		vertex 0.0 200.0 10.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 50.0 0.0 10.0
		vertex 100.0 0.0 10.0
		vertex 100.0 200.0 10.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 50.0 0.0 10.0
		vertex 100.0 200.0 10.0
		vertex 50.0 200.0 10.0
	endloop
endfacet

endsolid flat_box
"""

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

let boxExpectation = """
solid a_box	UNITS=mm

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 1.0 0.0
		vertex 0.0 0.0 0.0
		vertex 0.0 1.0 1.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 1.0 1.0
		vertex 0.0 0.0 0.0
		vertex 0.0 0.0 1.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 2.0 0.0
		vertex 0.0 1.0 0.0
		vertex 0.0 2.0 1.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 2.0 1.0
		vertex 0.0 1.0 0.0
		vertex 0.0 1.0 1.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 3.0 0.0
		vertex 0.0 2.0 0.0
		vertex 0.0 3.0 1.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 3.0 1.0
		vertex 0.0 2.0 0.0
		vertex 0.0 2.0 1.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 4.0 0.0
		vertex 0.0 3.0 0.0
		vertex 0.0 4.0 1.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 4.0 1.0
		vertex 0.0 3.0 0.0
		vertex 0.0 3.0 1.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 5.0 0.0
		vertex 0.0 4.0 0.0
		vertex 0.0 5.0 1.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 5.0 1.0
		vertex 0.0 4.0 0.0
		vertex 0.0 4.0 1.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 6.0 0.0
		vertex 0.0 5.0 0.0
		vertex 0.0 6.0 1.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 6.0 1.0
		vertex 0.0 5.0 0.0
		vertex 0.0 5.0 1.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 7.0 0.0
		vertex 0.0 6.0 0.0
		vertex 0.0 7.0 1.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 7.0 1.0
		vertex 0.0 6.0 0.0
		vertex 0.0 6.0 1.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 8.0 0.0
		vertex 0.0 7.0 0.0
		vertex 0.0 8.0 1.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 8.0 1.0
		vertex 0.0 7.0 0.0
		vertex 0.0 7.0 1.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 9.0 0.0
		vertex 0.0 8.0 0.0
		vertex 0.0 9.0 1.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 9.0 1.0
		vertex 0.0 8.0 0.0
		vertex 0.0 8.0 1.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 10.0 0.0
		vertex 0.0 9.0 0.0
		vertex 0.0 10.0 1.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 10.0 1.0
		vertex 0.0 9.0 0.0
		vertex 0.0 9.0 1.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 11.0 0.0
		vertex 0.0 10.0 0.0
		vertex 0.0 11.0 1.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 11.0 1.0
		vertex 0.0 10.0 0.0
		vertex 0.0 10.0 1.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 12.0 0.0
		vertex 0.0 11.0 0.0
		vertex 0.0 12.0 1.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 12.0 1.0
		vertex 0.0 11.0 0.0
		vertex 0.0 11.0 1.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 13.0 0.0
		vertex 0.0 12.0 0.0
		vertex 0.0 13.0 1.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 13.0 1.0
		vertex 0.0 12.0 0.0
		vertex 0.0 12.0 1.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 14.0 0.0
		vertex 0.0 13.0 0.0
		vertex 0.0 14.0 1.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 14.0 1.0
		vertex 0.0 13.0 0.0
		vertex 0.0 13.0 1.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 15.0 0.0
		vertex 0.0 14.0 0.0
		vertex 0.0 15.0 1.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 15.0 1.0
		vertex 0.0 14.0 0.0
		vertex 0.0 14.0 1.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 16.0 0.0
		vertex 0.0 15.0 0.0
		vertex 0.0 16.0 1.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 16.0 1.0
		vertex 0.0 15.0 0.0
		vertex 0.0 15.0 1.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 17.0 0.0
		vertex 0.0 16.0 0.0
		vertex 0.0 17.0 1.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 17.0 1.0
		vertex 0.0 16.0 0.0
		vertex 0.0 16.0 1.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 18.0 0.0
		vertex 0.0 17.0 0.0
		vertex 0.0 18.0 1.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 18.0 1.0
		vertex 0.0 17.0 0.0
		vertex 0.0 17.0 1.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 19.0 0.0
		vertex 0.0 18.0 0.0
		vertex 0.0 19.0 1.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 19.0 1.0
		vertex 0.0 18.0 0.0
		vertex 0.0 18.0 1.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 20.0 0.0
		vertex 0.0 19.0 0.0
		vertex 0.0 20.0 1.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 20.0 1.0
		vertex 0.0 19.0 0.0
		vertex 0.0 19.0 1.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 1.0 1.0
		vertex 0.0 0.0 1.0
		vertex 0.0 1.0 2.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 1.0 2.0
		vertex 0.0 0.0 1.0
		vertex 0.0 0.0 2.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 2.0 1.0
		vertex 0.0 1.0 1.0
		vertex 0.0 2.0 2.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 2.0 2.0
		vertex 0.0 1.0 1.0
		vertex 0.0 1.0 2.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 3.0 1.0
		vertex 0.0 2.0 1.0
		vertex 0.0 3.0 2.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 3.0 2.0
		vertex 0.0 2.0 1.0
		vertex 0.0 2.0 2.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 4.0 1.0
		vertex 0.0 3.0 1.0
		vertex 0.0 4.0 2.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 4.0 2.0
		vertex 0.0 3.0 1.0
		vertex 0.0 3.0 2.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 5.0 1.0
		vertex 0.0 4.0 1.0
		vertex 0.0 5.0 2.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 5.0 2.0
		vertex 0.0 4.0 1.0
		vertex 0.0 4.0 2.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 6.0 1.0
		vertex 0.0 5.0 1.0
		vertex 0.0 6.0 2.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 6.0 2.0
		vertex 0.0 5.0 1.0
		vertex 0.0 5.0 2.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 7.0 1.0
		vertex 0.0 6.0 1.0
		vertex 0.0 7.0 2.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 7.0 2.0
		vertex 0.0 6.0 1.0
		vertex 0.0 6.0 2.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 8.0 1.0
		vertex 0.0 7.0 1.0
		vertex 0.0 8.0 2.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 8.0 2.0
		vertex 0.0 7.0 1.0
		vertex 0.0 7.0 2.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 9.0 1.0
		vertex 0.0 8.0 1.0
		vertex 0.0 9.0 2.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 9.0 2.0
		vertex 0.0 8.0 1.0
		vertex 0.0 8.0 2.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 10.0 1.0
		vertex 0.0 9.0 1.0
		vertex 0.0 10.0 2.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 10.0 2.0
		vertex 0.0 9.0 1.0
		vertex 0.0 9.0 2.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 11.0 1.0
		vertex 0.0 10.0 1.0
		vertex 0.0 11.0 2.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 11.0 2.0
		vertex 0.0 10.0 1.0
		vertex 0.0 10.0 2.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 12.0 1.0
		vertex 0.0 11.0 1.0
		vertex 0.0 12.0 2.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 12.0 2.0
		vertex 0.0 11.0 1.0
		vertex 0.0 11.0 2.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 13.0 1.0
		vertex 0.0 12.0 1.0
		vertex 0.0 13.0 2.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 13.0 2.0
		vertex 0.0 12.0 1.0
		vertex 0.0 12.0 2.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 14.0 1.0
		vertex 0.0 13.0 1.0
		vertex 0.0 14.0 2.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 14.0 2.0
		vertex 0.0 13.0 1.0
		vertex 0.0 13.0 2.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 15.0 1.0
		vertex 0.0 14.0 1.0
		vertex 0.0 15.0 2.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 15.0 2.0
		vertex 0.0 14.0 1.0
		vertex 0.0 14.0 2.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 16.0 1.0
		vertex 0.0 15.0 1.0
		vertex 0.0 16.0 2.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 16.0 2.0
		vertex 0.0 15.0 1.0
		vertex 0.0 15.0 2.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 17.0 1.0
		vertex 0.0 16.0 1.0
		vertex 0.0 17.0 2.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 17.0 2.0
		vertex 0.0 16.0 1.0
		vertex 0.0 16.0 2.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 18.0 1.0
		vertex 0.0 17.0 1.0
		vertex 0.0 18.0 2.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 18.0 2.0
		vertex 0.0 17.0 1.0
		vertex 0.0 17.0 2.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 19.0 1.0
		vertex 0.0 18.0 1.0
		vertex 0.0 19.0 2.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 19.0 2.0
		vertex 0.0 18.0 1.0
		vertex 0.0 18.0 2.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 20.0 1.0
		vertex 0.0 19.0 1.0
		vertex 0.0 20.0 2.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 20.0 2.0
		vertex 0.0 19.0 1.0
		vertex 0.0 19.0 2.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 1.0 2.0
		vertex 0.0 0.0 2.0
		vertex 0.0 1.0 3.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 1.0 3.0
		vertex 0.0 0.0 2.0
		vertex 0.0 0.0 3.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 2.0 2.0
		vertex 0.0 1.0 2.0
		vertex 0.0 2.0 3.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 2.0 3.0
		vertex 0.0 1.0 2.0
		vertex 0.0 1.0 3.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 3.0 2.0
		vertex 0.0 2.0 2.0
		vertex 0.0 3.0 3.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 3.0 3.0
		vertex 0.0 2.0 2.0
		vertex 0.0 2.0 3.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 4.0 2.0
		vertex 0.0 3.0 2.0
		vertex 0.0 4.0 3.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 4.0 3.0
		vertex 0.0 3.0 2.0
		vertex 0.0 3.0 3.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 5.0 2.0
		vertex 0.0 4.0 2.0
		vertex 0.0 5.0 3.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 5.0 3.0
		vertex 0.0 4.0 2.0
		vertex 0.0 4.0 3.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 6.0 2.0
		vertex 0.0 5.0 2.0
		vertex 0.0 6.0 3.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 6.0 3.0
		vertex 0.0 5.0 2.0
		vertex 0.0 5.0 3.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 7.0 2.0
		vertex 0.0 6.0 2.0
		vertex 0.0 7.0 3.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 7.0 3.0
		vertex 0.0 6.0 2.0
		vertex 0.0 6.0 3.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 8.0 2.0
		vertex 0.0 7.0 2.0
		vertex 0.0 8.0 3.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 8.0 3.0
		vertex 0.0 7.0 2.0
		vertex 0.0 7.0 3.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 9.0 2.0
		vertex 0.0 8.0 2.0
		vertex 0.0 9.0 3.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 9.0 3.0
		vertex 0.0 8.0 2.0
		vertex 0.0 8.0 3.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 10.0 2.0
		vertex 0.0 9.0 2.0
		vertex 0.0 10.0 3.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 10.0 3.0
		vertex 0.0 9.0 2.0
		vertex 0.0 9.0 3.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 11.0 2.0
		vertex 0.0 10.0 2.0
		vertex 0.0 11.0 3.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 11.0 3.0
		vertex 0.0 10.0 2.0
		vertex 0.0 10.0 3.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 12.0 2.0
		vertex 0.0 11.0 2.0
		vertex 0.0 12.0 3.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 12.0 3.0
		vertex 0.0 11.0 2.0
		vertex 0.0 11.0 3.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 13.0 2.0
		vertex 0.0 12.0 2.0
		vertex 0.0 13.0 3.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 13.0 3.0
		vertex 0.0 12.0 2.0
		vertex 0.0 12.0 3.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 14.0 2.0
		vertex 0.0 13.0 2.0
		vertex 0.0 14.0 3.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 14.0 3.0
		vertex 0.0 13.0 2.0
		vertex 0.0 13.0 3.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 15.0 2.0
		vertex 0.0 14.0 2.0
		vertex 0.0 15.0 3.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 15.0 3.0
		vertex 0.0 14.0 2.0
		vertex 0.0 14.0 3.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 16.0 2.0
		vertex 0.0 15.0 2.0
		vertex 0.0 16.0 3.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 16.0 3.0
		vertex 0.0 15.0 2.0
		vertex 0.0 15.0 3.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 17.0 2.0
		vertex 0.0 16.0 2.0
		vertex 0.0 17.0 3.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 17.0 3.0
		vertex 0.0 16.0 2.0
		vertex 0.0 16.0 3.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 18.0 2.0
		vertex 0.0 17.0 2.0
		vertex 0.0 18.0 3.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 18.0 3.0
		vertex 0.0 17.0 2.0
		vertex 0.0 17.0 3.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 19.0 2.0
		vertex 0.0 18.0 2.0
		vertex 0.0 19.0 3.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 19.0 3.0
		vertex 0.0 18.0 2.0
		vertex 0.0 18.0 3.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 20.0 2.0
		vertex 0.0 19.0 2.0
		vertex 0.0 20.0 3.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 20.0 3.0
		vertex 0.0 19.0 2.0
		vertex 0.0 19.0 3.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 1.0 3.0
		vertex 0.0 0.0 3.0
		vertex 0.0 1.0 4.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 1.0 4.0
		vertex 0.0 0.0 3.0
		vertex 0.0 0.0 4.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 2.0 3.0
		vertex 0.0 1.0 3.0
		vertex 0.0 2.0 4.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 2.0 4.0
		vertex 0.0 1.0 3.0
		vertex 0.0 1.0 4.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 3.0 3.0
		vertex 0.0 2.0 3.0
		vertex 0.0 3.0 4.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 3.0 4.0
		vertex 0.0 2.0 3.0
		vertex 0.0 2.0 4.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 4.0 3.0
		vertex 0.0 3.0 3.0
		vertex 0.0 4.0 4.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 4.0 4.0
		vertex 0.0 3.0 3.0
		vertex 0.0 3.0 4.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 5.0 3.0
		vertex 0.0 4.0 3.0
		vertex 0.0 5.0 4.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 5.0 4.0
		vertex 0.0 4.0 3.0
		vertex 0.0 4.0 4.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 6.0 3.0
		vertex 0.0 5.0 3.0
		vertex 0.0 6.0 4.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 6.0 4.0
		vertex 0.0 5.0 3.0
		vertex 0.0 5.0 4.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 7.0 3.0
		vertex 0.0 6.0 3.0
		vertex 0.0 7.0 4.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 7.0 4.0
		vertex 0.0 6.0 3.0
		vertex 0.0 6.0 4.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 8.0 3.0
		vertex 0.0 7.0 3.0
		vertex 0.0 8.0 4.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 8.0 4.0
		vertex 0.0 7.0 3.0
		vertex 0.0 7.0 4.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 9.0 3.0
		vertex 0.0 8.0 3.0
		vertex 0.0 9.0 4.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 9.0 4.0
		vertex 0.0 8.0 3.0
		vertex 0.0 8.0 4.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 10.0 3.0
		vertex 0.0 9.0 3.0
		vertex 0.0 10.0 4.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 10.0 4.0
		vertex 0.0 9.0 3.0
		vertex 0.0 9.0 4.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 11.0 3.0
		vertex 0.0 10.0 3.0
		vertex 0.0 11.0 4.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 11.0 4.0
		vertex 0.0 10.0 3.0
		vertex 0.0 10.0 4.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 12.0 3.0
		vertex 0.0 11.0 3.0
		vertex 0.0 12.0 4.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 12.0 4.0
		vertex 0.0 11.0 3.0
		vertex 0.0 11.0 4.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 13.0 3.0
		vertex 0.0 12.0 3.0
		vertex 0.0 13.0 4.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 13.0 4.0
		vertex 0.0 12.0 3.0
		vertex 0.0 12.0 4.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 14.0 3.0
		vertex 0.0 13.0 3.0
		vertex 0.0 14.0 4.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 14.0 4.0
		vertex 0.0 13.0 3.0
		vertex 0.0 13.0 4.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 15.0 3.0
		vertex 0.0 14.0 3.0
		vertex 0.0 15.0 4.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 15.0 4.0
		vertex 0.0 14.0 3.0
		vertex 0.0 14.0 4.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 16.0 3.0
		vertex 0.0 15.0 3.0
		vertex 0.0 16.0 4.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 16.0 4.0
		vertex 0.0 15.0 3.0
		vertex 0.0 15.0 4.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 17.0 3.0
		vertex 0.0 16.0 3.0
		vertex 0.0 17.0 4.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 17.0 4.0
		vertex 0.0 16.0 3.0
		vertex 0.0 16.0 4.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 18.0 3.0
		vertex 0.0 17.0 3.0
		vertex 0.0 18.0 4.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 18.0 4.0
		vertex 0.0 17.0 3.0
		vertex 0.0 17.0 4.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 19.0 3.0
		vertex 0.0 18.0 3.0
		vertex 0.0 19.0 4.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 19.0 4.0
		vertex 0.0 18.0 3.0
		vertex 0.0 18.0 4.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 20.0 3.0
		vertex 0.0 19.0 3.0
		vertex 0.0 20.0 4.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 20.0 4.0
		vertex 0.0 19.0 3.0
		vertex 0.0 19.0 4.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 1.0 4.0
		vertex 0.0 0.0 4.0
		vertex 0.0 1.0 5.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 1.0 5.0
		vertex 0.0 0.0 4.0
		vertex 0.0 0.0 5.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 2.0 4.0
		vertex 0.0 1.0 4.0
		vertex 0.0 2.0 5.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 2.0 5.0
		vertex 0.0 1.0 4.0
		vertex 0.0 1.0 5.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 3.0 4.0
		vertex 0.0 2.0 4.0
		vertex 0.0 3.0 5.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 3.0 5.0
		vertex 0.0 2.0 4.0
		vertex 0.0 2.0 5.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 4.0 4.0
		vertex 0.0 3.0 4.0
		vertex 0.0 4.0 5.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 4.0 5.0
		vertex 0.0 3.0 4.0
		vertex 0.0 3.0 5.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 5.0 4.0
		vertex 0.0 4.0 4.0
		vertex 0.0 5.0 5.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 5.0 5.0
		vertex 0.0 4.0 4.0
		vertex 0.0 4.0 5.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 6.0 4.0
		vertex 0.0 5.0 4.0
		vertex 0.0 6.0 5.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 6.0 5.0
		vertex 0.0 5.0 4.0
		vertex 0.0 5.0 5.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 7.0 4.0
		vertex 0.0 6.0 4.0
		vertex 0.0 7.0 5.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 7.0 5.0
		vertex 0.0 6.0 4.0
		vertex 0.0 6.0 5.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 8.0 4.0
		vertex 0.0 7.0 4.0
		vertex 0.0 8.0 5.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 8.0 5.0
		vertex 0.0 7.0 4.0
		vertex 0.0 7.0 5.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 9.0 4.0
		vertex 0.0 8.0 4.0
		vertex 0.0 9.0 5.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 9.0 5.0
		vertex 0.0 8.0 4.0
		vertex 0.0 8.0 5.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 10.0 4.0
		vertex 0.0 9.0 4.0
		vertex 0.0 10.0 5.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 10.0 5.0
		vertex 0.0 9.0 4.0
		vertex 0.0 9.0 5.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 11.0 4.0
		vertex 0.0 10.0 4.0
		vertex 0.0 11.0 5.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 11.0 5.0
		vertex 0.0 10.0 4.0
		vertex 0.0 10.0 5.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 12.0 4.0
		vertex 0.0 11.0 4.0
		vertex 0.0 12.0 5.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 12.0 5.0
		vertex 0.0 11.0 4.0
		vertex 0.0 11.0 5.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 13.0 4.0
		vertex 0.0 12.0 4.0
		vertex 0.0 13.0 5.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 13.0 5.0
		vertex 0.0 12.0 4.0
		vertex 0.0 12.0 5.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 14.0 4.0
		vertex 0.0 13.0 4.0
		vertex 0.0 14.0 5.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 14.0 5.0
		vertex 0.0 13.0 4.0
		vertex 0.0 13.0 5.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 15.0 4.0
		vertex 0.0 14.0 4.0
		vertex 0.0 15.0 5.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 15.0 5.0
		vertex 0.0 14.0 4.0
		vertex 0.0 14.0 5.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 16.0 4.0
		vertex 0.0 15.0 4.0
		vertex 0.0 16.0 5.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 16.0 5.0
		vertex 0.0 15.0 4.0
		vertex 0.0 15.0 5.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 17.0 4.0
		vertex 0.0 16.0 4.0
		vertex 0.0 17.0 5.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 17.0 5.0
		vertex 0.0 16.0 4.0
		vertex 0.0 16.0 5.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 18.0 4.0
		vertex 0.0 17.0 4.0
		vertex 0.0 18.0 5.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 18.0 5.0
		vertex 0.0 17.0 4.0
		vertex 0.0 17.0 5.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 19.0 4.0
		vertex 0.0 18.0 4.0
		vertex 0.0 19.0 5.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 19.0 5.0
		vertex 0.0 18.0 4.0
		vertex 0.0 18.0 5.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 20.0 4.0
		vertex 0.0 19.0 4.0
		vertex 0.0 20.0 5.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 20.0 5.0
		vertex 0.0 19.0 4.0
		vertex 0.0 19.0 5.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 1.0 5.0
		vertex 0.0 0.0 5.0
		vertex 0.0 1.0 6.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 1.0 6.0
		vertex 0.0 0.0 5.0
		vertex 0.0 0.0 6.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 2.0 5.0
		vertex 0.0 1.0 5.0
		vertex 0.0 2.0 6.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 2.0 6.0
		vertex 0.0 1.0 5.0
		vertex 0.0 1.0 6.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 3.0 5.0
		vertex 0.0 2.0 5.0
		vertex 0.0 3.0 6.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 3.0 6.0
		vertex 0.0 2.0 5.0
		vertex 0.0 2.0 6.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 4.0 5.0
		vertex 0.0 3.0 5.0
		vertex 0.0 4.0 6.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 4.0 6.0
		vertex 0.0 3.0 5.0
		vertex 0.0 3.0 6.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 5.0 5.0
		vertex 0.0 4.0 5.0
		vertex 0.0 5.0 6.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 5.0 6.0
		vertex 0.0 4.0 5.0
		vertex 0.0 4.0 6.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 6.0 5.0
		vertex 0.0 5.0 5.0
		vertex 0.0 6.0 6.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 6.0 6.0
		vertex 0.0 5.0 5.0
		vertex 0.0 5.0 6.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 7.0 5.0
		vertex 0.0 6.0 5.0
		vertex 0.0 7.0 6.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 7.0 6.0
		vertex 0.0 6.0 5.0
		vertex 0.0 6.0 6.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 8.0 5.0
		vertex 0.0 7.0 5.0
		vertex 0.0 8.0 6.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 8.0 6.0
		vertex 0.0 7.0 5.0
		vertex 0.0 7.0 6.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 9.0 5.0
		vertex 0.0 8.0 5.0
		vertex 0.0 9.0 6.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 9.0 6.0
		vertex 0.0 8.0 5.0
		vertex 0.0 8.0 6.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 10.0 5.0
		vertex 0.0 9.0 5.0
		vertex 0.0 10.0 6.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 10.0 6.0
		vertex 0.0 9.0 5.0
		vertex 0.0 9.0 6.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 11.0 5.0
		vertex 0.0 10.0 5.0
		vertex 0.0 11.0 6.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 11.0 6.0
		vertex 0.0 10.0 5.0
		vertex 0.0 10.0 6.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 12.0 5.0
		vertex 0.0 11.0 5.0
		vertex 0.0 12.0 6.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 12.0 6.0
		vertex 0.0 11.0 5.0
		vertex 0.0 11.0 6.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 13.0 5.0
		vertex 0.0 12.0 5.0
		vertex 0.0 13.0 6.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 13.0 6.0
		vertex 0.0 12.0 5.0
		vertex 0.0 12.0 6.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 14.0 5.0
		vertex 0.0 13.0 5.0
		vertex 0.0 14.0 6.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 14.0 6.0
		vertex 0.0 13.0 5.0
		vertex 0.0 13.0 6.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 15.0 5.0
		vertex 0.0 14.0 5.0
		vertex 0.0 15.0 6.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 15.0 6.0
		vertex 0.0 14.0 5.0
		vertex 0.0 14.0 6.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 16.0 5.0
		vertex 0.0 15.0 5.0
		vertex 0.0 16.0 6.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 16.0 6.0
		vertex 0.0 15.0 5.0
		vertex 0.0 15.0 6.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 17.0 5.0
		vertex 0.0 16.0 5.0
		vertex 0.0 17.0 6.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 17.0 6.0
		vertex 0.0 16.0 5.0
		vertex 0.0 16.0 6.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 18.0 5.0
		vertex 0.0 17.0 5.0
		vertex 0.0 18.0 6.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 18.0 6.0
		vertex 0.0 17.0 5.0
		vertex 0.0 17.0 6.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 19.0 5.0
		vertex 0.0 18.0 5.0
		vertex 0.0 19.0 6.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 19.0 6.0
		vertex 0.0 18.0 5.0
		vertex 0.0 18.0 6.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 20.0 5.0
		vertex 0.0 19.0 5.0
		vertex 0.0 20.0 6.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 20.0 6.0
		vertex 0.0 19.0 5.0
		vertex 0.0 19.0 6.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 1.0 6.0
		vertex 0.0 0.0 6.0
		vertex 0.0 1.0 7.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 1.0 7.0
		vertex 0.0 0.0 6.0
		vertex 0.0 0.0 7.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 2.0 6.0
		vertex 0.0 1.0 6.0
		vertex 0.0 2.0 7.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 2.0 7.0
		vertex 0.0 1.0 6.0
		vertex 0.0 1.0 7.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 3.0 6.0
		vertex 0.0 2.0 6.0
		vertex 0.0 3.0 7.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 3.0 7.0
		vertex 0.0 2.0 6.0
		vertex 0.0 2.0 7.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 4.0 6.0
		vertex 0.0 3.0 6.0
		vertex 0.0 4.0 7.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 4.0 7.0
		vertex 0.0 3.0 6.0
		vertex 0.0 3.0 7.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 5.0 6.0
		vertex 0.0 4.0 6.0
		vertex 0.0 5.0 7.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 5.0 7.0
		vertex 0.0 4.0 6.0
		vertex 0.0 4.0 7.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 6.0 6.0
		vertex 0.0 5.0 6.0
		vertex 0.0 6.0 7.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 6.0 7.0
		vertex 0.0 5.0 6.0
		vertex 0.0 5.0 7.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 7.0 6.0
		vertex 0.0 6.0 6.0
		vertex 0.0 7.0 7.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 7.0 7.0
		vertex 0.0 6.0 6.0
		vertex 0.0 6.0 7.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 8.0 6.0
		vertex 0.0 7.0 6.0
		vertex 0.0 8.0 7.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 8.0 7.0
		vertex 0.0 7.0 6.0
		vertex 0.0 7.0 7.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 9.0 6.0
		vertex 0.0 8.0 6.0
		vertex 0.0 9.0 7.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 9.0 7.0
		vertex 0.0 8.0 6.0
		vertex 0.0 8.0 7.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 10.0 6.0
		vertex 0.0 9.0 6.0
		vertex 0.0 10.0 7.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 10.0 7.0
		vertex 0.0 9.0 6.0
		vertex 0.0 9.0 7.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 11.0 6.0
		vertex 0.0 10.0 6.0
		vertex 0.0 11.0 7.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 11.0 7.0
		vertex 0.0 10.0 6.0
		vertex 0.0 10.0 7.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 12.0 6.0
		vertex 0.0 11.0 6.0
		vertex 0.0 12.0 7.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 12.0 7.0
		vertex 0.0 11.0 6.0
		vertex 0.0 11.0 7.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 13.0 6.0
		vertex 0.0 12.0 6.0
		vertex 0.0 13.0 7.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 13.0 7.0
		vertex 0.0 12.0 6.0
		vertex 0.0 12.0 7.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 14.0 6.0
		vertex 0.0 13.0 6.0
		vertex 0.0 14.0 7.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 14.0 7.0
		vertex 0.0 13.0 6.0
		vertex 0.0 13.0 7.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 15.0 6.0
		vertex 0.0 14.0 6.0
		vertex 0.0 15.0 7.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 15.0 7.0
		vertex 0.0 14.0 6.0
		vertex 0.0 14.0 7.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 16.0 6.0
		vertex 0.0 15.0 6.0
		vertex 0.0 16.0 7.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 16.0 7.0
		vertex 0.0 15.0 6.0
		vertex 0.0 15.0 7.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 17.0 6.0
		vertex 0.0 16.0 6.0
		vertex 0.0 17.0 7.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 17.0 7.0
		vertex 0.0 16.0 6.0
		vertex 0.0 16.0 7.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 18.0 6.0
		vertex 0.0 17.0 6.0
		vertex 0.0 18.0 7.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 18.0 7.0
		vertex 0.0 17.0 6.0
		vertex 0.0 17.0 7.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 19.0 6.0
		vertex 0.0 18.0 6.0
		vertex 0.0 19.0 7.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 19.0 7.0
		vertex 0.0 18.0 6.0
		vertex 0.0 18.0 7.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 20.0 6.0
		vertex 0.0 19.0 6.0
		vertex 0.0 20.0 7.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 20.0 7.0
		vertex 0.0 19.0 6.0
		vertex 0.0 19.0 7.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 1.0 7.0
		vertex 0.0 0.0 7.0
		vertex 0.0 1.0 8.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 1.0 8.0
		vertex 0.0 0.0 7.0
		vertex 0.0 0.0 8.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 2.0 7.0
		vertex 0.0 1.0 7.0
		vertex 0.0 2.0 8.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 2.0 8.0
		vertex 0.0 1.0 7.0
		vertex 0.0 1.0 8.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 3.0 7.0
		vertex 0.0 2.0 7.0
		vertex 0.0 3.0 8.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 3.0 8.0
		vertex 0.0 2.0 7.0
		vertex 0.0 2.0 8.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 4.0 7.0
		vertex 0.0 3.0 7.0
		vertex 0.0 4.0 8.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 4.0 8.0
		vertex 0.0 3.0 7.0
		vertex 0.0 3.0 8.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 5.0 7.0
		vertex 0.0 4.0 7.0
		vertex 0.0 5.0 8.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 5.0 8.0
		vertex 0.0 4.0 7.0
		vertex 0.0 4.0 8.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 6.0 7.0
		vertex 0.0 5.0 7.0
		vertex 0.0 6.0 8.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 6.0 8.0
		vertex 0.0 5.0 7.0
		vertex 0.0 5.0 8.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 7.0 7.0
		vertex 0.0 6.0 7.0
		vertex 0.0 7.0 8.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 7.0 8.0
		vertex 0.0 6.0 7.0
		vertex 0.0 6.0 8.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 8.0 7.0
		vertex 0.0 7.0 7.0
		vertex 0.0 8.0 8.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 8.0 8.0
		vertex 0.0 7.0 7.0
		vertex 0.0 7.0 8.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 9.0 7.0
		vertex 0.0 8.0 7.0
		vertex 0.0 9.0 8.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 9.0 8.0
		vertex 0.0 8.0 7.0
		vertex 0.0 8.0 8.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 10.0 7.0
		vertex 0.0 9.0 7.0
		vertex 0.0 10.0 8.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 10.0 8.0
		vertex 0.0 9.0 7.0
		vertex 0.0 9.0 8.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 11.0 7.0
		vertex 0.0 10.0 7.0
		vertex 0.0 11.0 8.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 11.0 8.0
		vertex 0.0 10.0 7.0
		vertex 0.0 10.0 8.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 12.0 7.0
		vertex 0.0 11.0 7.0
		vertex 0.0 12.0 8.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 12.0 8.0
		vertex 0.0 11.0 7.0
		vertex 0.0 11.0 8.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 13.0 7.0
		vertex 0.0 12.0 7.0
		vertex 0.0 13.0 8.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 13.0 8.0
		vertex 0.0 12.0 7.0
		vertex 0.0 12.0 8.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 14.0 7.0
		vertex 0.0 13.0 7.0
		vertex 0.0 14.0 8.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 14.0 8.0
		vertex 0.0 13.0 7.0
		vertex 0.0 13.0 8.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 15.0 7.0
		vertex 0.0 14.0 7.0
		vertex 0.0 15.0 8.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 15.0 8.0
		vertex 0.0 14.0 7.0
		vertex 0.0 14.0 8.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 16.0 7.0
		vertex 0.0 15.0 7.0
		vertex 0.0 16.0 8.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 16.0 8.0
		vertex 0.0 15.0 7.0
		vertex 0.0 15.0 8.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 17.0 7.0
		vertex 0.0 16.0 7.0
		vertex 0.0 17.0 8.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 17.0 8.0
		vertex 0.0 16.0 7.0
		vertex 0.0 16.0 8.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 18.0 7.0
		vertex 0.0 17.0 7.0
		vertex 0.0 18.0 8.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 18.0 8.0
		vertex 0.0 17.0 7.0
		vertex 0.0 17.0 8.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 19.0 7.0
		vertex 0.0 18.0 7.0
		vertex 0.0 19.0 8.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 19.0 8.0
		vertex 0.0 18.0 7.0
		vertex 0.0 18.0 8.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 20.0 7.0
		vertex 0.0 19.0 7.0
		vertex 0.0 20.0 8.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 20.0 8.0
		vertex 0.0 19.0 7.0
		vertex 0.0 19.0 8.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 1.0 8.0
		vertex 0.0 0.0 8.0
		vertex 0.0 1.0 9.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 1.0 9.0
		vertex 0.0 0.0 8.0
		vertex 0.0 0.0 9.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 2.0 8.0
		vertex 0.0 1.0 8.0
		vertex 0.0 2.0 9.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 2.0 9.0
		vertex 0.0 1.0 8.0
		vertex 0.0 1.0 9.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 3.0 8.0
		vertex 0.0 2.0 8.0
		vertex 0.0 3.0 9.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 3.0 9.0
		vertex 0.0 2.0 8.0
		vertex 0.0 2.0 9.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 4.0 8.0
		vertex 0.0 3.0 8.0
		vertex 0.0 4.0 9.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 4.0 9.0
		vertex 0.0 3.0 8.0
		vertex 0.0 3.0 9.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 5.0 8.0
		vertex 0.0 4.0 8.0
		vertex 0.0 5.0 9.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 5.0 9.0
		vertex 0.0 4.0 8.0
		vertex 0.0 4.0 9.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 6.0 8.0
		vertex 0.0 5.0 8.0
		vertex 0.0 6.0 9.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 6.0 9.0
		vertex 0.0 5.0 8.0
		vertex 0.0 5.0 9.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 7.0 8.0
		vertex 0.0 6.0 8.0
		vertex 0.0 7.0 9.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 7.0 9.0
		vertex 0.0 6.0 8.0
		vertex 0.0 6.0 9.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 8.0 8.0
		vertex 0.0 7.0 8.0
		vertex 0.0 8.0 9.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 8.0 9.0
		vertex 0.0 7.0 8.0
		vertex 0.0 7.0 9.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 9.0 8.0
		vertex 0.0 8.0 8.0
		vertex 0.0 9.0 9.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 9.0 9.0
		vertex 0.0 8.0 8.0
		vertex 0.0 8.0 9.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 10.0 8.0
		vertex 0.0 9.0 8.0
		vertex 0.0 10.0 9.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 10.0 9.0
		vertex 0.0 9.0 8.0
		vertex 0.0 9.0 9.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 11.0 8.0
		vertex 0.0 10.0 8.0
		vertex 0.0 11.0 9.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 11.0 9.0
		vertex 0.0 10.0 8.0
		vertex 0.0 10.0 9.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 12.0 8.0
		vertex 0.0 11.0 8.0
		vertex 0.0 12.0 9.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 12.0 9.0
		vertex 0.0 11.0 8.0
		vertex 0.0 11.0 9.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 13.0 8.0
		vertex 0.0 12.0 8.0
		vertex 0.0 13.0 9.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 13.0 9.0
		vertex 0.0 12.0 8.0
		vertex 0.0 12.0 9.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 14.0 8.0
		vertex 0.0 13.0 8.0
		vertex 0.0 14.0 9.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 14.0 9.0
		vertex 0.0 13.0 8.0
		vertex 0.0 13.0 9.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 15.0 8.0
		vertex 0.0 14.0 8.0
		vertex 0.0 15.0 9.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 15.0 9.0
		vertex 0.0 14.0 8.0
		vertex 0.0 14.0 9.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 16.0 8.0
		vertex 0.0 15.0 8.0
		vertex 0.0 16.0 9.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 16.0 9.0
		vertex 0.0 15.0 8.0
		vertex 0.0 15.0 9.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 17.0 8.0
		vertex 0.0 16.0 8.0
		vertex 0.0 17.0 9.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 17.0 9.0
		vertex 0.0 16.0 8.0
		vertex 0.0 16.0 9.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 18.0 8.0
		vertex 0.0 17.0 8.0
		vertex 0.0 18.0 9.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 18.0 9.0
		vertex 0.0 17.0 8.0
		vertex 0.0 17.0 9.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 19.0 8.0
		vertex 0.0 18.0 8.0
		vertex 0.0 19.0 9.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 19.0 9.0
		vertex 0.0 18.0 8.0
		vertex 0.0 18.0 9.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 20.0 8.0
		vertex 0.0 19.0 8.0
		vertex 0.0 20.0 9.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 20.0 9.0
		vertex 0.0 19.0 8.0
		vertex 0.0 19.0 9.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 1.0 9.0
		vertex 0.0 0.0 9.0
		vertex 0.0 1.0 10.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 1.0 10.0
		vertex 0.0 0.0 9.0
		vertex 0.0 0.0 10.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 2.0 9.0
		vertex 0.0 1.0 9.0
		vertex 0.0 2.0 10.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 2.0 10.0
		vertex 0.0 1.0 9.0
		vertex 0.0 1.0 10.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 3.0 9.0
		vertex 0.0 2.0 9.0
		vertex 0.0 3.0 10.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 3.0 10.0
		vertex 0.0 2.0 9.0
		vertex 0.0 2.0 10.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 4.0 9.0
		vertex 0.0 3.0 9.0
		vertex 0.0 4.0 10.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 4.0 10.0
		vertex 0.0 3.0 9.0
		vertex 0.0 3.0 10.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 5.0 9.0
		vertex 0.0 4.0 9.0
		vertex 0.0 5.0 10.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 5.0 10.0
		vertex 0.0 4.0 9.0
		vertex 0.0 4.0 10.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 6.0 9.0
		vertex 0.0 5.0 9.0
		vertex 0.0 6.0 10.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 6.0 10.0
		vertex 0.0 5.0 9.0
		vertex 0.0 5.0 10.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 7.0 9.0
		vertex 0.0 6.0 9.0
		vertex 0.0 7.0 10.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 7.0 10.0
		vertex 0.0 6.0 9.0
		vertex 0.0 6.0 10.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 8.0 9.0
		vertex 0.0 7.0 9.0
		vertex 0.0 8.0 10.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 8.0 10.0
		vertex 0.0 7.0 9.0
		vertex 0.0 7.0 10.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 9.0 9.0
		vertex 0.0 8.0 9.0
		vertex 0.0 9.0 10.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 9.0 10.0
		vertex 0.0 8.0 9.0
		vertex 0.0 8.0 10.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 10.0 9.0
		vertex 0.0 9.0 9.0
		vertex 0.0 10.0 10.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 10.0 10.0
		vertex 0.0 9.0 9.0
		vertex 0.0 9.0 10.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 11.0 9.0
		vertex 0.0 10.0 9.0
		vertex 0.0 11.0 10.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 11.0 10.0
		vertex 0.0 10.0 9.0
		vertex 0.0 10.0 10.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 12.0 9.0
		vertex 0.0 11.0 9.0
		vertex 0.0 12.0 10.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 12.0 10.0
		vertex 0.0 11.0 9.0
		vertex 0.0 11.0 10.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 13.0 9.0
		vertex 0.0 12.0 9.0
		vertex 0.0 13.0 10.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 13.0 10.0
		vertex 0.0 12.0 9.0
		vertex 0.0 12.0 10.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 14.0 9.0
		vertex 0.0 13.0 9.0
		vertex 0.0 14.0 10.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 14.0 10.0
		vertex 0.0 13.0 9.0
		vertex 0.0 13.0 10.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 15.0 9.0
		vertex 0.0 14.0 9.0
		vertex 0.0 15.0 10.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 15.0 10.0
		vertex 0.0 14.0 9.0
		vertex 0.0 14.0 10.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 16.0 9.0
		vertex 0.0 15.0 9.0
		vertex 0.0 16.0 10.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 16.0 10.0
		vertex 0.0 15.0 9.0
		vertex 0.0 15.0 10.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 17.0 9.0
		vertex 0.0 16.0 9.0
		vertex 0.0 17.0 10.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 17.0 10.0
		vertex 0.0 16.0 9.0
		vertex 0.0 16.0 10.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 18.0 9.0
		vertex 0.0 17.0 9.0
		vertex 0.0 18.0 10.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 18.0 10.0
		vertex 0.0 17.0 9.0
		vertex 0.0 17.0 10.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 19.0 9.0
		vertex 0.0 18.0 9.0
		vertex 0.0 19.0 10.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 19.0 10.0
		vertex 0.0 18.0 9.0
		vertex 0.0 18.0 10.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 20.0 9.0
		vertex 0.0 19.0 9.0
		vertex 0.0 20.0 10.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 20.0 10.0
		vertex 0.0 19.0 9.0
		vertex 0.0 19.0 10.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 1.0 10.0
		vertex 0.0 0.0 10.0
		vertex 0.0 1.0 11.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 1.0 11.0
		vertex 0.0 0.0 10.0
		vertex 0.0 0.0 11.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 2.0 10.0
		vertex 0.0 1.0 10.0
		vertex 0.0 2.0 11.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 2.0 11.0
		vertex 0.0 1.0 10.0
		vertex 0.0 1.0 11.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 3.0 10.0
		vertex 0.0 2.0 10.0
		vertex 0.0 3.0 11.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 3.0 11.0
		vertex 0.0 2.0 10.0
		vertex 0.0 2.0 11.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 4.0 10.0
		vertex 0.0 3.0 10.0
		vertex 0.0 4.0 11.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 4.0 11.0
		vertex 0.0 3.0 10.0
		vertex 0.0 3.0 11.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 5.0 10.0
		vertex 0.0 4.0 10.0
		vertex 0.0 5.0 11.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 5.0 11.0
		vertex 0.0 4.0 10.0
		vertex 0.0 4.0 11.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 6.0 10.0
		vertex 0.0 5.0 10.0
		vertex 0.0 6.0 11.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 6.0 11.0
		vertex 0.0 5.0 10.0
		vertex 0.0 5.0 11.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 7.0 10.0
		vertex 0.0 6.0 10.0
		vertex 0.0 7.0 11.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 7.0 11.0
		vertex 0.0 6.0 10.0
		vertex 0.0 6.0 11.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 8.0 10.0
		vertex 0.0 7.0 10.0
		vertex 0.0 8.0 11.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 8.0 11.0
		vertex 0.0 7.0 10.0
		vertex 0.0 7.0 11.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 9.0 10.0
		vertex 0.0 8.0 10.0
		vertex 0.0 9.0 11.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 9.0 11.0
		vertex 0.0 8.0 10.0
		vertex 0.0 8.0 11.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 10.0 10.0
		vertex 0.0 9.0 10.0
		vertex 0.0 10.0 11.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 10.0 11.0
		vertex 0.0 9.0 10.0
		vertex 0.0 9.0 11.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 11.0 10.0
		vertex 0.0 10.0 10.0
		vertex 0.0 11.0 11.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 11.0 11.0
		vertex 0.0 10.0 10.0
		vertex 0.0 10.0 11.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 12.0 10.0
		vertex 0.0 11.0 10.0
		vertex 0.0 12.0 11.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 12.0 11.0
		vertex 0.0 11.0 10.0
		vertex 0.0 11.0 11.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 13.0 10.0
		vertex 0.0 12.0 10.0
		vertex 0.0 13.0 11.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 13.0 11.0
		vertex 0.0 12.0 10.0
		vertex 0.0 12.0 11.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 14.0 10.0
		vertex 0.0 13.0 10.0
		vertex 0.0 14.0 11.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 14.0 11.0
		vertex 0.0 13.0 10.0
		vertex 0.0 13.0 11.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 15.0 10.0
		vertex 0.0 14.0 10.0
		vertex 0.0 15.0 11.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 15.0 11.0
		vertex 0.0 14.0 10.0
		vertex 0.0 14.0 11.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 16.0 10.0
		vertex 0.0 15.0 10.0
		vertex 0.0 16.0 11.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 16.0 11.0
		vertex 0.0 15.0 10.0
		vertex 0.0 15.0 11.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 17.0 10.0
		vertex 0.0 16.0 10.0
		vertex 0.0 17.0 11.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 17.0 11.0
		vertex 0.0 16.0 10.0
		vertex 0.0 16.0 11.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 18.0 10.0
		vertex 0.0 17.0 10.0
		vertex 0.0 18.0 11.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 18.0 11.0
		vertex 0.0 17.0 10.0
		vertex 0.0 17.0 11.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 19.0 10.0
		vertex 0.0 18.0 10.0
		vertex 0.0 19.0 11.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 19.0 11.0
		vertex 0.0 18.0 10.0
		vertex 0.0 18.0 11.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 20.0 10.0
		vertex 0.0 19.0 10.0
		vertex 0.0 20.0 11.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 20.0 11.0
		vertex 0.0 19.0 10.0
		vertex 0.0 19.0 11.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 1.0 11.0
		vertex 0.0 0.0 11.0
		vertex 0.0 1.0 12.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 1.0 12.0
		vertex 0.0 0.0 11.0
		vertex 0.0 0.0 12.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 2.0 11.0
		vertex 0.0 1.0 11.0
		vertex 0.0 2.0 12.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 2.0 12.0
		vertex 0.0 1.0 11.0
		vertex 0.0 1.0 12.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 3.0 11.0
		vertex 0.0 2.0 11.0
		vertex 0.0 3.0 12.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 3.0 12.0
		vertex 0.0 2.0 11.0
		vertex 0.0 2.0 12.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 4.0 11.0
		vertex 0.0 3.0 11.0
		vertex 0.0 4.0 12.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 4.0 12.0
		vertex 0.0 3.0 11.0
		vertex 0.0 3.0 12.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 5.0 11.0
		vertex 0.0 4.0 11.0
		vertex 0.0 5.0 12.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 5.0 12.0
		vertex 0.0 4.0 11.0
		vertex 0.0 4.0 12.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 6.0 11.0
		vertex 0.0 5.0 11.0
		vertex 0.0 6.0 12.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 6.0 12.0
		vertex 0.0 5.0 11.0
		vertex 0.0 5.0 12.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 7.0 11.0
		vertex 0.0 6.0 11.0
		vertex 0.0 7.0 12.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 7.0 12.0
		vertex 0.0 6.0 11.0
		vertex 0.0 6.0 12.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 8.0 11.0
		vertex 0.0 7.0 11.0
		vertex 0.0 8.0 12.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 8.0 12.0
		vertex 0.0 7.0 11.0
		vertex 0.0 7.0 12.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 9.0 11.0
		vertex 0.0 8.0 11.0
		vertex 0.0 9.0 12.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 9.0 12.0
		vertex 0.0 8.0 11.0
		vertex 0.0 8.0 12.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 10.0 11.0
		vertex 0.0 9.0 11.0
		vertex 0.0 10.0 12.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 10.0 12.0
		vertex 0.0 9.0 11.0
		vertex 0.0 9.0 12.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 11.0 11.0
		vertex 0.0 10.0 11.0
		vertex 0.0 11.0 12.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 11.0 12.0
		vertex 0.0 10.0 11.0
		vertex 0.0 10.0 12.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 12.0 11.0
		vertex 0.0 11.0 11.0
		vertex 0.0 12.0 12.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 12.0 12.0
		vertex 0.0 11.0 11.0
		vertex 0.0 11.0 12.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 13.0 11.0
		vertex 0.0 12.0 11.0
		vertex 0.0 13.0 12.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 13.0 12.0
		vertex 0.0 12.0 11.0
		vertex 0.0 12.0 12.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 14.0 11.0
		vertex 0.0 13.0 11.0
		vertex 0.0 14.0 12.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 14.0 12.0
		vertex 0.0 13.0 11.0
		vertex 0.0 13.0 12.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 15.0 11.0
		vertex 0.0 14.0 11.0
		vertex 0.0 15.0 12.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 15.0 12.0
		vertex 0.0 14.0 11.0
		vertex 0.0 14.0 12.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 16.0 11.0
		vertex 0.0 15.0 11.0
		vertex 0.0 16.0 12.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 16.0 12.0
		vertex 0.0 15.0 11.0
		vertex 0.0 15.0 12.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 17.0 11.0
		vertex 0.0 16.0 11.0
		vertex 0.0 17.0 12.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 17.0 12.0
		vertex 0.0 16.0 11.0
		vertex 0.0 16.0 12.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 18.0 11.0
		vertex 0.0 17.0 11.0
		vertex 0.0 18.0 12.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 18.0 12.0
		vertex 0.0 17.0 11.0
		vertex 0.0 17.0 12.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 19.0 11.0
		vertex 0.0 18.0 11.0
		vertex 0.0 19.0 12.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 19.0 12.0
		vertex 0.0 18.0 11.0
		vertex 0.0 18.0 12.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 20.0 11.0
		vertex 0.0 19.0 11.0
		vertex 0.0 20.0 12.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 20.0 12.0
		vertex 0.0 19.0 11.0
		vertex 0.0 19.0 12.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 1.0 12.0
		vertex 0.0 0.0 12.0
		vertex 0.0 1.0 13.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 1.0 13.0
		vertex 0.0 0.0 12.0
		vertex 0.0 0.0 13.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 2.0 12.0
		vertex 0.0 1.0 12.0
		vertex 0.0 2.0 13.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 2.0 13.0
		vertex 0.0 1.0 12.0
		vertex 0.0 1.0 13.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 3.0 12.0
		vertex 0.0 2.0 12.0
		vertex 0.0 3.0 13.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 3.0 13.0
		vertex 0.0 2.0 12.0
		vertex 0.0 2.0 13.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 4.0 12.0
		vertex 0.0 3.0 12.0
		vertex 0.0 4.0 13.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 4.0 13.0
		vertex 0.0 3.0 12.0
		vertex 0.0 3.0 13.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 5.0 12.0
		vertex 0.0 4.0 12.0
		vertex 0.0 5.0 13.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 5.0 13.0
		vertex 0.0 4.0 12.0
		vertex 0.0 4.0 13.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 6.0 12.0
		vertex 0.0 5.0 12.0
		vertex 0.0 6.0 13.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 6.0 13.0
		vertex 0.0 5.0 12.0
		vertex 0.0 5.0 13.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 7.0 12.0
		vertex 0.0 6.0 12.0
		vertex 0.0 7.0 13.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 7.0 13.0
		vertex 0.0 6.0 12.0
		vertex 0.0 6.0 13.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 8.0 12.0
		vertex 0.0 7.0 12.0
		vertex 0.0 8.0 13.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 8.0 13.0
		vertex 0.0 7.0 12.0
		vertex 0.0 7.0 13.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 9.0 12.0
		vertex 0.0 8.0 12.0
		vertex 0.0 9.0 13.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 9.0 13.0
		vertex 0.0 8.0 12.0
		vertex 0.0 8.0 13.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 10.0 12.0
		vertex 0.0 9.0 12.0
		vertex 0.0 10.0 13.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 10.0 13.0
		vertex 0.0 9.0 12.0
		vertex 0.0 9.0 13.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 11.0 12.0
		vertex 0.0 10.0 12.0
		vertex 0.0 11.0 13.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 11.0 13.0
		vertex 0.0 10.0 12.0
		vertex 0.0 10.0 13.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 12.0 12.0
		vertex 0.0 11.0 12.0
		vertex 0.0 12.0 13.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 12.0 13.0
		vertex 0.0 11.0 12.0
		vertex 0.0 11.0 13.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 13.0 12.0
		vertex 0.0 12.0 12.0
		vertex 0.0 13.0 13.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 13.0 13.0
		vertex 0.0 12.0 12.0
		vertex 0.0 12.0 13.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 14.0 12.0
		vertex 0.0 13.0 12.0
		vertex 0.0 14.0 13.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 14.0 13.0
		vertex 0.0 13.0 12.0
		vertex 0.0 13.0 13.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 15.0 12.0
		vertex 0.0 14.0 12.0
		vertex 0.0 15.0 13.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 15.0 13.0
		vertex 0.0 14.0 12.0
		vertex 0.0 14.0 13.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 16.0 12.0
		vertex 0.0 15.0 12.0
		vertex 0.0 16.0 13.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 16.0 13.0
		vertex 0.0 15.0 12.0
		vertex 0.0 15.0 13.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 17.0 12.0
		vertex 0.0 16.0 12.0
		vertex 0.0 17.0 13.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 17.0 13.0
		vertex 0.0 16.0 12.0
		vertex 0.0 16.0 13.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 18.0 12.0
		vertex 0.0 17.0 12.0
		vertex 0.0 18.0 13.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 18.0 13.0
		vertex 0.0 17.0 12.0
		vertex 0.0 17.0 13.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 19.0 12.0
		vertex 0.0 18.0 12.0
		vertex 0.0 19.0 13.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 19.0 13.0
		vertex 0.0 18.0 12.0
		vertex 0.0 18.0 13.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 20.0 12.0
		vertex 0.0 19.0 12.0
		vertex 0.0 20.0 13.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 20.0 13.0
		vertex 0.0 19.0 12.0
		vertex 0.0 19.0 13.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 1.0 13.0
		vertex 0.0 0.0 13.0
		vertex 0.0 1.0 14.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 1.0 14.0
		vertex 0.0 0.0 13.0
		vertex 0.0 0.0 14.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 2.0 13.0
		vertex 0.0 1.0 13.0
		vertex 0.0 2.0 14.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 2.0 14.0
		vertex 0.0 1.0 13.0
		vertex 0.0 1.0 14.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 3.0 13.0
		vertex 0.0 2.0 13.0
		vertex 0.0 3.0 14.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 3.0 14.0
		vertex 0.0 2.0 13.0
		vertex 0.0 2.0 14.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 4.0 13.0
		vertex 0.0 3.0 13.0
		vertex 0.0 4.0 14.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 4.0 14.0
		vertex 0.0 3.0 13.0
		vertex 0.0 3.0 14.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 5.0 13.0
		vertex 0.0 4.0 13.0
		vertex 0.0 5.0 14.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 5.0 14.0
		vertex 0.0 4.0 13.0
		vertex 0.0 4.0 14.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 6.0 13.0
		vertex 0.0 5.0 13.0
		vertex 0.0 6.0 14.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 6.0 14.0
		vertex 0.0 5.0 13.0
		vertex 0.0 5.0 14.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 7.0 13.0
		vertex 0.0 6.0 13.0
		vertex 0.0 7.0 14.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 7.0 14.0
		vertex 0.0 6.0 13.0
		vertex 0.0 6.0 14.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 8.0 13.0
		vertex 0.0 7.0 13.0
		vertex 0.0 8.0 14.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 8.0 14.0
		vertex 0.0 7.0 13.0
		vertex 0.0 7.0 14.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 9.0 13.0
		vertex 0.0 8.0 13.0
		vertex 0.0 9.0 14.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 9.0 14.0
		vertex 0.0 8.0 13.0
		vertex 0.0 8.0 14.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 10.0 13.0
		vertex 0.0 9.0 13.0
		vertex 0.0 10.0 14.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 10.0 14.0
		vertex 0.0 9.0 13.0
		vertex 0.0 9.0 14.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 11.0 13.0
		vertex 0.0 10.0 13.0
		vertex 0.0 11.0 14.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 11.0 14.0
		vertex 0.0 10.0 13.0
		vertex 0.0 10.0 14.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 12.0 13.0
		vertex 0.0 11.0 13.0
		vertex 0.0 12.0 14.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 12.0 14.0
		vertex 0.0 11.0 13.0
		vertex 0.0 11.0 14.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 13.0 13.0
		vertex 0.0 12.0 13.0
		vertex 0.0 13.0 14.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 13.0 14.0
		vertex 0.0 12.0 13.0
		vertex 0.0 12.0 14.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 14.0 13.0
		vertex 0.0 13.0 13.0
		vertex 0.0 14.0 14.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 14.0 14.0
		vertex 0.0 13.0 13.0
		vertex 0.0 13.0 14.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 15.0 13.0
		vertex 0.0 14.0 13.0
		vertex 0.0 15.0 14.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 15.0 14.0
		vertex 0.0 14.0 13.0
		vertex 0.0 14.0 14.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 16.0 13.0
		vertex 0.0 15.0 13.0
		vertex 0.0 16.0 14.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 16.0 14.0
		vertex 0.0 15.0 13.0
		vertex 0.0 15.0 14.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 17.0 13.0
		vertex 0.0 16.0 13.0
		vertex 0.0 17.0 14.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 17.0 14.0
		vertex 0.0 16.0 13.0
		vertex 0.0 16.0 14.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 18.0 13.0
		vertex 0.0 17.0 13.0
		vertex 0.0 18.0 14.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 18.0 14.0
		vertex 0.0 17.0 13.0
		vertex 0.0 17.0 14.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 19.0 13.0
		vertex 0.0 18.0 13.0
		vertex 0.0 19.0 14.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 19.0 14.0
		vertex 0.0 18.0 13.0
		vertex 0.0 18.0 14.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 20.0 13.0
		vertex 0.0 19.0 13.0
		vertex 0.0 20.0 14.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 20.0 14.0
		vertex 0.0 19.0 13.0
		vertex 0.0 19.0 14.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 1.0 14.0
		vertex 0.0 0.0 14.0
		vertex 0.0 1.0 15.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 1.0 15.0
		vertex 0.0 0.0 14.0
		vertex 0.0 0.0 15.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 2.0 14.0
		vertex 0.0 1.0 14.0
		vertex 0.0 2.0 15.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 2.0 15.0
		vertex 0.0 1.0 14.0
		vertex 0.0 1.0 15.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 3.0 14.0
		vertex 0.0 2.0 14.0
		vertex 0.0 3.0 15.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 3.0 15.0
		vertex 0.0 2.0 14.0
		vertex 0.0 2.0 15.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 4.0 14.0
		vertex 0.0 3.0 14.0
		vertex 0.0 4.0 15.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 4.0 15.0
		vertex 0.0 3.0 14.0
		vertex 0.0 3.0 15.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 5.0 14.0
		vertex 0.0 4.0 14.0
		vertex 0.0 5.0 15.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 5.0 15.0
		vertex 0.0 4.0 14.0
		vertex 0.0 4.0 15.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 6.0 14.0
		vertex 0.0 5.0 14.0
		vertex 0.0 6.0 15.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 6.0 15.0
		vertex 0.0 5.0 14.0
		vertex 0.0 5.0 15.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 7.0 14.0
		vertex 0.0 6.0 14.0
		vertex 0.0 7.0 15.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 7.0 15.0
		vertex 0.0 6.0 14.0
		vertex 0.0 6.0 15.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 8.0 14.0
		vertex 0.0 7.0 14.0
		vertex 0.0 8.0 15.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 8.0 15.0
		vertex 0.0 7.0 14.0
		vertex 0.0 7.0 15.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 9.0 14.0
		vertex 0.0 8.0 14.0
		vertex 0.0 9.0 15.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 9.0 15.0
		vertex 0.0 8.0 14.0
		vertex 0.0 8.0 15.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 10.0 14.0
		vertex 0.0 9.0 14.0
		vertex 0.0 10.0 15.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 10.0 15.0
		vertex 0.0 9.0 14.0
		vertex 0.0 9.0 15.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 11.0 14.0
		vertex 0.0 10.0 14.0
		vertex 0.0 11.0 15.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 11.0 15.0
		vertex 0.0 10.0 14.0
		vertex 0.0 10.0 15.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 12.0 14.0
		vertex 0.0 11.0 14.0
		vertex 0.0 12.0 15.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 12.0 15.0
		vertex 0.0 11.0 14.0
		vertex 0.0 11.0 15.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 13.0 14.0
		vertex 0.0 12.0 14.0
		vertex 0.0 13.0 15.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 13.0 15.0
		vertex 0.0 12.0 14.0
		vertex 0.0 12.0 15.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 14.0 14.0
		vertex 0.0 13.0 14.0
		vertex 0.0 14.0 15.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 14.0 15.0
		vertex 0.0 13.0 14.0
		vertex 0.0 13.0 15.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 15.0 14.0
		vertex 0.0 14.0 14.0
		vertex 0.0 15.0 15.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 15.0 15.0
		vertex 0.0 14.0 14.0
		vertex 0.0 14.0 15.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 16.0 14.0
		vertex 0.0 15.0 14.0
		vertex 0.0 16.0 15.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 16.0 15.0
		vertex 0.0 15.0 14.0
		vertex 0.0 15.0 15.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 17.0 14.0
		vertex 0.0 16.0 14.0
		vertex 0.0 17.0 15.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 17.0 15.0
		vertex 0.0 16.0 14.0
		vertex 0.0 16.0 15.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 18.0 14.0
		vertex 0.0 17.0 14.0
		vertex 0.0 18.0 15.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 18.0 15.0
		vertex 0.0 17.0 14.0
		vertex 0.0 17.0 15.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 19.0 14.0
		vertex 0.0 18.0 14.0
		vertex 0.0 19.0 15.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 19.0 15.0
		vertex 0.0 18.0 14.0
		vertex 0.0 18.0 15.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 20.0 14.0
		vertex 0.0 19.0 14.0
		vertex 0.0 20.0 15.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 20.0 15.0
		vertex 0.0 19.0 14.0
		vertex 0.0 19.0 15.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 1.0 15.0
		vertex 0.0 0.0 15.0
		vertex 0.0 1.0 16.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 1.0 16.0
		vertex 0.0 0.0 15.0
		vertex 0.0 0.0 16.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 2.0 15.0
		vertex 0.0 1.0 15.0
		vertex 0.0 2.0 16.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 2.0 16.0
		vertex 0.0 1.0 15.0
		vertex 0.0 1.0 16.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 3.0 15.0
		vertex 0.0 2.0 15.0
		vertex 0.0 3.0 16.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 3.0 16.0
		vertex 0.0 2.0 15.0
		vertex 0.0 2.0 16.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 4.0 15.0
		vertex 0.0 3.0 15.0
		vertex 0.0 4.0 16.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 4.0 16.0
		vertex 0.0 3.0 15.0
		vertex 0.0 3.0 16.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 5.0 15.0
		vertex 0.0 4.0 15.0
		vertex 0.0 5.0 16.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 5.0 16.0
		vertex 0.0 4.0 15.0
		vertex 0.0 4.0 16.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 6.0 15.0
		vertex 0.0 5.0 15.0
		vertex 0.0 6.0 16.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 6.0 16.0
		vertex 0.0 5.0 15.0
		vertex 0.0 5.0 16.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 7.0 15.0
		vertex 0.0 6.0 15.0
		vertex 0.0 7.0 16.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 7.0 16.0
		vertex 0.0 6.0 15.0
		vertex 0.0 6.0 16.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 8.0 15.0
		vertex 0.0 7.0 15.0
		vertex 0.0 8.0 16.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 8.0 16.0
		vertex 0.0 7.0 15.0
		vertex 0.0 7.0 16.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 9.0 15.0
		vertex 0.0 8.0 15.0
		vertex 0.0 9.0 16.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 9.0 16.0
		vertex 0.0 8.0 15.0
		vertex 0.0 8.0 16.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 10.0 15.0
		vertex 0.0 9.0 15.0
		vertex 0.0 10.0 16.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 10.0 16.0
		vertex 0.0 9.0 15.0
		vertex 0.0 9.0 16.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 11.0 15.0
		vertex 0.0 10.0 15.0
		vertex 0.0 11.0 16.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 11.0 16.0
		vertex 0.0 10.0 15.0
		vertex 0.0 10.0 16.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 12.0 15.0
		vertex 0.0 11.0 15.0
		vertex 0.0 12.0 16.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 12.0 16.0
		vertex 0.0 11.0 15.0
		vertex 0.0 11.0 16.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 13.0 15.0
		vertex 0.0 12.0 15.0
		vertex 0.0 13.0 16.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 13.0 16.0
		vertex 0.0 12.0 15.0
		vertex 0.0 12.0 16.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 14.0 15.0
		vertex 0.0 13.0 15.0
		vertex 0.0 14.0 16.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 14.0 16.0
		vertex 0.0 13.0 15.0
		vertex 0.0 13.0 16.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 15.0 15.0
		vertex 0.0 14.0 15.0
		vertex 0.0 15.0 16.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 15.0 16.0
		vertex 0.0 14.0 15.0
		vertex 0.0 14.0 16.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 16.0 15.0
		vertex 0.0 15.0 15.0
		vertex 0.0 16.0 16.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 16.0 16.0
		vertex 0.0 15.0 15.0
		vertex 0.0 15.0 16.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 17.0 15.0
		vertex 0.0 16.0 15.0
		vertex 0.0 17.0 16.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 17.0 16.0
		vertex 0.0 16.0 15.0
		vertex 0.0 16.0 16.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 18.0 15.0
		vertex 0.0 17.0 15.0
		vertex 0.0 18.0 16.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 18.0 16.0
		vertex 0.0 17.0 15.0
		vertex 0.0 17.0 16.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 19.0 15.0
		vertex 0.0 18.0 15.0
		vertex 0.0 19.0 16.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 19.0 16.0
		vertex 0.0 18.0 15.0
		vertex 0.0 18.0 16.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 20.0 15.0
		vertex 0.0 19.0 15.0
		vertex 0.0 20.0 16.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 20.0 16.0
		vertex 0.0 19.0 15.0
		vertex 0.0 19.0 16.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 1.0 16.0
		vertex 0.0 0.0 16.0
		vertex 0.0 1.0 17.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 1.0 17.0
		vertex 0.0 0.0 16.0
		vertex 0.0 0.0 17.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 2.0 16.0
		vertex 0.0 1.0 16.0
		vertex 0.0 2.0 17.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 2.0 17.0
		vertex 0.0 1.0 16.0
		vertex 0.0 1.0 17.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 3.0 16.0
		vertex 0.0 2.0 16.0
		vertex 0.0 3.0 17.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 3.0 17.0
		vertex 0.0 2.0 16.0
		vertex 0.0 2.0 17.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 4.0 16.0
		vertex 0.0 3.0 16.0
		vertex 0.0 4.0 17.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 4.0 17.0
		vertex 0.0 3.0 16.0
		vertex 0.0 3.0 17.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 5.0 16.0
		vertex 0.0 4.0 16.0
		vertex 0.0 5.0 17.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 5.0 17.0
		vertex 0.0 4.0 16.0
		vertex 0.0 4.0 17.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 6.0 16.0
		vertex 0.0 5.0 16.0
		vertex 0.0 6.0 17.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 6.0 17.0
		vertex 0.0 5.0 16.0
		vertex 0.0 5.0 17.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 7.0 16.0
		vertex 0.0 6.0 16.0
		vertex 0.0 7.0 17.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 7.0 17.0
		vertex 0.0 6.0 16.0
		vertex 0.0 6.0 17.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 8.0 16.0
		vertex 0.0 7.0 16.0
		vertex 0.0 8.0 17.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 8.0 17.0
		vertex 0.0 7.0 16.0
		vertex 0.0 7.0 17.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 9.0 16.0
		vertex 0.0 8.0 16.0
		vertex 0.0 9.0 17.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 9.0 17.0
		vertex 0.0 8.0 16.0
		vertex 0.0 8.0 17.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 10.0 16.0
		vertex 0.0 9.0 16.0
		vertex 0.0 10.0 17.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 10.0 17.0
		vertex 0.0 9.0 16.0
		vertex 0.0 9.0 17.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 11.0 16.0
		vertex 0.0 10.0 16.0
		vertex 0.0 11.0 17.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 11.0 17.0
		vertex 0.0 10.0 16.0
		vertex 0.0 10.0 17.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 12.0 16.0
		vertex 0.0 11.0 16.0
		vertex 0.0 12.0 17.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 12.0 17.0
		vertex 0.0 11.0 16.0
		vertex 0.0 11.0 17.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 13.0 16.0
		vertex 0.0 12.0 16.0
		vertex 0.0 13.0 17.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 13.0 17.0
		vertex 0.0 12.0 16.0
		vertex 0.0 12.0 17.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 14.0 16.0
		vertex 0.0 13.0 16.0
		vertex 0.0 14.0 17.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 14.0 17.0
		vertex 0.0 13.0 16.0
		vertex 0.0 13.0 17.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 15.0 16.0
		vertex 0.0 14.0 16.0
		vertex 0.0 15.0 17.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 15.0 17.0
		vertex 0.0 14.0 16.0
		vertex 0.0 14.0 17.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 16.0 16.0
		vertex 0.0 15.0 16.0
		vertex 0.0 16.0 17.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 16.0 17.0
		vertex 0.0 15.0 16.0
		vertex 0.0 15.0 17.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 17.0 16.0
		vertex 0.0 16.0 16.0
		vertex 0.0 17.0 17.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 17.0 17.0
		vertex 0.0 16.0 16.0
		vertex 0.0 16.0 17.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 18.0 16.0
		vertex 0.0 17.0 16.0
		vertex 0.0 18.0 17.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 18.0 17.0
		vertex 0.0 17.0 16.0
		vertex 0.0 17.0 17.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 19.0 16.0
		vertex 0.0 18.0 16.0
		vertex 0.0 19.0 17.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 19.0 17.0
		vertex 0.0 18.0 16.0
		vertex 0.0 18.0 17.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 20.0 16.0
		vertex 0.0 19.0 16.0
		vertex 0.0 20.0 17.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 20.0 17.0
		vertex 0.0 19.0 16.0
		vertex 0.0 19.0 17.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 1.0 17.0
		vertex 0.0 0.0 17.0
		vertex 0.0 1.0 18.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 1.0 18.0
		vertex 0.0 0.0 17.0
		vertex 0.0 0.0 18.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 2.0 17.0
		vertex 0.0 1.0 17.0
		vertex 0.0 2.0 18.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 2.0 18.0
		vertex 0.0 1.0 17.0
		vertex 0.0 1.0 18.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 3.0 17.0
		vertex 0.0 2.0 17.0
		vertex 0.0 3.0 18.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 3.0 18.0
		vertex 0.0 2.0 17.0
		vertex 0.0 2.0 18.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 4.0 17.0
		vertex 0.0 3.0 17.0
		vertex 0.0 4.0 18.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 4.0 18.0
		vertex 0.0 3.0 17.0
		vertex 0.0 3.0 18.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 5.0 17.0
		vertex 0.0 4.0 17.0
		vertex 0.0 5.0 18.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 5.0 18.0
		vertex 0.0 4.0 17.0
		vertex 0.0 4.0 18.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 6.0 17.0
		vertex 0.0 5.0 17.0
		vertex 0.0 6.0 18.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 6.0 18.0
		vertex 0.0 5.0 17.0
		vertex 0.0 5.0 18.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 7.0 17.0
		vertex 0.0 6.0 17.0
		vertex 0.0 7.0 18.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 7.0 18.0
		vertex 0.0 6.0 17.0
		vertex 0.0 6.0 18.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 8.0 17.0
		vertex 0.0 7.0 17.0
		vertex 0.0 8.0 18.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 8.0 18.0
		vertex 0.0 7.0 17.0
		vertex 0.0 7.0 18.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 9.0 17.0
		vertex 0.0 8.0 17.0
		vertex 0.0 9.0 18.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 9.0 18.0
		vertex 0.0 8.0 17.0
		vertex 0.0 8.0 18.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 10.0 17.0
		vertex 0.0 9.0 17.0
		vertex 0.0 10.0 18.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 10.0 18.0
		vertex 0.0 9.0 17.0
		vertex 0.0 9.0 18.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 11.0 17.0
		vertex 0.0 10.0 17.0
		vertex 0.0 11.0 18.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 11.0 18.0
		vertex 0.0 10.0 17.0
		vertex 0.0 10.0 18.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 12.0 17.0
		vertex 0.0 11.0 17.0
		vertex 0.0 12.0 18.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 12.0 18.0
		vertex 0.0 11.0 17.0
		vertex 0.0 11.0 18.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 13.0 17.0
		vertex 0.0 12.0 17.0
		vertex 0.0 13.0 18.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 13.0 18.0
		vertex 0.0 12.0 17.0
		vertex 0.0 12.0 18.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 14.0 17.0
		vertex 0.0 13.0 17.0
		vertex 0.0 14.0 18.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 14.0 18.0
		vertex 0.0 13.0 17.0
		vertex 0.0 13.0 18.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 15.0 17.0
		vertex 0.0 14.0 17.0
		vertex 0.0 15.0 18.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 15.0 18.0
		vertex 0.0 14.0 17.0
		vertex 0.0 14.0 18.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 16.0 17.0
		vertex 0.0 15.0 17.0
		vertex 0.0 16.0 18.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 16.0 18.0
		vertex 0.0 15.0 17.0
		vertex 0.0 15.0 18.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 17.0 17.0
		vertex 0.0 16.0 17.0
		vertex 0.0 17.0 18.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 17.0 18.0
		vertex 0.0 16.0 17.0
		vertex 0.0 16.0 18.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 18.0 17.0
		vertex 0.0 17.0 17.0
		vertex 0.0 18.0 18.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 18.0 18.0
		vertex 0.0 17.0 17.0
		vertex 0.0 17.0 18.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 19.0 17.0
		vertex 0.0 18.0 17.0
		vertex 0.0 19.0 18.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 19.0 18.0
		vertex 0.0 18.0 17.0
		vertex 0.0 18.0 18.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 20.0 17.0
		vertex 0.0 19.0 17.0
		vertex 0.0 20.0 18.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 20.0 18.0
		vertex 0.0 19.0 17.0
		vertex 0.0 19.0 18.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 1.0 18.0
		vertex 0.0 0.0 18.0
		vertex 0.0 1.0 19.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 1.0 19.0
		vertex 0.0 0.0 18.0
		vertex 0.0 0.0 19.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 2.0 18.0
		vertex 0.0 1.0 18.0
		vertex 0.0 2.0 19.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 2.0 19.0
		vertex 0.0 1.0 18.0
		vertex 0.0 1.0 19.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 3.0 18.0
		vertex 0.0 2.0 18.0
		vertex 0.0 3.0 19.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 3.0 19.0
		vertex 0.0 2.0 18.0
		vertex 0.0 2.0 19.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 4.0 18.0
		vertex 0.0 3.0 18.0
		vertex 0.0 4.0 19.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 4.0 19.0
		vertex 0.0 3.0 18.0
		vertex 0.0 3.0 19.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 5.0 18.0
		vertex 0.0 4.0 18.0
		vertex 0.0 5.0 19.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 5.0 19.0
		vertex 0.0 4.0 18.0
		vertex 0.0 4.0 19.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 6.0 18.0
		vertex 0.0 5.0 18.0
		vertex 0.0 6.0 19.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 6.0 19.0
		vertex 0.0 5.0 18.0
		vertex 0.0 5.0 19.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 7.0 18.0
		vertex 0.0 6.0 18.0
		vertex 0.0 7.0 19.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 7.0 19.0
		vertex 0.0 6.0 18.0
		vertex 0.0 6.0 19.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 8.0 18.0
		vertex 0.0 7.0 18.0
		vertex 0.0 8.0 19.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 8.0 19.0
		vertex 0.0 7.0 18.0
		vertex 0.0 7.0 19.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 9.0 18.0
		vertex 0.0 8.0 18.0
		vertex 0.0 9.0 19.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 9.0 19.0
		vertex 0.0 8.0 18.0
		vertex 0.0 8.0 19.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 10.0 18.0
		vertex 0.0 9.0 18.0
		vertex 0.0 10.0 19.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 10.0 19.0
		vertex 0.0 9.0 18.0
		vertex 0.0 9.0 19.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 11.0 18.0
		vertex 0.0 10.0 18.0
		vertex 0.0 11.0 19.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 11.0 19.0
		vertex 0.0 10.0 18.0
		vertex 0.0 10.0 19.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 12.0 18.0
		vertex 0.0 11.0 18.0
		vertex 0.0 12.0 19.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 12.0 19.0
		vertex 0.0 11.0 18.0
		vertex 0.0 11.0 19.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 13.0 18.0
		vertex 0.0 12.0 18.0
		vertex 0.0 13.0 19.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 13.0 19.0
		vertex 0.0 12.0 18.0
		vertex 0.0 12.0 19.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 14.0 18.0
		vertex 0.0 13.0 18.0
		vertex 0.0 14.0 19.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 14.0 19.0
		vertex 0.0 13.0 18.0
		vertex 0.0 13.0 19.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 15.0 18.0
		vertex 0.0 14.0 18.0
		vertex 0.0 15.0 19.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 15.0 19.0
		vertex 0.0 14.0 18.0
		vertex 0.0 14.0 19.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 16.0 18.0
		vertex 0.0 15.0 18.0
		vertex 0.0 16.0 19.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 16.0 19.0
		vertex 0.0 15.0 18.0
		vertex 0.0 15.0 19.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 17.0 18.0
		vertex 0.0 16.0 18.0
		vertex 0.0 17.0 19.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 17.0 19.0
		vertex 0.0 16.0 18.0
		vertex 0.0 16.0 19.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 18.0 18.0
		vertex 0.0 17.0 18.0
		vertex 0.0 18.0 19.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 18.0 19.0
		vertex 0.0 17.0 18.0
		vertex 0.0 17.0 19.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 19.0 18.0
		vertex 0.0 18.0 18.0
		vertex 0.0 19.0 19.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 19.0 19.0
		vertex 0.0 18.0 18.0
		vertex 0.0 18.0 19.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 20.0 18.0
		vertex 0.0 19.0 18.0
		vertex 0.0 20.0 19.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 20.0 19.0
		vertex 0.0 19.0 18.0
		vertex 0.0 19.0 19.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 1.0 19.0
		vertex 0.0 0.0 19.0
		vertex 0.0 1.0 20.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 1.0 20.0
		vertex 0.0 0.0 19.0
		vertex 0.0 0.0 20.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 2.0 19.0
		vertex 0.0 1.0 19.0
		vertex 0.0 2.0 20.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 2.0 20.0
		vertex 0.0 1.0 19.0
		vertex 0.0 1.0 20.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 3.0 19.0
		vertex 0.0 2.0 19.0
		vertex 0.0 3.0 20.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 3.0 20.0
		vertex 0.0 2.0 19.0
		vertex 0.0 2.0 20.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 4.0 19.0
		vertex 0.0 3.0 19.0
		vertex 0.0 4.0 20.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 4.0 20.0
		vertex 0.0 3.0 19.0
		vertex 0.0 3.0 20.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 5.0 19.0
		vertex 0.0 4.0 19.0
		vertex 0.0 5.0 20.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 5.0 20.0
		vertex 0.0 4.0 19.0
		vertex 0.0 4.0 20.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 6.0 19.0
		vertex 0.0 5.0 19.0
		vertex 0.0 6.0 20.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 6.0 20.0
		vertex 0.0 5.0 19.0
		vertex 0.0 5.0 20.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 7.0 19.0
		vertex 0.0 6.0 19.0
		vertex 0.0 7.0 20.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 7.0 20.0
		vertex 0.0 6.0 19.0
		vertex 0.0 6.0 20.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 8.0 19.0
		vertex 0.0 7.0 19.0
		vertex 0.0 8.0 20.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 8.0 20.0
		vertex 0.0 7.0 19.0
		vertex 0.0 7.0 20.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 9.0 19.0
		vertex 0.0 8.0 19.0
		vertex 0.0 9.0 20.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 9.0 20.0
		vertex 0.0 8.0 19.0
		vertex 0.0 8.0 20.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 10.0 19.0
		vertex 0.0 9.0 19.0
		vertex 0.0 10.0 20.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 10.0 20.0
		vertex 0.0 9.0 19.0
		vertex 0.0 9.0 20.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 11.0 19.0
		vertex 0.0 10.0 19.0
		vertex 0.0 11.0 20.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 11.0 20.0
		vertex 0.0 10.0 19.0
		vertex 0.0 10.0 20.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 12.0 19.0
		vertex 0.0 11.0 19.0
		vertex 0.0 12.0 20.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 12.0 20.0
		vertex 0.0 11.0 19.0
		vertex 0.0 11.0 20.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 13.0 19.0
		vertex 0.0 12.0 19.0
		vertex 0.0 13.0 20.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 13.0 20.0
		vertex 0.0 12.0 19.0
		vertex 0.0 12.0 20.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 14.0 19.0
		vertex 0.0 13.0 19.0
		vertex 0.0 14.0 20.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 14.0 20.0
		vertex 0.0 13.0 19.0
		vertex 0.0 13.0 20.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 15.0 19.0
		vertex 0.0 14.0 19.0
		vertex 0.0 15.0 20.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 15.0 20.0
		vertex 0.0 14.0 19.0
		vertex 0.0 14.0 20.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 16.0 19.0
		vertex 0.0 15.0 19.0
		vertex 0.0 16.0 20.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 16.0 20.0
		vertex 0.0 15.0 19.0
		vertex 0.0 15.0 20.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 17.0 19.0
		vertex 0.0 16.0 19.0
		vertex 0.0 17.0 20.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 17.0 20.0
		vertex 0.0 16.0 19.0
		vertex 0.0 16.0 20.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 18.0 19.0
		vertex 0.0 17.0 19.0
		vertex 0.0 18.0 20.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 18.0 20.0
		vertex 0.0 17.0 19.0
		vertex 0.0 17.0 20.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 19.0 19.0
		vertex 0.0 18.0 19.0
		vertex 0.0 19.0 20.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 19.0 20.0
		vertex 0.0 18.0 19.0
		vertex 0.0 18.0 20.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 20.0 19.0
		vertex 0.0 19.0 19.0
		vertex 0.0 20.0 20.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 20.0 20.0
		vertex 0.0 19.0 19.0
		vertex 0.0 19.0 20.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 1.0 20.0
		vertex 0.0 0.0 20.0
		vertex 0.0 1.0 21.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 1.0 21.0
		vertex 0.0 0.0 20.0
		vertex 0.0 0.0 21.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 2.0 20.0
		vertex 0.0 1.0 20.0
		vertex 0.0 2.0 21.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 2.0 21.0
		vertex 0.0 1.0 20.0
		vertex 0.0 1.0 21.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 3.0 20.0
		vertex 0.0 2.0 20.0
		vertex 0.0 3.0 21.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 3.0 21.0
		vertex 0.0 2.0 20.0
		vertex 0.0 2.0 21.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 4.0 20.0
		vertex 0.0 3.0 20.0
		vertex 0.0 4.0 21.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 4.0 21.0
		vertex 0.0 3.0 20.0
		vertex 0.0 3.0 21.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 5.0 20.0
		vertex 0.0 4.0 20.0
		vertex 0.0 5.0 21.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 5.0 21.0
		vertex 0.0 4.0 20.0
		vertex 0.0 4.0 21.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 6.0 20.0
		vertex 0.0 5.0 20.0
		vertex 0.0 6.0 21.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 6.0 21.0
		vertex 0.0 5.0 20.0
		vertex 0.0 5.0 21.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 7.0 20.0
		vertex 0.0 6.0 20.0
		vertex 0.0 7.0 21.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 7.0 21.0
		vertex 0.0 6.0 20.0
		vertex 0.0 6.0 21.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 8.0 20.0
		vertex 0.0 7.0 20.0
		vertex 0.0 8.0 21.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 8.0 21.0
		vertex 0.0 7.0 20.0
		vertex 0.0 7.0 21.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 9.0 20.0
		vertex 0.0 8.0 20.0
		vertex 0.0 9.0 21.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 9.0 21.0
		vertex 0.0 8.0 20.0
		vertex 0.0 8.0 21.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 10.0 20.0
		vertex 0.0 9.0 20.0
		vertex 0.0 10.0 21.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 10.0 21.0
		vertex 0.0 9.0 20.0
		vertex 0.0 9.0 21.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 11.0 20.0
		vertex 0.0 10.0 20.0
		vertex 0.0 11.0 21.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 11.0 21.0
		vertex 0.0 10.0 20.0
		vertex 0.0 10.0 21.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 12.0 20.0
		vertex 0.0 11.0 20.0
		vertex 0.0 12.0 21.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 12.0 21.0
		vertex 0.0 11.0 20.0
		vertex 0.0 11.0 21.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 13.0 20.0
		vertex 0.0 12.0 20.0
		vertex 0.0 13.0 21.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 13.0 21.0
		vertex 0.0 12.0 20.0
		vertex 0.0 12.0 21.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 14.0 20.0
		vertex 0.0 13.0 20.0
		vertex 0.0 14.0 21.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 14.0 21.0
		vertex 0.0 13.0 20.0
		vertex 0.0 13.0 21.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 15.0 20.0
		vertex 0.0 14.0 20.0
		vertex 0.0 15.0 21.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 15.0 21.0
		vertex 0.0 14.0 20.0
		vertex 0.0 14.0 21.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 16.0 20.0
		vertex 0.0 15.0 20.0
		vertex 0.0 16.0 21.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 16.0 21.0
		vertex 0.0 15.0 20.0
		vertex 0.0 15.0 21.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 17.0 20.0
		vertex 0.0 16.0 20.0
		vertex 0.0 17.0 21.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 17.0 21.0
		vertex 0.0 16.0 20.0
		vertex 0.0 16.0 21.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 18.0 20.0
		vertex 0.0 17.0 20.0
		vertex 0.0 18.0 21.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 18.0 21.0
		vertex 0.0 17.0 20.0
		vertex 0.0 17.0 21.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 19.0 20.0
		vertex 0.0 18.0 20.0
		vertex 0.0 19.0 21.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 19.0 21.0
		vertex 0.0 18.0 20.0
		vertex 0.0 18.0 21.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 20.0 20.0
		vertex 0.0 19.0 20.0
		vertex 0.0 20.0 21.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 20.0 21.0
		vertex 0.0 19.0 20.0
		vertex 0.0 19.0 21.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 1.0 21.0
		vertex 0.0 0.0 21.0
		vertex 0.0 1.0 22.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 1.0 22.0
		vertex 0.0 0.0 21.0
		vertex 0.0 0.0 22.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 2.0 21.0
		vertex 0.0 1.0 21.0
		vertex 0.0 2.0 22.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 2.0 22.0
		vertex 0.0 1.0 21.0
		vertex 0.0 1.0 22.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 3.0 21.0
		vertex 0.0 2.0 21.0
		vertex 0.0 3.0 22.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 3.0 22.0
		vertex 0.0 2.0 21.0
		vertex 0.0 2.0 22.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 4.0 21.0
		vertex 0.0 3.0 21.0
		vertex 0.0 4.0 22.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 4.0 22.0
		vertex 0.0 3.0 21.0
		vertex 0.0 3.0 22.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 5.0 21.0
		vertex 0.0 4.0 21.0
		vertex 0.0 5.0 22.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 5.0 22.0
		vertex 0.0 4.0 21.0
		vertex 0.0 4.0 22.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 6.0 21.0
		vertex 0.0 5.0 21.0
		vertex 0.0 6.0 22.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 6.0 22.0
		vertex 0.0 5.0 21.0
		vertex 0.0 5.0 22.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 7.0 21.0
		vertex 0.0 6.0 21.0
		vertex 0.0 7.0 22.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 7.0 22.0
		vertex 0.0 6.0 21.0
		vertex 0.0 6.0 22.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 8.0 21.0
		vertex 0.0 7.0 21.0
		vertex 0.0 8.0 22.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 8.0 22.0
		vertex 0.0 7.0 21.0
		vertex 0.0 7.0 22.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 9.0 21.0
		vertex 0.0 8.0 21.0
		vertex 0.0 9.0 22.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 9.0 22.0
		vertex 0.0 8.0 21.0
		vertex 0.0 8.0 22.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 10.0 21.0
		vertex 0.0 9.0 21.0
		vertex 0.0 10.0 22.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 10.0 22.0
		vertex 0.0 9.0 21.0
		vertex 0.0 9.0 22.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 11.0 21.0
		vertex 0.0 10.0 21.0
		vertex 0.0 11.0 22.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 11.0 22.0
		vertex 0.0 10.0 21.0
		vertex 0.0 10.0 22.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 12.0 21.0
		vertex 0.0 11.0 21.0
		vertex 0.0 12.0 22.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 12.0 22.0
		vertex 0.0 11.0 21.0
		vertex 0.0 11.0 22.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 13.0 21.0
		vertex 0.0 12.0 21.0
		vertex 0.0 13.0 22.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 13.0 22.0
		vertex 0.0 12.0 21.0
		vertex 0.0 12.0 22.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 14.0 21.0
		vertex 0.0 13.0 21.0
		vertex 0.0 14.0 22.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 14.0 22.0
		vertex 0.0 13.0 21.0
		vertex 0.0 13.0 22.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 15.0 21.0
		vertex 0.0 14.0 21.0
		vertex 0.0 15.0 22.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 15.0 22.0
		vertex 0.0 14.0 21.0
		vertex 0.0 14.0 22.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 16.0 21.0
		vertex 0.0 15.0 21.0
		vertex 0.0 16.0 22.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 16.0 22.0
		vertex 0.0 15.0 21.0
		vertex 0.0 15.0 22.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 17.0 21.0
		vertex 0.0 16.0 21.0
		vertex 0.0 17.0 22.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 17.0 22.0
		vertex 0.0 16.0 21.0
		vertex 0.0 16.0 22.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 18.0 21.0
		vertex 0.0 17.0 21.0
		vertex 0.0 18.0 22.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 18.0 22.0
		vertex 0.0 17.0 21.0
		vertex 0.0 17.0 22.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 19.0 21.0
		vertex 0.0 18.0 21.0
		vertex 0.0 19.0 22.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 19.0 22.0
		vertex 0.0 18.0 21.0
		vertex 0.0 18.0 22.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 20.0 21.0
		vertex 0.0 19.0 21.0
		vertex 0.0 20.0 22.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 20.0 22.0
		vertex 0.0 19.0 21.0
		vertex 0.0 19.0 22.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 1.0 22.0
		vertex 0.0 0.0 22.0
		vertex 0.0 1.0 23.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 1.0 23.0
		vertex 0.0 0.0 22.0
		vertex 0.0 0.0 23.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 2.0 22.0
		vertex 0.0 1.0 22.0
		vertex 0.0 2.0 23.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 2.0 23.0
		vertex 0.0 1.0 22.0
		vertex 0.0 1.0 23.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 3.0 22.0
		vertex 0.0 2.0 22.0
		vertex 0.0 3.0 23.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 3.0 23.0
		vertex 0.0 2.0 22.0
		vertex 0.0 2.0 23.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 4.0 22.0
		vertex 0.0 3.0 22.0
		vertex 0.0 4.0 23.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 4.0 23.0
		vertex 0.0 3.0 22.0
		vertex 0.0 3.0 23.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 5.0 22.0
		vertex 0.0 4.0 22.0
		vertex 0.0 5.0 23.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 5.0 23.0
		vertex 0.0 4.0 22.0
		vertex 0.0 4.0 23.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 6.0 22.0
		vertex 0.0 5.0 22.0
		vertex 0.0 6.0 23.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 6.0 23.0
		vertex 0.0 5.0 22.0
		vertex 0.0 5.0 23.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 7.0 22.0
		vertex 0.0 6.0 22.0
		vertex 0.0 7.0 23.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 7.0 23.0
		vertex 0.0 6.0 22.0
		vertex 0.0 6.0 23.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 8.0 22.0
		vertex 0.0 7.0 22.0
		vertex 0.0 8.0 23.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 8.0 23.0
		vertex 0.0 7.0 22.0
		vertex 0.0 7.0 23.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 9.0 22.0
		vertex 0.0 8.0 22.0
		vertex 0.0 9.0 23.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 9.0 23.0
		vertex 0.0 8.0 22.0
		vertex 0.0 8.0 23.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 10.0 22.0
		vertex 0.0 9.0 22.0
		vertex 0.0 10.0 23.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 10.0 23.0
		vertex 0.0 9.0 22.0
		vertex 0.0 9.0 23.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 11.0 22.0
		vertex 0.0 10.0 22.0
		vertex 0.0 11.0 23.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 11.0 23.0
		vertex 0.0 10.0 22.0
		vertex 0.0 10.0 23.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 12.0 22.0
		vertex 0.0 11.0 22.0
		vertex 0.0 12.0 23.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 12.0 23.0
		vertex 0.0 11.0 22.0
		vertex 0.0 11.0 23.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 13.0 22.0
		vertex 0.0 12.0 22.0
		vertex 0.0 13.0 23.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 13.0 23.0
		vertex 0.0 12.0 22.0
		vertex 0.0 12.0 23.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 14.0 22.0
		vertex 0.0 13.0 22.0
		vertex 0.0 14.0 23.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 14.0 23.0
		vertex 0.0 13.0 22.0
		vertex 0.0 13.0 23.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 15.0 22.0
		vertex 0.0 14.0 22.0
		vertex 0.0 15.0 23.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 15.0 23.0
		vertex 0.0 14.0 22.0
		vertex 0.0 14.0 23.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 16.0 22.0
		vertex 0.0 15.0 22.0
		vertex 0.0 16.0 23.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 16.0 23.0
		vertex 0.0 15.0 22.0
		vertex 0.0 15.0 23.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 17.0 22.0
		vertex 0.0 16.0 22.0
		vertex 0.0 17.0 23.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 17.0 23.0
		vertex 0.0 16.0 22.0
		vertex 0.0 16.0 23.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 18.0 22.0
		vertex 0.0 17.0 22.0
		vertex 0.0 18.0 23.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 18.0 23.0
		vertex 0.0 17.0 22.0
		vertex 0.0 17.0 23.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 19.0 22.0
		vertex 0.0 18.0 22.0
		vertex 0.0 19.0 23.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 19.0 23.0
		vertex 0.0 18.0 22.0
		vertex 0.0 18.0 23.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 20.0 22.0
		vertex 0.0 19.0 22.0
		vertex 0.0 20.0 23.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 20.0 23.0
		vertex 0.0 19.0 22.0
		vertex 0.0 19.0 23.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 1.0 23.0
		vertex 0.0 0.0 23.0
		vertex 0.0 1.0 24.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 1.0 24.0
		vertex 0.0 0.0 23.0
		vertex 0.0 0.0 24.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 2.0 23.0
		vertex 0.0 1.0 23.0
		vertex 0.0 2.0 24.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 2.0 24.0
		vertex 0.0 1.0 23.0
		vertex 0.0 1.0 24.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 3.0 23.0
		vertex 0.0 2.0 23.0
		vertex 0.0 3.0 24.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 3.0 24.0
		vertex 0.0 2.0 23.0
		vertex 0.0 2.0 24.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 4.0 23.0
		vertex 0.0 3.0 23.0
		vertex 0.0 4.0 24.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 4.0 24.0
		vertex 0.0 3.0 23.0
		vertex 0.0 3.0 24.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 5.0 23.0
		vertex 0.0 4.0 23.0
		vertex 0.0 5.0 24.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 5.0 24.0
		vertex 0.0 4.0 23.0
		vertex 0.0 4.0 24.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 6.0 23.0
		vertex 0.0 5.0 23.0
		vertex 0.0 6.0 24.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 6.0 24.0
		vertex 0.0 5.0 23.0
		vertex 0.0 5.0 24.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 7.0 23.0
		vertex 0.0 6.0 23.0
		vertex 0.0 7.0 24.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 7.0 24.0
		vertex 0.0 6.0 23.0
		vertex 0.0 6.0 24.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 8.0 23.0
		vertex 0.0 7.0 23.0
		vertex 0.0 8.0 24.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 8.0 24.0
		vertex 0.0 7.0 23.0
		vertex 0.0 7.0 24.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 9.0 23.0
		vertex 0.0 8.0 23.0
		vertex 0.0 9.0 24.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 9.0 24.0
		vertex 0.0 8.0 23.0
		vertex 0.0 8.0 24.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 10.0 23.0
		vertex 0.0 9.0 23.0
		vertex 0.0 10.0 24.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 10.0 24.0
		vertex 0.0 9.0 23.0
		vertex 0.0 9.0 24.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 11.0 23.0
		vertex 0.0 10.0 23.0
		vertex 0.0 11.0 24.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 11.0 24.0
		vertex 0.0 10.0 23.0
		vertex 0.0 10.0 24.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 12.0 23.0
		vertex 0.0 11.0 23.0
		vertex 0.0 12.0 24.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 12.0 24.0
		vertex 0.0 11.0 23.0
		vertex 0.0 11.0 24.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 13.0 23.0
		vertex 0.0 12.0 23.0
		vertex 0.0 13.0 24.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 13.0 24.0
		vertex 0.0 12.0 23.0
		vertex 0.0 12.0 24.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 14.0 23.0
		vertex 0.0 13.0 23.0
		vertex 0.0 14.0 24.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 14.0 24.0
		vertex 0.0 13.0 23.0
		vertex 0.0 13.0 24.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 15.0 23.0
		vertex 0.0 14.0 23.0
		vertex 0.0 15.0 24.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 15.0 24.0
		vertex 0.0 14.0 23.0
		vertex 0.0 14.0 24.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 16.0 23.0
		vertex 0.0 15.0 23.0
		vertex 0.0 16.0 24.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 16.0 24.0
		vertex 0.0 15.0 23.0
		vertex 0.0 15.0 24.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 17.0 23.0
		vertex 0.0 16.0 23.0
		vertex 0.0 17.0 24.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 17.0 24.0
		vertex 0.0 16.0 23.0
		vertex 0.0 16.0 24.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 18.0 23.0
		vertex 0.0 17.0 23.0
		vertex 0.0 18.0 24.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 18.0 24.0
		vertex 0.0 17.0 23.0
		vertex 0.0 17.0 24.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 19.0 23.0
		vertex 0.0 18.0 23.0
		vertex 0.0 19.0 24.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 19.0 24.0
		vertex 0.0 18.0 23.0
		vertex 0.0 18.0 24.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 20.0 23.0
		vertex 0.0 19.0 23.0
		vertex 0.0 20.0 24.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 20.0 24.0
		vertex 0.0 19.0 23.0
		vertex 0.0 19.0 24.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 1.0 24.0
		vertex 0.0 0.0 24.0
		vertex 0.0 1.0 25.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 1.0 25.0
		vertex 0.0 0.0 24.0
		vertex 0.0 0.0 25.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 2.0 24.0
		vertex 0.0 1.0 24.0
		vertex 0.0 2.0 25.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 2.0 25.0
		vertex 0.0 1.0 24.0
		vertex 0.0 1.0 25.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 3.0 24.0
		vertex 0.0 2.0 24.0
		vertex 0.0 3.0 25.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 3.0 25.0
		vertex 0.0 2.0 24.0
		vertex 0.0 2.0 25.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 4.0 24.0
		vertex 0.0 3.0 24.0
		vertex 0.0 4.0 25.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 4.0 25.0
		vertex 0.0 3.0 24.0
		vertex 0.0 3.0 25.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 5.0 24.0
		vertex 0.0 4.0 24.0
		vertex 0.0 5.0 25.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 5.0 25.0
		vertex 0.0 4.0 24.0
		vertex 0.0 4.0 25.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 6.0 24.0
		vertex 0.0 5.0 24.0
		vertex 0.0 6.0 25.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 6.0 25.0
		vertex 0.0 5.0 24.0
		vertex 0.0 5.0 25.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 7.0 24.0
		vertex 0.0 6.0 24.0
		vertex 0.0 7.0 25.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 7.0 25.0
		vertex 0.0 6.0 24.0
		vertex 0.0 6.0 25.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 8.0 24.0
		vertex 0.0 7.0 24.0
		vertex 0.0 8.0 25.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 8.0 25.0
		vertex 0.0 7.0 24.0
		vertex 0.0 7.0 25.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 9.0 24.0
		vertex 0.0 8.0 24.0
		vertex 0.0 9.0 25.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 9.0 25.0
		vertex 0.0 8.0 24.0
		vertex 0.0 8.0 25.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 10.0 24.0
		vertex 0.0 9.0 24.0
		vertex 0.0 10.0 25.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 10.0 25.0
		vertex 0.0 9.0 24.0
		vertex 0.0 9.0 25.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 11.0 24.0
		vertex 0.0 10.0 24.0
		vertex 0.0 11.0 25.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 11.0 25.0
		vertex 0.0 10.0 24.0
		vertex 0.0 10.0 25.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 12.0 24.0
		vertex 0.0 11.0 24.0
		vertex 0.0 12.0 25.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 12.0 25.0
		vertex 0.0 11.0 24.0
		vertex 0.0 11.0 25.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 13.0 24.0
		vertex 0.0 12.0 24.0
		vertex 0.0 13.0 25.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 13.0 25.0
		vertex 0.0 12.0 24.0
		vertex 0.0 12.0 25.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 14.0 24.0
		vertex 0.0 13.0 24.0
		vertex 0.0 14.0 25.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 14.0 25.0
		vertex 0.0 13.0 24.0
		vertex 0.0 13.0 25.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 15.0 24.0
		vertex 0.0 14.0 24.0
		vertex 0.0 15.0 25.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 15.0 25.0
		vertex 0.0 14.0 24.0
		vertex 0.0 14.0 25.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 16.0 24.0
		vertex 0.0 15.0 24.0
		vertex 0.0 16.0 25.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 16.0 25.0
		vertex 0.0 15.0 24.0
		vertex 0.0 15.0 25.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 17.0 24.0
		vertex 0.0 16.0 24.0
		vertex 0.0 17.0 25.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 17.0 25.0
		vertex 0.0 16.0 24.0
		vertex 0.0 16.0 25.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 18.0 24.0
		vertex 0.0 17.0 24.0
		vertex 0.0 18.0 25.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 18.0 25.0
		vertex 0.0 17.0 24.0
		vertex 0.0 17.0 25.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 19.0 24.0
		vertex 0.0 18.0 24.0
		vertex 0.0 19.0 25.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 19.0 25.0
		vertex 0.0 18.0 24.0
		vertex 0.0 18.0 25.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 20.0 24.0
		vertex 0.0 19.0 24.0
		vertex 0.0 20.0 25.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 20.0 25.0
		vertex 0.0 19.0 24.0
		vertex 0.0 19.0 25.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 1.0 25.0
		vertex 0.0 0.0 25.0
		vertex 0.0 1.0 26.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 1.0 26.0
		vertex 0.0 0.0 25.0
		vertex 0.0 0.0 26.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 2.0 25.0
		vertex 0.0 1.0 25.0
		vertex 0.0 2.0 26.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 2.0 26.0
		vertex 0.0 1.0 25.0
		vertex 0.0 1.0 26.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 3.0 25.0
		vertex 0.0 2.0 25.0
		vertex 0.0 3.0 26.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 3.0 26.0
		vertex 0.0 2.0 25.0
		vertex 0.0 2.0 26.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 4.0 25.0
		vertex 0.0 3.0 25.0
		vertex 0.0 4.0 26.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 4.0 26.0
		vertex 0.0 3.0 25.0
		vertex 0.0 3.0 26.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 5.0 25.0
		vertex 0.0 4.0 25.0
		vertex 0.0 5.0 26.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 5.0 26.0
		vertex 0.0 4.0 25.0
		vertex 0.0 4.0 26.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 6.0 25.0
		vertex 0.0 5.0 25.0
		vertex 0.0 6.0 26.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 6.0 26.0
		vertex 0.0 5.0 25.0
		vertex 0.0 5.0 26.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 7.0 25.0
		vertex 0.0 6.0 25.0
		vertex 0.0 7.0 26.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 7.0 26.0
		vertex 0.0 6.0 25.0
		vertex 0.0 6.0 26.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 8.0 25.0
		vertex 0.0 7.0 25.0
		vertex 0.0 8.0 26.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 8.0 26.0
		vertex 0.0 7.0 25.0
		vertex 0.0 7.0 26.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 9.0 25.0
		vertex 0.0 8.0 25.0
		vertex 0.0 9.0 26.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 9.0 26.0
		vertex 0.0 8.0 25.0
		vertex 0.0 8.0 26.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 10.0 25.0
		vertex 0.0 9.0 25.0
		vertex 0.0 10.0 26.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 10.0 26.0
		vertex 0.0 9.0 25.0
		vertex 0.0 9.0 26.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 11.0 25.0
		vertex 0.0 10.0 25.0
		vertex 0.0 11.0 26.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 11.0 26.0
		vertex 0.0 10.0 25.0
		vertex 0.0 10.0 26.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 12.0 25.0
		vertex 0.0 11.0 25.0
		vertex 0.0 12.0 26.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 12.0 26.0
		vertex 0.0 11.0 25.0
		vertex 0.0 11.0 26.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 13.0 25.0
		vertex 0.0 12.0 25.0
		vertex 0.0 13.0 26.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 13.0 26.0
		vertex 0.0 12.0 25.0
		vertex 0.0 12.0 26.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 14.0 25.0
		vertex 0.0 13.0 25.0
		vertex 0.0 14.0 26.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 14.0 26.0
		vertex 0.0 13.0 25.0
		vertex 0.0 13.0 26.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 15.0 25.0
		vertex 0.0 14.0 25.0
		vertex 0.0 15.0 26.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 15.0 26.0
		vertex 0.0 14.0 25.0
		vertex 0.0 14.0 26.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 16.0 25.0
		vertex 0.0 15.0 25.0
		vertex 0.0 16.0 26.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 16.0 26.0
		vertex 0.0 15.0 25.0
		vertex 0.0 15.0 26.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 17.0 25.0
		vertex 0.0 16.0 25.0
		vertex 0.0 17.0 26.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 17.0 26.0
		vertex 0.0 16.0 25.0
		vertex 0.0 16.0 26.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 18.0 25.0
		vertex 0.0 17.0 25.0
		vertex 0.0 18.0 26.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 18.0 26.0
		vertex 0.0 17.0 25.0
		vertex 0.0 17.0 26.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 19.0 25.0
		vertex 0.0 18.0 25.0
		vertex 0.0 19.0 26.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 19.0 26.0
		vertex 0.0 18.0 25.0
		vertex 0.0 18.0 26.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 20.0 25.0
		vertex 0.0 19.0 25.0
		vertex 0.0 20.0 26.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 20.0 26.0
		vertex 0.0 19.0 25.0
		vertex 0.0 19.0 26.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 1.0 26.0
		vertex 0.0 0.0 26.0
		vertex 0.0 1.0 27.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 1.0 27.0
		vertex 0.0 0.0 26.0
		vertex 0.0 0.0 27.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 2.0 26.0
		vertex 0.0 1.0 26.0
		vertex 0.0 2.0 27.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 2.0 27.0
		vertex 0.0 1.0 26.0
		vertex 0.0 1.0 27.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 3.0 26.0
		vertex 0.0 2.0 26.0
		vertex 0.0 3.0 27.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 3.0 27.0
		vertex 0.0 2.0 26.0
		vertex 0.0 2.0 27.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 4.0 26.0
		vertex 0.0 3.0 26.0
		vertex 0.0 4.0 27.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 4.0 27.0
		vertex 0.0 3.0 26.0
		vertex 0.0 3.0 27.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 5.0 26.0
		vertex 0.0 4.0 26.0
		vertex 0.0 5.0 27.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 5.0 27.0
		vertex 0.0 4.0 26.0
		vertex 0.0 4.0 27.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 6.0 26.0
		vertex 0.0 5.0 26.0
		vertex 0.0 6.0 27.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 6.0 27.0
		vertex 0.0 5.0 26.0
		vertex 0.0 5.0 27.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 7.0 26.0
		vertex 0.0 6.0 26.0
		vertex 0.0 7.0 27.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 7.0 27.0
		vertex 0.0 6.0 26.0
		vertex 0.0 6.0 27.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 8.0 26.0
		vertex 0.0 7.0 26.0
		vertex 0.0 8.0 27.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 8.0 27.0
		vertex 0.0 7.0 26.0
		vertex 0.0 7.0 27.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 9.0 26.0
		vertex 0.0 8.0 26.0
		vertex 0.0 9.0 27.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 9.0 27.0
		vertex 0.0 8.0 26.0
		vertex 0.0 8.0 27.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 10.0 26.0
		vertex 0.0 9.0 26.0
		vertex 0.0 10.0 27.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 10.0 27.0
		vertex 0.0 9.0 26.0
		vertex 0.0 9.0 27.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 11.0 26.0
		vertex 0.0 10.0 26.0
		vertex 0.0 11.0 27.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 11.0 27.0
		vertex 0.0 10.0 26.0
		vertex 0.0 10.0 27.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 12.0 26.0
		vertex 0.0 11.0 26.0
		vertex 0.0 12.0 27.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 12.0 27.0
		vertex 0.0 11.0 26.0
		vertex 0.0 11.0 27.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 13.0 26.0
		vertex 0.0 12.0 26.0
		vertex 0.0 13.0 27.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 13.0 27.0
		vertex 0.0 12.0 26.0
		vertex 0.0 12.0 27.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 14.0 26.0
		vertex 0.0 13.0 26.0
		vertex 0.0 14.0 27.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 14.0 27.0
		vertex 0.0 13.0 26.0
		vertex 0.0 13.0 27.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 15.0 26.0
		vertex 0.0 14.0 26.0
		vertex 0.0 15.0 27.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 15.0 27.0
		vertex 0.0 14.0 26.0
		vertex 0.0 14.0 27.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 16.0 26.0
		vertex 0.0 15.0 26.0
		vertex 0.0 16.0 27.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 16.0 27.0
		vertex 0.0 15.0 26.0
		vertex 0.0 15.0 27.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 17.0 26.0
		vertex 0.0 16.0 26.0
		vertex 0.0 17.0 27.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 17.0 27.0
		vertex 0.0 16.0 26.0
		vertex 0.0 16.0 27.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 18.0 26.0
		vertex 0.0 17.0 26.0
		vertex 0.0 18.0 27.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 18.0 27.0
		vertex 0.0 17.0 26.0
		vertex 0.0 17.0 27.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 19.0 26.0
		vertex 0.0 18.0 26.0
		vertex 0.0 19.0 27.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 19.0 27.0
		vertex 0.0 18.0 26.0
		vertex 0.0 18.0 27.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 20.0 26.0
		vertex 0.0 19.0 26.0
		vertex 0.0 20.0 27.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 20.0 27.0
		vertex 0.0 19.0 26.0
		vertex 0.0 19.0 27.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 1.0 27.0
		vertex 0.0 0.0 27.0
		vertex 0.0 1.0 28.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 1.0 28.0
		vertex 0.0 0.0 27.0
		vertex 0.0 0.0 28.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 2.0 27.0
		vertex 0.0 1.0 27.0
		vertex 0.0 2.0 28.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 2.0 28.0
		vertex 0.0 1.0 27.0
		vertex 0.0 1.0 28.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 3.0 27.0
		vertex 0.0 2.0 27.0
		vertex 0.0 3.0 28.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 3.0 28.0
		vertex 0.0 2.0 27.0
		vertex 0.0 2.0 28.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 4.0 27.0
		vertex 0.0 3.0 27.0
		vertex 0.0 4.0 28.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 4.0 28.0
		vertex 0.0 3.0 27.0
		vertex 0.0 3.0 28.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 5.0 27.0
		vertex 0.0 4.0 27.0
		vertex 0.0 5.0 28.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 5.0 28.0
		vertex 0.0 4.0 27.0
		vertex 0.0 4.0 28.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 6.0 27.0
		vertex 0.0 5.0 27.0
		vertex 0.0 6.0 28.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 6.0 28.0
		vertex 0.0 5.0 27.0
		vertex 0.0 5.0 28.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 7.0 27.0
		vertex 0.0 6.0 27.0
		vertex 0.0 7.0 28.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 7.0 28.0
		vertex 0.0 6.0 27.0
		vertex 0.0 6.0 28.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 8.0 27.0
		vertex 0.0 7.0 27.0
		vertex 0.0 8.0 28.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 8.0 28.0
		vertex 0.0 7.0 27.0
		vertex 0.0 7.0 28.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 9.0 27.0
		vertex 0.0 8.0 27.0
		vertex 0.0 9.0 28.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 9.0 28.0
		vertex 0.0 8.0 27.0
		vertex 0.0 8.0 28.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 10.0 27.0
		vertex 0.0 9.0 27.0
		vertex 0.0 10.0 28.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 10.0 28.0
		vertex 0.0 9.0 27.0
		vertex 0.0 9.0 28.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 11.0 27.0
		vertex 0.0 10.0 27.0
		vertex 0.0 11.0 28.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 11.0 28.0
		vertex 0.0 10.0 27.0
		vertex 0.0 10.0 28.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 12.0 27.0
		vertex 0.0 11.0 27.0
		vertex 0.0 12.0 28.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 12.0 28.0
		vertex 0.0 11.0 27.0
		vertex 0.0 11.0 28.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 13.0 27.0
		vertex 0.0 12.0 27.0
		vertex 0.0 13.0 28.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 13.0 28.0
		vertex 0.0 12.0 27.0
		vertex 0.0 12.0 28.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 14.0 27.0
		vertex 0.0 13.0 27.0
		vertex 0.0 14.0 28.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 14.0 28.0
		vertex 0.0 13.0 27.0
		vertex 0.0 13.0 28.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 15.0 27.0
		vertex 0.0 14.0 27.0
		vertex 0.0 15.0 28.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 15.0 28.0
		vertex 0.0 14.0 27.0
		vertex 0.0 14.0 28.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 16.0 27.0
		vertex 0.0 15.0 27.0
		vertex 0.0 16.0 28.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 16.0 28.0
		vertex 0.0 15.0 27.0
		vertex 0.0 15.0 28.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 17.0 27.0
		vertex 0.0 16.0 27.0
		vertex 0.0 17.0 28.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 17.0 28.0
		vertex 0.0 16.0 27.0
		vertex 0.0 16.0 28.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 18.0 27.0
		vertex 0.0 17.0 27.0
		vertex 0.0 18.0 28.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 18.0 28.0
		vertex 0.0 17.0 27.0
		vertex 0.0 17.0 28.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 19.0 27.0
		vertex 0.0 18.0 27.0
		vertex 0.0 19.0 28.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 19.0 28.0
		vertex 0.0 18.0 27.0
		vertex 0.0 18.0 28.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 20.0 27.0
		vertex 0.0 19.0 27.0
		vertex 0.0 20.0 28.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 20.0 28.0
		vertex 0.0 19.0 27.0
		vertex 0.0 19.0 28.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 1.0 28.0
		vertex 0.0 0.0 28.0
		vertex 0.0 1.0 29.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 1.0 29.0
		vertex 0.0 0.0 28.0
		vertex 0.0 0.0 29.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 2.0 28.0
		vertex 0.0 1.0 28.0
		vertex 0.0 2.0 29.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 2.0 29.0
		vertex 0.0 1.0 28.0
		vertex 0.0 1.0 29.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 3.0 28.0
		vertex 0.0 2.0 28.0
		vertex 0.0 3.0 29.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 3.0 29.0
		vertex 0.0 2.0 28.0
		vertex 0.0 2.0 29.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 4.0 28.0
		vertex 0.0 3.0 28.0
		vertex 0.0 4.0 29.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 4.0 29.0
		vertex 0.0 3.0 28.0
		vertex 0.0 3.0 29.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 5.0 28.0
		vertex 0.0 4.0 28.0
		vertex 0.0 5.0 29.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 5.0 29.0
		vertex 0.0 4.0 28.0
		vertex 0.0 4.0 29.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 6.0 28.0
		vertex 0.0 5.0 28.0
		vertex 0.0 6.0 29.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 6.0 29.0
		vertex 0.0 5.0 28.0
		vertex 0.0 5.0 29.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 7.0 28.0
		vertex 0.0 6.0 28.0
		vertex 0.0 7.0 29.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 7.0 29.0
		vertex 0.0 6.0 28.0
		vertex 0.0 6.0 29.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 8.0 28.0
		vertex 0.0 7.0 28.0
		vertex 0.0 8.0 29.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 8.0 29.0
		vertex 0.0 7.0 28.0
		vertex 0.0 7.0 29.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 9.0 28.0
		vertex 0.0 8.0 28.0
		vertex 0.0 9.0 29.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 9.0 29.0
		vertex 0.0 8.0 28.0
		vertex 0.0 8.0 29.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 10.0 28.0
		vertex 0.0 9.0 28.0
		vertex 0.0 10.0 29.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 10.0 29.0
		vertex 0.0 9.0 28.0
		vertex 0.0 9.0 29.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 11.0 28.0
		vertex 0.0 10.0 28.0
		vertex 0.0 11.0 29.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 11.0 29.0
		vertex 0.0 10.0 28.0
		vertex 0.0 10.0 29.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 12.0 28.0
		vertex 0.0 11.0 28.0
		vertex 0.0 12.0 29.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 12.0 29.0
		vertex 0.0 11.0 28.0
		vertex 0.0 11.0 29.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 13.0 28.0
		vertex 0.0 12.0 28.0
		vertex 0.0 13.0 29.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 13.0 29.0
		vertex 0.0 12.0 28.0
		vertex 0.0 12.0 29.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 14.0 28.0
		vertex 0.0 13.0 28.0
		vertex 0.0 14.0 29.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 14.0 29.0
		vertex 0.0 13.0 28.0
		vertex 0.0 13.0 29.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 15.0 28.0
		vertex 0.0 14.0 28.0
		vertex 0.0 15.0 29.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 15.0 29.0
		vertex 0.0 14.0 28.0
		vertex 0.0 14.0 29.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 16.0 28.0
		vertex 0.0 15.0 28.0
		vertex 0.0 16.0 29.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 16.0 29.0
		vertex 0.0 15.0 28.0
		vertex 0.0 15.0 29.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 17.0 28.0
		vertex 0.0 16.0 28.0
		vertex 0.0 17.0 29.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 17.0 29.0
		vertex 0.0 16.0 28.0
		vertex 0.0 16.0 29.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 18.0 28.0
		vertex 0.0 17.0 28.0
		vertex 0.0 18.0 29.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 18.0 29.0
		vertex 0.0 17.0 28.0
		vertex 0.0 17.0 29.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 19.0 28.0
		vertex 0.0 18.0 28.0
		vertex 0.0 19.0 29.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 19.0 29.0
		vertex 0.0 18.0 28.0
		vertex 0.0 18.0 29.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 20.0 28.0
		vertex 0.0 19.0 28.0
		vertex 0.0 20.0 29.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 20.0 29.0
		vertex 0.0 19.0 28.0
		vertex 0.0 19.0 29.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 1.0 29.0
		vertex 0.0 0.0 29.0
		vertex 0.0 1.0 30.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 1.0 30.0
		vertex 0.0 0.0 29.0
		vertex 0.0 0.0 30.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 2.0 29.0
		vertex 0.0 1.0 29.0
		vertex 0.0 2.0 30.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 2.0 30.0
		vertex 0.0 1.0 29.0
		vertex 0.0 1.0 30.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 3.0 29.0
		vertex 0.0 2.0 29.0
		vertex 0.0 3.0 30.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 3.0 30.0
		vertex 0.0 2.0 29.0
		vertex 0.0 2.0 30.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 4.0 29.0
		vertex 0.0 3.0 29.0
		vertex 0.0 4.0 30.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 4.0 30.0
		vertex 0.0 3.0 29.0
		vertex 0.0 3.0 30.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 5.0 29.0
		vertex 0.0 4.0 29.0
		vertex 0.0 5.0 30.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 5.0 30.0
		vertex 0.0 4.0 29.0
		vertex 0.0 4.0 30.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 6.0 29.0
		vertex 0.0 5.0 29.0
		vertex 0.0 6.0 30.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 6.0 30.0
		vertex 0.0 5.0 29.0
		vertex 0.0 5.0 30.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 7.0 29.0
		vertex 0.0 6.0 29.0
		vertex 0.0 7.0 30.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 7.0 30.0
		vertex 0.0 6.0 29.0
		vertex 0.0 6.0 30.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 8.0 29.0
		vertex 0.0 7.0 29.0
		vertex 0.0 8.0 30.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 8.0 30.0
		vertex 0.0 7.0 29.0
		vertex 0.0 7.0 30.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 9.0 29.0
		vertex 0.0 8.0 29.0
		vertex 0.0 9.0 30.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 9.0 30.0
		vertex 0.0 8.0 29.0
		vertex 0.0 8.0 30.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 10.0 29.0
		vertex 0.0 9.0 29.0
		vertex 0.0 10.0 30.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 10.0 30.0
		vertex 0.0 9.0 29.0
		vertex 0.0 9.0 30.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 11.0 29.0
		vertex 0.0 10.0 29.0
		vertex 0.0 11.0 30.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 11.0 30.0
		vertex 0.0 10.0 29.0
		vertex 0.0 10.0 30.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 12.0 29.0
		vertex 0.0 11.0 29.0
		vertex 0.0 12.0 30.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 12.0 30.0
		vertex 0.0 11.0 29.0
		vertex 0.0 11.0 30.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 13.0 29.0
		vertex 0.0 12.0 29.0
		vertex 0.0 13.0 30.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 13.0 30.0
		vertex 0.0 12.0 29.0
		vertex 0.0 12.0 30.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 14.0 29.0
		vertex 0.0 13.0 29.0
		vertex 0.0 14.0 30.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 14.0 30.0
		vertex 0.0 13.0 29.0
		vertex 0.0 13.0 30.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 15.0 29.0
		vertex 0.0 14.0 29.0
		vertex 0.0 15.0 30.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 15.0 30.0
		vertex 0.0 14.0 29.0
		vertex 0.0 14.0 30.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 16.0 29.0
		vertex 0.0 15.0 29.0
		vertex 0.0 16.0 30.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 16.0 30.0
		vertex 0.0 15.0 29.0
		vertex 0.0 15.0 30.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 17.0 29.0
		vertex 0.0 16.0 29.0
		vertex 0.0 17.0 30.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 17.0 30.0
		vertex 0.0 16.0 29.0
		vertex 0.0 16.0 30.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 18.0 29.0
		vertex 0.0 17.0 29.0
		vertex 0.0 18.0 30.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 18.0 30.0
		vertex 0.0 17.0 29.0
		vertex 0.0 17.0 30.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 19.0 29.0
		vertex 0.0 18.0 29.0
		vertex 0.0 19.0 30.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 19.0 30.0
		vertex 0.0 18.0 29.0
		vertex 0.0 18.0 30.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 20.0 29.0
		vertex 0.0 19.0 29.0
		vertex 0.0 20.0 30.0
	endloop
endfacet

facet normal -1.0 -0.0 -0.0
	outer loop
		vertex 0.0 20.0 30.0
		vertex 0.0 19.0 29.0
		vertex 0.0 19.0 30.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 0.0 0.0
		vertex 10.0 1.0 0.0
		vertex 10.0 1.0 1.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 0.0 0.0
		vertex 10.0 1.0 1.0
		vertex 10.0 0.0 1.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 1.0 0.0
		vertex 10.0 2.0 0.0
		vertex 10.0 2.0 1.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 1.0 0.0
		vertex 10.0 2.0 1.0
		vertex 10.0 1.0 1.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 2.0 0.0
		vertex 10.0 3.0 0.0
		vertex 10.0 3.0 1.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 2.0 0.0
		vertex 10.0 3.0 1.0
		vertex 10.0 2.0 1.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 3.0 0.0
		vertex 10.0 4.0 0.0
		vertex 10.0 4.0 1.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 3.0 0.0
		vertex 10.0 4.0 1.0
		vertex 10.0 3.0 1.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 4.0 0.0
		vertex 10.0 5.0 0.0
		vertex 10.0 5.0 1.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 4.0 0.0
		vertex 10.0 5.0 1.0
		vertex 10.0 4.0 1.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 5.0 0.0
		vertex 10.0 6.0 0.0
		vertex 10.0 6.0 1.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 5.0 0.0
		vertex 10.0 6.0 1.0
		vertex 10.0 5.0 1.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 6.0 0.0
		vertex 10.0 7.0 0.0
		vertex 10.0 7.0 1.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 6.0 0.0
		vertex 10.0 7.0 1.0
		vertex 10.0 6.0 1.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 7.0 0.0
		vertex 10.0 8.0 0.0
		vertex 10.0 8.0 1.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 7.0 0.0
		vertex 10.0 8.0 1.0
		vertex 10.0 7.0 1.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 8.0 0.0
		vertex 10.0 9.0 0.0
		vertex 10.0 9.0 1.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 8.0 0.0
		vertex 10.0 9.0 1.0
		vertex 10.0 8.0 1.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 9.0 0.0
		vertex 10.0 10.0 0.0
		vertex 10.0 10.0 1.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 9.0 0.0
		vertex 10.0 10.0 1.0
		vertex 10.0 9.0 1.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 10.0 0.0
		vertex 10.0 11.0 0.0
		vertex 10.0 11.0 1.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 10.0 0.0
		vertex 10.0 11.0 1.0
		vertex 10.0 10.0 1.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 11.0 0.0
		vertex 10.0 12.0 0.0
		vertex 10.0 12.0 1.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 11.0 0.0
		vertex 10.0 12.0 1.0
		vertex 10.0 11.0 1.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 12.0 0.0
		vertex 10.0 13.0 0.0
		vertex 10.0 13.0 1.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 12.0 0.0
		vertex 10.0 13.0 1.0
		vertex 10.0 12.0 1.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 13.0 0.0
		vertex 10.0 14.0 0.0
		vertex 10.0 14.0 1.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 13.0 0.0
		vertex 10.0 14.0 1.0
		vertex 10.0 13.0 1.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 14.0 0.0
		vertex 10.0 15.0 0.0
		vertex 10.0 15.0 1.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 14.0 0.0
		vertex 10.0 15.0 1.0
		vertex 10.0 14.0 1.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 15.0 0.0
		vertex 10.0 16.0 0.0
		vertex 10.0 16.0 1.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 15.0 0.0
		vertex 10.0 16.0 1.0
		vertex 10.0 15.0 1.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 16.0 0.0
		vertex 10.0 17.0 0.0
		vertex 10.0 17.0 1.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 16.0 0.0
		vertex 10.0 17.0 1.0
		vertex 10.0 16.0 1.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 17.0 0.0
		vertex 10.0 18.0 0.0
		vertex 10.0 18.0 1.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 17.0 0.0
		vertex 10.0 18.0 1.0
		vertex 10.0 17.0 1.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 18.0 0.0
		vertex 10.0 19.0 0.0
		vertex 10.0 19.0 1.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 18.0 0.0
		vertex 10.0 19.0 1.0
		vertex 10.0 18.0 1.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 19.0 0.0
		vertex 10.0 20.0 0.0
		vertex 10.0 20.0 1.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 19.0 0.0
		vertex 10.0 20.0 1.0
		vertex 10.0 19.0 1.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 0.0 1.0
		vertex 10.0 1.0 1.0
		vertex 10.0 1.0 2.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 0.0 1.0
		vertex 10.0 1.0 2.0
		vertex 10.0 0.0 2.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 1.0 1.0
		vertex 10.0 2.0 1.0
		vertex 10.0 2.0 2.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 1.0 1.0
		vertex 10.0 2.0 2.0
		vertex 10.0 1.0 2.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 2.0 1.0
		vertex 10.0 3.0 1.0
		vertex 10.0 3.0 2.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 2.0 1.0
		vertex 10.0 3.0 2.0
		vertex 10.0 2.0 2.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 3.0 1.0
		vertex 10.0 4.0 1.0
		vertex 10.0 4.0 2.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 3.0 1.0
		vertex 10.0 4.0 2.0
		vertex 10.0 3.0 2.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 4.0 1.0
		vertex 10.0 5.0 1.0
		vertex 10.0 5.0 2.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 4.0 1.0
		vertex 10.0 5.0 2.0
		vertex 10.0 4.0 2.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 5.0 1.0
		vertex 10.0 6.0 1.0
		vertex 10.0 6.0 2.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 5.0 1.0
		vertex 10.0 6.0 2.0
		vertex 10.0 5.0 2.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 6.0 1.0
		vertex 10.0 7.0 1.0
		vertex 10.0 7.0 2.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 6.0 1.0
		vertex 10.0 7.0 2.0
		vertex 10.0 6.0 2.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 7.0 1.0
		vertex 10.0 8.0 1.0
		vertex 10.0 8.0 2.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 7.0 1.0
		vertex 10.0 8.0 2.0
		vertex 10.0 7.0 2.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 8.0 1.0
		vertex 10.0 9.0 1.0
		vertex 10.0 9.0 2.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 8.0 1.0
		vertex 10.0 9.0 2.0
		vertex 10.0 8.0 2.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 9.0 1.0
		vertex 10.0 10.0 1.0
		vertex 10.0 10.0 2.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 9.0 1.0
		vertex 10.0 10.0 2.0
		vertex 10.0 9.0 2.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 10.0 1.0
		vertex 10.0 11.0 1.0
		vertex 10.0 11.0 2.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 10.0 1.0
		vertex 10.0 11.0 2.0
		vertex 10.0 10.0 2.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 11.0 1.0
		vertex 10.0 12.0 1.0
		vertex 10.0 12.0 2.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 11.0 1.0
		vertex 10.0 12.0 2.0
		vertex 10.0 11.0 2.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 12.0 1.0
		vertex 10.0 13.0 1.0
		vertex 10.0 13.0 2.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 12.0 1.0
		vertex 10.0 13.0 2.0
		vertex 10.0 12.0 2.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 13.0 1.0
		vertex 10.0 14.0 1.0
		vertex 10.0 14.0 2.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 13.0 1.0
		vertex 10.0 14.0 2.0
		vertex 10.0 13.0 2.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 14.0 1.0
		vertex 10.0 15.0 1.0
		vertex 10.0 15.0 2.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 14.0 1.0
		vertex 10.0 15.0 2.0
		vertex 10.0 14.0 2.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 15.0 1.0
		vertex 10.0 16.0 1.0
		vertex 10.0 16.0 2.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 15.0 1.0
		vertex 10.0 16.0 2.0
		vertex 10.0 15.0 2.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 16.0 1.0
		vertex 10.0 17.0 1.0
		vertex 10.0 17.0 2.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 16.0 1.0
		vertex 10.0 17.0 2.0
		vertex 10.0 16.0 2.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 17.0 1.0
		vertex 10.0 18.0 1.0
		vertex 10.0 18.0 2.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 17.0 1.0
		vertex 10.0 18.0 2.0
		vertex 10.0 17.0 2.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 18.0 1.0
		vertex 10.0 19.0 1.0
		vertex 10.0 19.0 2.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 18.0 1.0
		vertex 10.0 19.0 2.0
		vertex 10.0 18.0 2.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 19.0 1.0
		vertex 10.0 20.0 1.0
		vertex 10.0 20.0 2.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 19.0 1.0
		vertex 10.0 20.0 2.0
		vertex 10.0 19.0 2.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 0.0 2.0
		vertex 10.0 1.0 2.0
		vertex 10.0 1.0 3.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 0.0 2.0
		vertex 10.0 1.0 3.0
		vertex 10.0 0.0 3.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 1.0 2.0
		vertex 10.0 2.0 2.0
		vertex 10.0 2.0 3.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 1.0 2.0
		vertex 10.0 2.0 3.0
		vertex 10.0 1.0 3.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 2.0 2.0
		vertex 10.0 3.0 2.0
		vertex 10.0 3.0 3.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 2.0 2.0
		vertex 10.0 3.0 3.0
		vertex 10.0 2.0 3.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 3.0 2.0
		vertex 10.0 4.0 2.0
		vertex 10.0 4.0 3.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 3.0 2.0
		vertex 10.0 4.0 3.0
		vertex 10.0 3.0 3.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 4.0 2.0
		vertex 10.0 5.0 2.0
		vertex 10.0 5.0 3.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 4.0 2.0
		vertex 10.0 5.0 3.0
		vertex 10.0 4.0 3.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 5.0 2.0
		vertex 10.0 6.0 2.0
		vertex 10.0 6.0 3.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 5.0 2.0
		vertex 10.0 6.0 3.0
		vertex 10.0 5.0 3.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 6.0 2.0
		vertex 10.0 7.0 2.0
		vertex 10.0 7.0 3.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 6.0 2.0
		vertex 10.0 7.0 3.0
		vertex 10.0 6.0 3.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 7.0 2.0
		vertex 10.0 8.0 2.0
		vertex 10.0 8.0 3.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 7.0 2.0
		vertex 10.0 8.0 3.0
		vertex 10.0 7.0 3.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 8.0 2.0
		vertex 10.0 9.0 2.0
		vertex 10.0 9.0 3.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 8.0 2.0
		vertex 10.0 9.0 3.0
		vertex 10.0 8.0 3.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 9.0 2.0
		vertex 10.0 10.0 2.0
		vertex 10.0 10.0 3.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 9.0 2.0
		vertex 10.0 10.0 3.0
		vertex 10.0 9.0 3.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 10.0 2.0
		vertex 10.0 11.0 2.0
		vertex 10.0 11.0 3.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 10.0 2.0
		vertex 10.0 11.0 3.0
		vertex 10.0 10.0 3.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 11.0 2.0
		vertex 10.0 12.0 2.0
		vertex 10.0 12.0 3.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 11.0 2.0
		vertex 10.0 12.0 3.0
		vertex 10.0 11.0 3.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 12.0 2.0
		vertex 10.0 13.0 2.0
		vertex 10.0 13.0 3.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 12.0 2.0
		vertex 10.0 13.0 3.0
		vertex 10.0 12.0 3.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 13.0 2.0
		vertex 10.0 14.0 2.0
		vertex 10.0 14.0 3.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 13.0 2.0
		vertex 10.0 14.0 3.0
		vertex 10.0 13.0 3.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 14.0 2.0
		vertex 10.0 15.0 2.0
		vertex 10.0 15.0 3.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 14.0 2.0
		vertex 10.0 15.0 3.0
		vertex 10.0 14.0 3.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 15.0 2.0
		vertex 10.0 16.0 2.0
		vertex 10.0 16.0 3.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 15.0 2.0
		vertex 10.0 16.0 3.0
		vertex 10.0 15.0 3.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 16.0 2.0
		vertex 10.0 17.0 2.0
		vertex 10.0 17.0 3.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 16.0 2.0
		vertex 10.0 17.0 3.0
		vertex 10.0 16.0 3.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 17.0 2.0
		vertex 10.0 18.0 2.0
		vertex 10.0 18.0 3.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 17.0 2.0
		vertex 10.0 18.0 3.0
		vertex 10.0 17.0 3.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 18.0 2.0
		vertex 10.0 19.0 2.0
		vertex 10.0 19.0 3.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 18.0 2.0
		vertex 10.0 19.0 3.0
		vertex 10.0 18.0 3.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 19.0 2.0
		vertex 10.0 20.0 2.0
		vertex 10.0 20.0 3.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 19.0 2.0
		vertex 10.0 20.0 3.0
		vertex 10.0 19.0 3.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 0.0 3.0
		vertex 10.0 1.0 3.0
		vertex 10.0 1.0 4.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 0.0 3.0
		vertex 10.0 1.0 4.0
		vertex 10.0 0.0 4.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 1.0 3.0
		vertex 10.0 2.0 3.0
		vertex 10.0 2.0 4.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 1.0 3.0
		vertex 10.0 2.0 4.0
		vertex 10.0 1.0 4.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 2.0 3.0
		vertex 10.0 3.0 3.0
		vertex 10.0 3.0 4.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 2.0 3.0
		vertex 10.0 3.0 4.0
		vertex 10.0 2.0 4.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 3.0 3.0
		vertex 10.0 4.0 3.0
		vertex 10.0 4.0 4.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 3.0 3.0
		vertex 10.0 4.0 4.0
		vertex 10.0 3.0 4.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 4.0 3.0
		vertex 10.0 5.0 3.0
		vertex 10.0 5.0 4.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 4.0 3.0
		vertex 10.0 5.0 4.0
		vertex 10.0 4.0 4.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 5.0 3.0
		vertex 10.0 6.0 3.0
		vertex 10.0 6.0 4.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 5.0 3.0
		vertex 10.0 6.0 4.0
		vertex 10.0 5.0 4.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 6.0 3.0
		vertex 10.0 7.0 3.0
		vertex 10.0 7.0 4.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 6.0 3.0
		vertex 10.0 7.0 4.0
		vertex 10.0 6.0 4.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 7.0 3.0
		vertex 10.0 8.0 3.0
		vertex 10.0 8.0 4.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 7.0 3.0
		vertex 10.0 8.0 4.0
		vertex 10.0 7.0 4.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 8.0 3.0
		vertex 10.0 9.0 3.0
		vertex 10.0 9.0 4.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 8.0 3.0
		vertex 10.0 9.0 4.0
		vertex 10.0 8.0 4.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 9.0 3.0
		vertex 10.0 10.0 3.0
		vertex 10.0 10.0 4.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 9.0 3.0
		vertex 10.0 10.0 4.0
		vertex 10.0 9.0 4.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 10.0 3.0
		vertex 10.0 11.0 3.0
		vertex 10.0 11.0 4.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 10.0 3.0
		vertex 10.0 11.0 4.0
		vertex 10.0 10.0 4.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 11.0 3.0
		vertex 10.0 12.0 3.0
		vertex 10.0 12.0 4.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 11.0 3.0
		vertex 10.0 12.0 4.0
		vertex 10.0 11.0 4.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 12.0 3.0
		vertex 10.0 13.0 3.0
		vertex 10.0 13.0 4.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 12.0 3.0
		vertex 10.0 13.0 4.0
		vertex 10.0 12.0 4.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 13.0 3.0
		vertex 10.0 14.0 3.0
		vertex 10.0 14.0 4.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 13.0 3.0
		vertex 10.0 14.0 4.0
		vertex 10.0 13.0 4.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 14.0 3.0
		vertex 10.0 15.0 3.0
		vertex 10.0 15.0 4.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 14.0 3.0
		vertex 10.0 15.0 4.0
		vertex 10.0 14.0 4.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 15.0 3.0
		vertex 10.0 16.0 3.0
		vertex 10.0 16.0 4.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 15.0 3.0
		vertex 10.0 16.0 4.0
		vertex 10.0 15.0 4.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 16.0 3.0
		vertex 10.0 17.0 3.0
		vertex 10.0 17.0 4.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 16.0 3.0
		vertex 10.0 17.0 4.0
		vertex 10.0 16.0 4.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 17.0 3.0
		vertex 10.0 18.0 3.0
		vertex 10.0 18.0 4.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 17.0 3.0
		vertex 10.0 18.0 4.0
		vertex 10.0 17.0 4.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 18.0 3.0
		vertex 10.0 19.0 3.0
		vertex 10.0 19.0 4.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 18.0 3.0
		vertex 10.0 19.0 4.0
		vertex 10.0 18.0 4.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 19.0 3.0
		vertex 10.0 20.0 3.0
		vertex 10.0 20.0 4.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 19.0 3.0
		vertex 10.0 20.0 4.0
		vertex 10.0 19.0 4.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 0.0 4.0
		vertex 10.0 1.0 4.0
		vertex 10.0 1.0 5.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 0.0 4.0
		vertex 10.0 1.0 5.0
		vertex 10.0 0.0 5.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 1.0 4.0
		vertex 10.0 2.0 4.0
		vertex 10.0 2.0 5.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 1.0 4.0
		vertex 10.0 2.0 5.0
		vertex 10.0 1.0 5.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 2.0 4.0
		vertex 10.0 3.0 4.0
		vertex 10.0 3.0 5.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 2.0 4.0
		vertex 10.0 3.0 5.0
		vertex 10.0 2.0 5.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 3.0 4.0
		vertex 10.0 4.0 4.0
		vertex 10.0 4.0 5.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 3.0 4.0
		vertex 10.0 4.0 5.0
		vertex 10.0 3.0 5.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 4.0 4.0
		vertex 10.0 5.0 4.0
		vertex 10.0 5.0 5.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 4.0 4.0
		vertex 10.0 5.0 5.0
		vertex 10.0 4.0 5.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 5.0 4.0
		vertex 10.0 6.0 4.0
		vertex 10.0 6.0 5.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 5.0 4.0
		vertex 10.0 6.0 5.0
		vertex 10.0 5.0 5.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 6.0 4.0
		vertex 10.0 7.0 4.0
		vertex 10.0 7.0 5.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 6.0 4.0
		vertex 10.0 7.0 5.0
		vertex 10.0 6.0 5.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 7.0 4.0
		vertex 10.0 8.0 4.0
		vertex 10.0 8.0 5.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 7.0 4.0
		vertex 10.0 8.0 5.0
		vertex 10.0 7.0 5.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 8.0 4.0
		vertex 10.0 9.0 4.0
		vertex 10.0 9.0 5.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 8.0 4.0
		vertex 10.0 9.0 5.0
		vertex 10.0 8.0 5.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 9.0 4.0
		vertex 10.0 10.0 4.0
		vertex 10.0 10.0 5.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 9.0 4.0
		vertex 10.0 10.0 5.0
		vertex 10.0 9.0 5.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 10.0 4.0
		vertex 10.0 11.0 4.0
		vertex 10.0 11.0 5.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 10.0 4.0
		vertex 10.0 11.0 5.0
		vertex 10.0 10.0 5.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 11.0 4.0
		vertex 10.0 12.0 4.0
		vertex 10.0 12.0 5.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 11.0 4.0
		vertex 10.0 12.0 5.0
		vertex 10.0 11.0 5.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 12.0 4.0
		vertex 10.0 13.0 4.0
		vertex 10.0 13.0 5.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 12.0 4.0
		vertex 10.0 13.0 5.0
		vertex 10.0 12.0 5.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 13.0 4.0
		vertex 10.0 14.0 4.0
		vertex 10.0 14.0 5.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 13.0 4.0
		vertex 10.0 14.0 5.0
		vertex 10.0 13.0 5.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 14.0 4.0
		vertex 10.0 15.0 4.0
		vertex 10.0 15.0 5.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 14.0 4.0
		vertex 10.0 15.0 5.0
		vertex 10.0 14.0 5.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 15.0 4.0
		vertex 10.0 16.0 4.0
		vertex 10.0 16.0 5.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 15.0 4.0
		vertex 10.0 16.0 5.0
		vertex 10.0 15.0 5.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 16.0 4.0
		vertex 10.0 17.0 4.0
		vertex 10.0 17.0 5.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 16.0 4.0
		vertex 10.0 17.0 5.0
		vertex 10.0 16.0 5.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 17.0 4.0
		vertex 10.0 18.0 4.0
		vertex 10.0 18.0 5.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 17.0 4.0
		vertex 10.0 18.0 5.0
		vertex 10.0 17.0 5.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 18.0 4.0
		vertex 10.0 19.0 4.0
		vertex 10.0 19.0 5.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 18.0 4.0
		vertex 10.0 19.0 5.0
		vertex 10.0 18.0 5.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 19.0 4.0
		vertex 10.0 20.0 4.0
		vertex 10.0 20.0 5.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 19.0 4.0
		vertex 10.0 20.0 5.0
		vertex 10.0 19.0 5.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 0.0 5.0
		vertex 10.0 1.0 5.0
		vertex 10.0 1.0 6.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 0.0 5.0
		vertex 10.0 1.0 6.0
		vertex 10.0 0.0 6.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 1.0 5.0
		vertex 10.0 2.0 5.0
		vertex 10.0 2.0 6.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 1.0 5.0
		vertex 10.0 2.0 6.0
		vertex 10.0 1.0 6.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 2.0 5.0
		vertex 10.0 3.0 5.0
		vertex 10.0 3.0 6.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 2.0 5.0
		vertex 10.0 3.0 6.0
		vertex 10.0 2.0 6.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 3.0 5.0
		vertex 10.0 4.0 5.0
		vertex 10.0 4.0 6.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 3.0 5.0
		vertex 10.0 4.0 6.0
		vertex 10.0 3.0 6.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 4.0 5.0
		vertex 10.0 5.0 5.0
		vertex 10.0 5.0 6.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 4.0 5.0
		vertex 10.0 5.0 6.0
		vertex 10.0 4.0 6.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 5.0 5.0
		vertex 10.0 6.0 5.0
		vertex 10.0 6.0 6.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 5.0 5.0
		vertex 10.0 6.0 6.0
		vertex 10.0 5.0 6.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 6.0 5.0
		vertex 10.0 7.0 5.0
		vertex 10.0 7.0 6.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 6.0 5.0
		vertex 10.0 7.0 6.0
		vertex 10.0 6.0 6.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 7.0 5.0
		vertex 10.0 8.0 5.0
		vertex 10.0 8.0 6.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 7.0 5.0
		vertex 10.0 8.0 6.0
		vertex 10.0 7.0 6.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 8.0 5.0
		vertex 10.0 9.0 5.0
		vertex 10.0 9.0 6.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 8.0 5.0
		vertex 10.0 9.0 6.0
		vertex 10.0 8.0 6.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 9.0 5.0
		vertex 10.0 10.0 5.0
		vertex 10.0 10.0 6.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 9.0 5.0
		vertex 10.0 10.0 6.0
		vertex 10.0 9.0 6.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 10.0 5.0
		vertex 10.0 11.0 5.0
		vertex 10.0 11.0 6.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 10.0 5.0
		vertex 10.0 11.0 6.0
		vertex 10.0 10.0 6.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 11.0 5.0
		vertex 10.0 12.0 5.0
		vertex 10.0 12.0 6.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 11.0 5.0
		vertex 10.0 12.0 6.0
		vertex 10.0 11.0 6.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 12.0 5.0
		vertex 10.0 13.0 5.0
		vertex 10.0 13.0 6.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 12.0 5.0
		vertex 10.0 13.0 6.0
		vertex 10.0 12.0 6.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 13.0 5.0
		vertex 10.0 14.0 5.0
		vertex 10.0 14.0 6.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 13.0 5.0
		vertex 10.0 14.0 6.0
		vertex 10.0 13.0 6.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 14.0 5.0
		vertex 10.0 15.0 5.0
		vertex 10.0 15.0 6.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 14.0 5.0
		vertex 10.0 15.0 6.0
		vertex 10.0 14.0 6.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 15.0 5.0
		vertex 10.0 16.0 5.0
		vertex 10.0 16.0 6.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 15.0 5.0
		vertex 10.0 16.0 6.0
		vertex 10.0 15.0 6.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 16.0 5.0
		vertex 10.0 17.0 5.0
		vertex 10.0 17.0 6.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 16.0 5.0
		vertex 10.0 17.0 6.0
		vertex 10.0 16.0 6.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 17.0 5.0
		vertex 10.0 18.0 5.0
		vertex 10.0 18.0 6.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 17.0 5.0
		vertex 10.0 18.0 6.0
		vertex 10.0 17.0 6.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 18.0 5.0
		vertex 10.0 19.0 5.0
		vertex 10.0 19.0 6.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 18.0 5.0
		vertex 10.0 19.0 6.0
		vertex 10.0 18.0 6.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 19.0 5.0
		vertex 10.0 20.0 5.0
		vertex 10.0 20.0 6.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 19.0 5.0
		vertex 10.0 20.0 6.0
		vertex 10.0 19.0 6.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 0.0 6.0
		vertex 10.0 1.0 6.0
		vertex 10.0 1.0 7.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 0.0 6.0
		vertex 10.0 1.0 7.0
		vertex 10.0 0.0 7.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 1.0 6.0
		vertex 10.0 2.0 6.0
		vertex 10.0 2.0 7.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 1.0 6.0
		vertex 10.0 2.0 7.0
		vertex 10.0 1.0 7.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 2.0 6.0
		vertex 10.0 3.0 6.0
		vertex 10.0 3.0 7.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 2.0 6.0
		vertex 10.0 3.0 7.0
		vertex 10.0 2.0 7.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 3.0 6.0
		vertex 10.0 4.0 6.0
		vertex 10.0 4.0 7.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 3.0 6.0
		vertex 10.0 4.0 7.0
		vertex 10.0 3.0 7.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 4.0 6.0
		vertex 10.0 5.0 6.0
		vertex 10.0 5.0 7.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 4.0 6.0
		vertex 10.0 5.0 7.0
		vertex 10.0 4.0 7.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 5.0 6.0
		vertex 10.0 6.0 6.0
		vertex 10.0 6.0 7.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 5.0 6.0
		vertex 10.0 6.0 7.0
		vertex 10.0 5.0 7.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 6.0 6.0
		vertex 10.0 7.0 6.0
		vertex 10.0 7.0 7.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 6.0 6.0
		vertex 10.0 7.0 7.0
		vertex 10.0 6.0 7.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 7.0 6.0
		vertex 10.0 8.0 6.0
		vertex 10.0 8.0 7.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 7.0 6.0
		vertex 10.0 8.0 7.0
		vertex 10.0 7.0 7.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 8.0 6.0
		vertex 10.0 9.0 6.0
		vertex 10.0 9.0 7.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 8.0 6.0
		vertex 10.0 9.0 7.0
		vertex 10.0 8.0 7.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 9.0 6.0
		vertex 10.0 10.0 6.0
		vertex 10.0 10.0 7.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 9.0 6.0
		vertex 10.0 10.0 7.0
		vertex 10.0 9.0 7.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 10.0 6.0
		vertex 10.0 11.0 6.0
		vertex 10.0 11.0 7.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 10.0 6.0
		vertex 10.0 11.0 7.0
		vertex 10.0 10.0 7.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 11.0 6.0
		vertex 10.0 12.0 6.0
		vertex 10.0 12.0 7.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 11.0 6.0
		vertex 10.0 12.0 7.0
		vertex 10.0 11.0 7.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 12.0 6.0
		vertex 10.0 13.0 6.0
		vertex 10.0 13.0 7.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 12.0 6.0
		vertex 10.0 13.0 7.0
		vertex 10.0 12.0 7.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 13.0 6.0
		vertex 10.0 14.0 6.0
		vertex 10.0 14.0 7.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 13.0 6.0
		vertex 10.0 14.0 7.0
		vertex 10.0 13.0 7.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 14.0 6.0
		vertex 10.0 15.0 6.0
		vertex 10.0 15.0 7.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 14.0 6.0
		vertex 10.0 15.0 7.0
		vertex 10.0 14.0 7.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 15.0 6.0
		vertex 10.0 16.0 6.0
		vertex 10.0 16.0 7.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 15.0 6.0
		vertex 10.0 16.0 7.0
		vertex 10.0 15.0 7.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 16.0 6.0
		vertex 10.0 17.0 6.0
		vertex 10.0 17.0 7.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 16.0 6.0
		vertex 10.0 17.0 7.0
		vertex 10.0 16.0 7.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 17.0 6.0
		vertex 10.0 18.0 6.0
		vertex 10.0 18.0 7.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 17.0 6.0
		vertex 10.0 18.0 7.0
		vertex 10.0 17.0 7.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 18.0 6.0
		vertex 10.0 19.0 6.0
		vertex 10.0 19.0 7.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 18.0 6.0
		vertex 10.0 19.0 7.0
		vertex 10.0 18.0 7.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 19.0 6.0
		vertex 10.0 20.0 6.0
		vertex 10.0 20.0 7.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 19.0 6.0
		vertex 10.0 20.0 7.0
		vertex 10.0 19.0 7.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 0.0 7.0
		vertex 10.0 1.0 7.0
		vertex 10.0 1.0 8.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 0.0 7.0
		vertex 10.0 1.0 8.0
		vertex 10.0 0.0 8.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 1.0 7.0
		vertex 10.0 2.0 7.0
		vertex 10.0 2.0 8.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 1.0 7.0
		vertex 10.0 2.0 8.0
		vertex 10.0 1.0 8.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 2.0 7.0
		vertex 10.0 3.0 7.0
		vertex 10.0 3.0 8.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 2.0 7.0
		vertex 10.0 3.0 8.0
		vertex 10.0 2.0 8.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 3.0 7.0
		vertex 10.0 4.0 7.0
		vertex 10.0 4.0 8.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 3.0 7.0
		vertex 10.0 4.0 8.0
		vertex 10.0 3.0 8.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 4.0 7.0
		vertex 10.0 5.0 7.0
		vertex 10.0 5.0 8.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 4.0 7.0
		vertex 10.0 5.0 8.0
		vertex 10.0 4.0 8.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 5.0 7.0
		vertex 10.0 6.0 7.0
		vertex 10.0 6.0 8.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 5.0 7.0
		vertex 10.0 6.0 8.0
		vertex 10.0 5.0 8.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 6.0 7.0
		vertex 10.0 7.0 7.0
		vertex 10.0 7.0 8.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 6.0 7.0
		vertex 10.0 7.0 8.0
		vertex 10.0 6.0 8.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 7.0 7.0
		vertex 10.0 8.0 7.0
		vertex 10.0 8.0 8.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 7.0 7.0
		vertex 10.0 8.0 8.0
		vertex 10.0 7.0 8.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 8.0 7.0
		vertex 10.0 9.0 7.0
		vertex 10.0 9.0 8.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 8.0 7.0
		vertex 10.0 9.0 8.0
		vertex 10.0 8.0 8.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 9.0 7.0
		vertex 10.0 10.0 7.0
		vertex 10.0 10.0 8.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 9.0 7.0
		vertex 10.0 10.0 8.0
		vertex 10.0 9.0 8.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 10.0 7.0
		vertex 10.0 11.0 7.0
		vertex 10.0 11.0 8.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 10.0 7.0
		vertex 10.0 11.0 8.0
		vertex 10.0 10.0 8.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 11.0 7.0
		vertex 10.0 12.0 7.0
		vertex 10.0 12.0 8.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 11.0 7.0
		vertex 10.0 12.0 8.0
		vertex 10.0 11.0 8.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 12.0 7.0
		vertex 10.0 13.0 7.0
		vertex 10.0 13.0 8.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 12.0 7.0
		vertex 10.0 13.0 8.0
		vertex 10.0 12.0 8.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 13.0 7.0
		vertex 10.0 14.0 7.0
		vertex 10.0 14.0 8.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 13.0 7.0
		vertex 10.0 14.0 8.0
		vertex 10.0 13.0 8.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 14.0 7.0
		vertex 10.0 15.0 7.0
		vertex 10.0 15.0 8.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 14.0 7.0
		vertex 10.0 15.0 8.0
		vertex 10.0 14.0 8.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 15.0 7.0
		vertex 10.0 16.0 7.0
		vertex 10.0 16.0 8.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 15.0 7.0
		vertex 10.0 16.0 8.0
		vertex 10.0 15.0 8.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 16.0 7.0
		vertex 10.0 17.0 7.0
		vertex 10.0 17.0 8.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 16.0 7.0
		vertex 10.0 17.0 8.0
		vertex 10.0 16.0 8.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 17.0 7.0
		vertex 10.0 18.0 7.0
		vertex 10.0 18.0 8.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 17.0 7.0
		vertex 10.0 18.0 8.0
		vertex 10.0 17.0 8.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 18.0 7.0
		vertex 10.0 19.0 7.0
		vertex 10.0 19.0 8.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 18.0 7.0
		vertex 10.0 19.0 8.0
		vertex 10.0 18.0 8.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 19.0 7.0
		vertex 10.0 20.0 7.0
		vertex 10.0 20.0 8.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 19.0 7.0
		vertex 10.0 20.0 8.0
		vertex 10.0 19.0 8.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 0.0 8.0
		vertex 10.0 1.0 8.0
		vertex 10.0 1.0 9.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 0.0 8.0
		vertex 10.0 1.0 9.0
		vertex 10.0 0.0 9.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 1.0 8.0
		vertex 10.0 2.0 8.0
		vertex 10.0 2.0 9.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 1.0 8.0
		vertex 10.0 2.0 9.0
		vertex 10.0 1.0 9.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 2.0 8.0
		vertex 10.0 3.0 8.0
		vertex 10.0 3.0 9.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 2.0 8.0
		vertex 10.0 3.0 9.0
		vertex 10.0 2.0 9.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 3.0 8.0
		vertex 10.0 4.0 8.0
		vertex 10.0 4.0 9.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 3.0 8.0
		vertex 10.0 4.0 9.0
		vertex 10.0 3.0 9.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 4.0 8.0
		vertex 10.0 5.0 8.0
		vertex 10.0 5.0 9.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 4.0 8.0
		vertex 10.0 5.0 9.0
		vertex 10.0 4.0 9.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 5.0 8.0
		vertex 10.0 6.0 8.0
		vertex 10.0 6.0 9.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 5.0 8.0
		vertex 10.0 6.0 9.0
		vertex 10.0 5.0 9.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 6.0 8.0
		vertex 10.0 7.0 8.0
		vertex 10.0 7.0 9.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 6.0 8.0
		vertex 10.0 7.0 9.0
		vertex 10.0 6.0 9.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 7.0 8.0
		vertex 10.0 8.0 8.0
		vertex 10.0 8.0 9.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 7.0 8.0
		vertex 10.0 8.0 9.0
		vertex 10.0 7.0 9.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 8.0 8.0
		vertex 10.0 9.0 8.0
		vertex 10.0 9.0 9.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 8.0 8.0
		vertex 10.0 9.0 9.0
		vertex 10.0 8.0 9.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 9.0 8.0
		vertex 10.0 10.0 8.0
		vertex 10.0 10.0 9.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 9.0 8.0
		vertex 10.0 10.0 9.0
		vertex 10.0 9.0 9.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 10.0 8.0
		vertex 10.0 11.0 8.0
		vertex 10.0 11.0 9.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 10.0 8.0
		vertex 10.0 11.0 9.0
		vertex 10.0 10.0 9.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 11.0 8.0
		vertex 10.0 12.0 8.0
		vertex 10.0 12.0 9.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 11.0 8.0
		vertex 10.0 12.0 9.0
		vertex 10.0 11.0 9.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 12.0 8.0
		vertex 10.0 13.0 8.0
		vertex 10.0 13.0 9.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 12.0 8.0
		vertex 10.0 13.0 9.0
		vertex 10.0 12.0 9.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 13.0 8.0
		vertex 10.0 14.0 8.0
		vertex 10.0 14.0 9.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 13.0 8.0
		vertex 10.0 14.0 9.0
		vertex 10.0 13.0 9.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 14.0 8.0
		vertex 10.0 15.0 8.0
		vertex 10.0 15.0 9.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 14.0 8.0
		vertex 10.0 15.0 9.0
		vertex 10.0 14.0 9.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 15.0 8.0
		vertex 10.0 16.0 8.0
		vertex 10.0 16.0 9.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 15.0 8.0
		vertex 10.0 16.0 9.0
		vertex 10.0 15.0 9.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 16.0 8.0
		vertex 10.0 17.0 8.0
		vertex 10.0 17.0 9.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 16.0 8.0
		vertex 10.0 17.0 9.0
		vertex 10.0 16.0 9.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 17.0 8.0
		vertex 10.0 18.0 8.0
		vertex 10.0 18.0 9.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 17.0 8.0
		vertex 10.0 18.0 9.0
		vertex 10.0 17.0 9.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 18.0 8.0
		vertex 10.0 19.0 8.0
		vertex 10.0 19.0 9.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 18.0 8.0
		vertex 10.0 19.0 9.0
		vertex 10.0 18.0 9.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 19.0 8.0
		vertex 10.0 20.0 8.0
		vertex 10.0 20.0 9.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 19.0 8.0
		vertex 10.0 20.0 9.0
		vertex 10.0 19.0 9.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 0.0 9.0
		vertex 10.0 1.0 9.0
		vertex 10.0 1.0 10.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 0.0 9.0
		vertex 10.0 1.0 10.0
		vertex 10.0 0.0 10.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 1.0 9.0
		vertex 10.0 2.0 9.0
		vertex 10.0 2.0 10.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 1.0 9.0
		vertex 10.0 2.0 10.0
		vertex 10.0 1.0 10.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 2.0 9.0
		vertex 10.0 3.0 9.0
		vertex 10.0 3.0 10.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 2.0 9.0
		vertex 10.0 3.0 10.0
		vertex 10.0 2.0 10.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 3.0 9.0
		vertex 10.0 4.0 9.0
		vertex 10.0 4.0 10.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 3.0 9.0
		vertex 10.0 4.0 10.0
		vertex 10.0 3.0 10.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 4.0 9.0
		vertex 10.0 5.0 9.0
		vertex 10.0 5.0 10.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 4.0 9.0
		vertex 10.0 5.0 10.0
		vertex 10.0 4.0 10.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 5.0 9.0
		vertex 10.0 6.0 9.0
		vertex 10.0 6.0 10.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 5.0 9.0
		vertex 10.0 6.0 10.0
		vertex 10.0 5.0 10.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 6.0 9.0
		vertex 10.0 7.0 9.0
		vertex 10.0 7.0 10.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 6.0 9.0
		vertex 10.0 7.0 10.0
		vertex 10.0 6.0 10.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 7.0 9.0
		vertex 10.0 8.0 9.0
		vertex 10.0 8.0 10.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 7.0 9.0
		vertex 10.0 8.0 10.0
		vertex 10.0 7.0 10.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 8.0 9.0
		vertex 10.0 9.0 9.0
		vertex 10.0 9.0 10.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 8.0 9.0
		vertex 10.0 9.0 10.0
		vertex 10.0 8.0 10.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 9.0 9.0
		vertex 10.0 10.0 9.0
		vertex 10.0 10.0 10.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 9.0 9.0
		vertex 10.0 10.0 10.0
		vertex 10.0 9.0 10.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 10.0 9.0
		vertex 10.0 11.0 9.0
		vertex 10.0 11.0 10.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 10.0 9.0
		vertex 10.0 11.0 10.0
		vertex 10.0 10.0 10.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 11.0 9.0
		vertex 10.0 12.0 9.0
		vertex 10.0 12.0 10.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 11.0 9.0
		vertex 10.0 12.0 10.0
		vertex 10.0 11.0 10.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 12.0 9.0
		vertex 10.0 13.0 9.0
		vertex 10.0 13.0 10.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 12.0 9.0
		vertex 10.0 13.0 10.0
		vertex 10.0 12.0 10.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 13.0 9.0
		vertex 10.0 14.0 9.0
		vertex 10.0 14.0 10.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 13.0 9.0
		vertex 10.0 14.0 10.0
		vertex 10.0 13.0 10.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 14.0 9.0
		vertex 10.0 15.0 9.0
		vertex 10.0 15.0 10.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 14.0 9.0
		vertex 10.0 15.0 10.0
		vertex 10.0 14.0 10.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 15.0 9.0
		vertex 10.0 16.0 9.0
		vertex 10.0 16.0 10.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 15.0 9.0
		vertex 10.0 16.0 10.0
		vertex 10.0 15.0 10.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 16.0 9.0
		vertex 10.0 17.0 9.0
		vertex 10.0 17.0 10.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 16.0 9.0
		vertex 10.0 17.0 10.0
		vertex 10.0 16.0 10.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 17.0 9.0
		vertex 10.0 18.0 9.0
		vertex 10.0 18.0 10.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 17.0 9.0
		vertex 10.0 18.0 10.0
		vertex 10.0 17.0 10.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 18.0 9.0
		vertex 10.0 19.0 9.0
		vertex 10.0 19.0 10.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 18.0 9.0
		vertex 10.0 19.0 10.0
		vertex 10.0 18.0 10.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 19.0 9.0
		vertex 10.0 20.0 9.0
		vertex 10.0 20.0 10.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 19.0 9.0
		vertex 10.0 20.0 10.0
		vertex 10.0 19.0 10.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 0.0 10.0
		vertex 10.0 1.0 10.0
		vertex 10.0 1.0 11.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 0.0 10.0
		vertex 10.0 1.0 11.0
		vertex 10.0 0.0 11.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 1.0 10.0
		vertex 10.0 2.0 10.0
		vertex 10.0 2.0 11.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 1.0 10.0
		vertex 10.0 2.0 11.0
		vertex 10.0 1.0 11.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 2.0 10.0
		vertex 10.0 3.0 10.0
		vertex 10.0 3.0 11.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 2.0 10.0
		vertex 10.0 3.0 11.0
		vertex 10.0 2.0 11.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 3.0 10.0
		vertex 10.0 4.0 10.0
		vertex 10.0 4.0 11.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 3.0 10.0
		vertex 10.0 4.0 11.0
		vertex 10.0 3.0 11.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 4.0 10.0
		vertex 10.0 5.0 10.0
		vertex 10.0 5.0 11.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 4.0 10.0
		vertex 10.0 5.0 11.0
		vertex 10.0 4.0 11.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 5.0 10.0
		vertex 10.0 6.0 10.0
		vertex 10.0 6.0 11.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 5.0 10.0
		vertex 10.0 6.0 11.0
		vertex 10.0 5.0 11.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 6.0 10.0
		vertex 10.0 7.0 10.0
		vertex 10.0 7.0 11.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 6.0 10.0
		vertex 10.0 7.0 11.0
		vertex 10.0 6.0 11.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 7.0 10.0
		vertex 10.0 8.0 10.0
		vertex 10.0 8.0 11.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 7.0 10.0
		vertex 10.0 8.0 11.0
		vertex 10.0 7.0 11.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 8.0 10.0
		vertex 10.0 9.0 10.0
		vertex 10.0 9.0 11.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 8.0 10.0
		vertex 10.0 9.0 11.0
		vertex 10.0 8.0 11.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 9.0 10.0
		vertex 10.0 10.0 10.0
		vertex 10.0 10.0 11.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 9.0 10.0
		vertex 10.0 10.0 11.0
		vertex 10.0 9.0 11.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 10.0 10.0
		vertex 10.0 11.0 10.0
		vertex 10.0 11.0 11.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 10.0 10.0
		vertex 10.0 11.0 11.0
		vertex 10.0 10.0 11.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 11.0 10.0
		vertex 10.0 12.0 10.0
		vertex 10.0 12.0 11.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 11.0 10.0
		vertex 10.0 12.0 11.0
		vertex 10.0 11.0 11.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 12.0 10.0
		vertex 10.0 13.0 10.0
		vertex 10.0 13.0 11.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 12.0 10.0
		vertex 10.0 13.0 11.0
		vertex 10.0 12.0 11.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 13.0 10.0
		vertex 10.0 14.0 10.0
		vertex 10.0 14.0 11.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 13.0 10.0
		vertex 10.0 14.0 11.0
		vertex 10.0 13.0 11.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 14.0 10.0
		vertex 10.0 15.0 10.0
		vertex 10.0 15.0 11.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 14.0 10.0
		vertex 10.0 15.0 11.0
		vertex 10.0 14.0 11.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 15.0 10.0
		vertex 10.0 16.0 10.0
		vertex 10.0 16.0 11.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 15.0 10.0
		vertex 10.0 16.0 11.0
		vertex 10.0 15.0 11.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 16.0 10.0
		vertex 10.0 17.0 10.0
		vertex 10.0 17.0 11.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 16.0 10.0
		vertex 10.0 17.0 11.0
		vertex 10.0 16.0 11.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 17.0 10.0
		vertex 10.0 18.0 10.0
		vertex 10.0 18.0 11.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 17.0 10.0
		vertex 10.0 18.0 11.0
		vertex 10.0 17.0 11.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 18.0 10.0
		vertex 10.0 19.0 10.0
		vertex 10.0 19.0 11.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 18.0 10.0
		vertex 10.0 19.0 11.0
		vertex 10.0 18.0 11.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 19.0 10.0
		vertex 10.0 20.0 10.0
		vertex 10.0 20.0 11.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 19.0 10.0
		vertex 10.0 20.0 11.0
		vertex 10.0 19.0 11.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 0.0 11.0
		vertex 10.0 1.0 11.0
		vertex 10.0 1.0 12.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 0.0 11.0
		vertex 10.0 1.0 12.0
		vertex 10.0 0.0 12.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 1.0 11.0
		vertex 10.0 2.0 11.0
		vertex 10.0 2.0 12.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 1.0 11.0
		vertex 10.0 2.0 12.0
		vertex 10.0 1.0 12.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 2.0 11.0
		vertex 10.0 3.0 11.0
		vertex 10.0 3.0 12.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 2.0 11.0
		vertex 10.0 3.0 12.0
		vertex 10.0 2.0 12.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 3.0 11.0
		vertex 10.0 4.0 11.0
		vertex 10.0 4.0 12.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 3.0 11.0
		vertex 10.0 4.0 12.0
		vertex 10.0 3.0 12.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 4.0 11.0
		vertex 10.0 5.0 11.0
		vertex 10.0 5.0 12.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 4.0 11.0
		vertex 10.0 5.0 12.0
		vertex 10.0 4.0 12.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 5.0 11.0
		vertex 10.0 6.0 11.0
		vertex 10.0 6.0 12.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 5.0 11.0
		vertex 10.0 6.0 12.0
		vertex 10.0 5.0 12.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 6.0 11.0
		vertex 10.0 7.0 11.0
		vertex 10.0 7.0 12.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 6.0 11.0
		vertex 10.0 7.0 12.0
		vertex 10.0 6.0 12.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 7.0 11.0
		vertex 10.0 8.0 11.0
		vertex 10.0 8.0 12.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 7.0 11.0
		vertex 10.0 8.0 12.0
		vertex 10.0 7.0 12.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 8.0 11.0
		vertex 10.0 9.0 11.0
		vertex 10.0 9.0 12.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 8.0 11.0
		vertex 10.0 9.0 12.0
		vertex 10.0 8.0 12.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 9.0 11.0
		vertex 10.0 10.0 11.0
		vertex 10.0 10.0 12.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 9.0 11.0
		vertex 10.0 10.0 12.0
		vertex 10.0 9.0 12.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 10.0 11.0
		vertex 10.0 11.0 11.0
		vertex 10.0 11.0 12.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 10.0 11.0
		vertex 10.0 11.0 12.0
		vertex 10.0 10.0 12.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 11.0 11.0
		vertex 10.0 12.0 11.0
		vertex 10.0 12.0 12.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 11.0 11.0
		vertex 10.0 12.0 12.0
		vertex 10.0 11.0 12.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 12.0 11.0
		vertex 10.0 13.0 11.0
		vertex 10.0 13.0 12.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 12.0 11.0
		vertex 10.0 13.0 12.0
		vertex 10.0 12.0 12.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 13.0 11.0
		vertex 10.0 14.0 11.0
		vertex 10.0 14.0 12.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 13.0 11.0
		vertex 10.0 14.0 12.0
		vertex 10.0 13.0 12.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 14.0 11.0
		vertex 10.0 15.0 11.0
		vertex 10.0 15.0 12.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 14.0 11.0
		vertex 10.0 15.0 12.0
		vertex 10.0 14.0 12.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 15.0 11.0
		vertex 10.0 16.0 11.0
		vertex 10.0 16.0 12.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 15.0 11.0
		vertex 10.0 16.0 12.0
		vertex 10.0 15.0 12.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 16.0 11.0
		vertex 10.0 17.0 11.0
		vertex 10.0 17.0 12.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 16.0 11.0
		vertex 10.0 17.0 12.0
		vertex 10.0 16.0 12.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 17.0 11.0
		vertex 10.0 18.0 11.0
		vertex 10.0 18.0 12.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 17.0 11.0
		vertex 10.0 18.0 12.0
		vertex 10.0 17.0 12.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 18.0 11.0
		vertex 10.0 19.0 11.0
		vertex 10.0 19.0 12.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 18.0 11.0
		vertex 10.0 19.0 12.0
		vertex 10.0 18.0 12.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 19.0 11.0
		vertex 10.0 20.0 11.0
		vertex 10.0 20.0 12.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 19.0 11.0
		vertex 10.0 20.0 12.0
		vertex 10.0 19.0 12.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 0.0 12.0
		vertex 10.0 1.0 12.0
		vertex 10.0 1.0 13.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 0.0 12.0
		vertex 10.0 1.0 13.0
		vertex 10.0 0.0 13.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 1.0 12.0
		vertex 10.0 2.0 12.0
		vertex 10.0 2.0 13.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 1.0 12.0
		vertex 10.0 2.0 13.0
		vertex 10.0 1.0 13.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 2.0 12.0
		vertex 10.0 3.0 12.0
		vertex 10.0 3.0 13.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 2.0 12.0
		vertex 10.0 3.0 13.0
		vertex 10.0 2.0 13.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 3.0 12.0
		vertex 10.0 4.0 12.0
		vertex 10.0 4.0 13.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 3.0 12.0
		vertex 10.0 4.0 13.0
		vertex 10.0 3.0 13.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 4.0 12.0
		vertex 10.0 5.0 12.0
		vertex 10.0 5.0 13.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 4.0 12.0
		vertex 10.0 5.0 13.0
		vertex 10.0 4.0 13.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 5.0 12.0
		vertex 10.0 6.0 12.0
		vertex 10.0 6.0 13.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 5.0 12.0
		vertex 10.0 6.0 13.0
		vertex 10.0 5.0 13.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 6.0 12.0
		vertex 10.0 7.0 12.0
		vertex 10.0 7.0 13.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 6.0 12.0
		vertex 10.0 7.0 13.0
		vertex 10.0 6.0 13.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 7.0 12.0
		vertex 10.0 8.0 12.0
		vertex 10.0 8.0 13.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 7.0 12.0
		vertex 10.0 8.0 13.0
		vertex 10.0 7.0 13.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 8.0 12.0
		vertex 10.0 9.0 12.0
		vertex 10.0 9.0 13.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 8.0 12.0
		vertex 10.0 9.0 13.0
		vertex 10.0 8.0 13.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 9.0 12.0
		vertex 10.0 10.0 12.0
		vertex 10.0 10.0 13.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 9.0 12.0
		vertex 10.0 10.0 13.0
		vertex 10.0 9.0 13.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 10.0 12.0
		vertex 10.0 11.0 12.0
		vertex 10.0 11.0 13.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 10.0 12.0
		vertex 10.0 11.0 13.0
		vertex 10.0 10.0 13.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 11.0 12.0
		vertex 10.0 12.0 12.0
		vertex 10.0 12.0 13.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 11.0 12.0
		vertex 10.0 12.0 13.0
		vertex 10.0 11.0 13.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 12.0 12.0
		vertex 10.0 13.0 12.0
		vertex 10.0 13.0 13.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 12.0 12.0
		vertex 10.0 13.0 13.0
		vertex 10.0 12.0 13.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 13.0 12.0
		vertex 10.0 14.0 12.0
		vertex 10.0 14.0 13.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 13.0 12.0
		vertex 10.0 14.0 13.0
		vertex 10.0 13.0 13.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 14.0 12.0
		vertex 10.0 15.0 12.0
		vertex 10.0 15.0 13.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 14.0 12.0
		vertex 10.0 15.0 13.0
		vertex 10.0 14.0 13.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 15.0 12.0
		vertex 10.0 16.0 12.0
		vertex 10.0 16.0 13.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 15.0 12.0
		vertex 10.0 16.0 13.0
		vertex 10.0 15.0 13.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 16.0 12.0
		vertex 10.0 17.0 12.0
		vertex 10.0 17.0 13.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 16.0 12.0
		vertex 10.0 17.0 13.0
		vertex 10.0 16.0 13.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 17.0 12.0
		vertex 10.0 18.0 12.0
		vertex 10.0 18.0 13.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 17.0 12.0
		vertex 10.0 18.0 13.0
		vertex 10.0 17.0 13.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 18.0 12.0
		vertex 10.0 19.0 12.0
		vertex 10.0 19.0 13.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 18.0 12.0
		vertex 10.0 19.0 13.0
		vertex 10.0 18.0 13.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 19.0 12.0
		vertex 10.0 20.0 12.0
		vertex 10.0 20.0 13.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 19.0 12.0
		vertex 10.0 20.0 13.0
		vertex 10.0 19.0 13.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 0.0 13.0
		vertex 10.0 1.0 13.0
		vertex 10.0 1.0 14.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 0.0 13.0
		vertex 10.0 1.0 14.0
		vertex 10.0 0.0 14.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 1.0 13.0
		vertex 10.0 2.0 13.0
		vertex 10.0 2.0 14.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 1.0 13.0
		vertex 10.0 2.0 14.0
		vertex 10.0 1.0 14.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 2.0 13.0
		vertex 10.0 3.0 13.0
		vertex 10.0 3.0 14.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 2.0 13.0
		vertex 10.0 3.0 14.0
		vertex 10.0 2.0 14.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 3.0 13.0
		vertex 10.0 4.0 13.0
		vertex 10.0 4.0 14.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 3.0 13.0
		vertex 10.0 4.0 14.0
		vertex 10.0 3.0 14.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 4.0 13.0
		vertex 10.0 5.0 13.0
		vertex 10.0 5.0 14.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 4.0 13.0
		vertex 10.0 5.0 14.0
		vertex 10.0 4.0 14.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 5.0 13.0
		vertex 10.0 6.0 13.0
		vertex 10.0 6.0 14.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 5.0 13.0
		vertex 10.0 6.0 14.0
		vertex 10.0 5.0 14.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 6.0 13.0
		vertex 10.0 7.0 13.0
		vertex 10.0 7.0 14.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 6.0 13.0
		vertex 10.0 7.0 14.0
		vertex 10.0 6.0 14.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 7.0 13.0
		vertex 10.0 8.0 13.0
		vertex 10.0 8.0 14.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 7.0 13.0
		vertex 10.0 8.0 14.0
		vertex 10.0 7.0 14.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 8.0 13.0
		vertex 10.0 9.0 13.0
		vertex 10.0 9.0 14.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 8.0 13.0
		vertex 10.0 9.0 14.0
		vertex 10.0 8.0 14.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 9.0 13.0
		vertex 10.0 10.0 13.0
		vertex 10.0 10.0 14.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 9.0 13.0
		vertex 10.0 10.0 14.0
		vertex 10.0 9.0 14.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 10.0 13.0
		vertex 10.0 11.0 13.0
		vertex 10.0 11.0 14.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 10.0 13.0
		vertex 10.0 11.0 14.0
		vertex 10.0 10.0 14.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 11.0 13.0
		vertex 10.0 12.0 13.0
		vertex 10.0 12.0 14.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 11.0 13.0
		vertex 10.0 12.0 14.0
		vertex 10.0 11.0 14.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 12.0 13.0
		vertex 10.0 13.0 13.0
		vertex 10.0 13.0 14.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 12.0 13.0
		vertex 10.0 13.0 14.0
		vertex 10.0 12.0 14.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 13.0 13.0
		vertex 10.0 14.0 13.0
		vertex 10.0 14.0 14.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 13.0 13.0
		vertex 10.0 14.0 14.0
		vertex 10.0 13.0 14.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 14.0 13.0
		vertex 10.0 15.0 13.0
		vertex 10.0 15.0 14.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 14.0 13.0
		vertex 10.0 15.0 14.0
		vertex 10.0 14.0 14.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 15.0 13.0
		vertex 10.0 16.0 13.0
		vertex 10.0 16.0 14.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 15.0 13.0
		vertex 10.0 16.0 14.0
		vertex 10.0 15.0 14.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 16.0 13.0
		vertex 10.0 17.0 13.0
		vertex 10.0 17.0 14.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 16.0 13.0
		vertex 10.0 17.0 14.0
		vertex 10.0 16.0 14.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 17.0 13.0
		vertex 10.0 18.0 13.0
		vertex 10.0 18.0 14.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 17.0 13.0
		vertex 10.0 18.0 14.0
		vertex 10.0 17.0 14.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 18.0 13.0
		vertex 10.0 19.0 13.0
		vertex 10.0 19.0 14.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 18.0 13.0
		vertex 10.0 19.0 14.0
		vertex 10.0 18.0 14.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 19.0 13.0
		vertex 10.0 20.0 13.0
		vertex 10.0 20.0 14.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 19.0 13.0
		vertex 10.0 20.0 14.0
		vertex 10.0 19.0 14.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 0.0 14.0
		vertex 10.0 1.0 14.0
		vertex 10.0 1.0 15.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 0.0 14.0
		vertex 10.0 1.0 15.0
		vertex 10.0 0.0 15.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 1.0 14.0
		vertex 10.0 2.0 14.0
		vertex 10.0 2.0 15.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 1.0 14.0
		vertex 10.0 2.0 15.0
		vertex 10.0 1.0 15.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 2.0 14.0
		vertex 10.0 3.0 14.0
		vertex 10.0 3.0 15.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 2.0 14.0
		vertex 10.0 3.0 15.0
		vertex 10.0 2.0 15.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 3.0 14.0
		vertex 10.0 4.0 14.0
		vertex 10.0 4.0 15.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 3.0 14.0
		vertex 10.0 4.0 15.0
		vertex 10.0 3.0 15.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 4.0 14.0
		vertex 10.0 5.0 14.0
		vertex 10.0 5.0 15.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 4.0 14.0
		vertex 10.0 5.0 15.0
		vertex 10.0 4.0 15.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 5.0 14.0
		vertex 10.0 6.0 14.0
		vertex 10.0 6.0 15.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 5.0 14.0
		vertex 10.0 6.0 15.0
		vertex 10.0 5.0 15.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 6.0 14.0
		vertex 10.0 7.0 14.0
		vertex 10.0 7.0 15.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 6.0 14.0
		vertex 10.0 7.0 15.0
		vertex 10.0 6.0 15.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 7.0 14.0
		vertex 10.0 8.0 14.0
		vertex 10.0 8.0 15.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 7.0 14.0
		vertex 10.0 8.0 15.0
		vertex 10.0 7.0 15.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 8.0 14.0
		vertex 10.0 9.0 14.0
		vertex 10.0 9.0 15.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 8.0 14.0
		vertex 10.0 9.0 15.0
		vertex 10.0 8.0 15.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 9.0 14.0
		vertex 10.0 10.0 14.0
		vertex 10.0 10.0 15.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 9.0 14.0
		vertex 10.0 10.0 15.0
		vertex 10.0 9.0 15.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 10.0 14.0
		vertex 10.0 11.0 14.0
		vertex 10.0 11.0 15.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 10.0 14.0
		vertex 10.0 11.0 15.0
		vertex 10.0 10.0 15.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 11.0 14.0
		vertex 10.0 12.0 14.0
		vertex 10.0 12.0 15.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 11.0 14.0
		vertex 10.0 12.0 15.0
		vertex 10.0 11.0 15.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 12.0 14.0
		vertex 10.0 13.0 14.0
		vertex 10.0 13.0 15.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 12.0 14.0
		vertex 10.0 13.0 15.0
		vertex 10.0 12.0 15.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 13.0 14.0
		vertex 10.0 14.0 14.0
		vertex 10.0 14.0 15.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 13.0 14.0
		vertex 10.0 14.0 15.0
		vertex 10.0 13.0 15.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 14.0 14.0
		vertex 10.0 15.0 14.0
		vertex 10.0 15.0 15.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 14.0 14.0
		vertex 10.0 15.0 15.0
		vertex 10.0 14.0 15.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 15.0 14.0
		vertex 10.0 16.0 14.0
		vertex 10.0 16.0 15.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 15.0 14.0
		vertex 10.0 16.0 15.0
		vertex 10.0 15.0 15.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 16.0 14.0
		vertex 10.0 17.0 14.0
		vertex 10.0 17.0 15.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 16.0 14.0
		vertex 10.0 17.0 15.0
		vertex 10.0 16.0 15.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 17.0 14.0
		vertex 10.0 18.0 14.0
		vertex 10.0 18.0 15.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 17.0 14.0
		vertex 10.0 18.0 15.0
		vertex 10.0 17.0 15.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 18.0 14.0
		vertex 10.0 19.0 14.0
		vertex 10.0 19.0 15.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 18.0 14.0
		vertex 10.0 19.0 15.0
		vertex 10.0 18.0 15.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 19.0 14.0
		vertex 10.0 20.0 14.0
		vertex 10.0 20.0 15.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 19.0 14.0
		vertex 10.0 20.0 15.0
		vertex 10.0 19.0 15.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 0.0 15.0
		vertex 10.0 1.0 15.0
		vertex 10.0 1.0 16.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 0.0 15.0
		vertex 10.0 1.0 16.0
		vertex 10.0 0.0 16.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 1.0 15.0
		vertex 10.0 2.0 15.0
		vertex 10.0 2.0 16.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 1.0 15.0
		vertex 10.0 2.0 16.0
		vertex 10.0 1.0 16.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 2.0 15.0
		vertex 10.0 3.0 15.0
		vertex 10.0 3.0 16.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 2.0 15.0
		vertex 10.0 3.0 16.0
		vertex 10.0 2.0 16.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 3.0 15.0
		vertex 10.0 4.0 15.0
		vertex 10.0 4.0 16.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 3.0 15.0
		vertex 10.0 4.0 16.0
		vertex 10.0 3.0 16.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 4.0 15.0
		vertex 10.0 5.0 15.0
		vertex 10.0 5.0 16.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 4.0 15.0
		vertex 10.0 5.0 16.0
		vertex 10.0 4.0 16.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 5.0 15.0
		vertex 10.0 6.0 15.0
		vertex 10.0 6.0 16.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 5.0 15.0
		vertex 10.0 6.0 16.0
		vertex 10.0 5.0 16.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 6.0 15.0
		vertex 10.0 7.0 15.0
		vertex 10.0 7.0 16.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 6.0 15.0
		vertex 10.0 7.0 16.0
		vertex 10.0 6.0 16.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 7.0 15.0
		vertex 10.0 8.0 15.0
		vertex 10.0 8.0 16.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 7.0 15.0
		vertex 10.0 8.0 16.0
		vertex 10.0 7.0 16.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 8.0 15.0
		vertex 10.0 9.0 15.0
		vertex 10.0 9.0 16.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 8.0 15.0
		vertex 10.0 9.0 16.0
		vertex 10.0 8.0 16.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 9.0 15.0
		vertex 10.0 10.0 15.0
		vertex 10.0 10.0 16.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 9.0 15.0
		vertex 10.0 10.0 16.0
		vertex 10.0 9.0 16.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 10.0 15.0
		vertex 10.0 11.0 15.0
		vertex 10.0 11.0 16.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 10.0 15.0
		vertex 10.0 11.0 16.0
		vertex 10.0 10.0 16.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 11.0 15.0
		vertex 10.0 12.0 15.0
		vertex 10.0 12.0 16.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 11.0 15.0
		vertex 10.0 12.0 16.0
		vertex 10.0 11.0 16.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 12.0 15.0
		vertex 10.0 13.0 15.0
		vertex 10.0 13.0 16.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 12.0 15.0
		vertex 10.0 13.0 16.0
		vertex 10.0 12.0 16.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 13.0 15.0
		vertex 10.0 14.0 15.0
		vertex 10.0 14.0 16.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 13.0 15.0
		vertex 10.0 14.0 16.0
		vertex 10.0 13.0 16.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 14.0 15.0
		vertex 10.0 15.0 15.0
		vertex 10.0 15.0 16.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 14.0 15.0
		vertex 10.0 15.0 16.0
		vertex 10.0 14.0 16.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 15.0 15.0
		vertex 10.0 16.0 15.0
		vertex 10.0 16.0 16.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 15.0 15.0
		vertex 10.0 16.0 16.0
		vertex 10.0 15.0 16.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 16.0 15.0
		vertex 10.0 17.0 15.0
		vertex 10.0 17.0 16.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 16.0 15.0
		vertex 10.0 17.0 16.0
		vertex 10.0 16.0 16.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 17.0 15.0
		vertex 10.0 18.0 15.0
		vertex 10.0 18.0 16.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 17.0 15.0
		vertex 10.0 18.0 16.0
		vertex 10.0 17.0 16.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 18.0 15.0
		vertex 10.0 19.0 15.0
		vertex 10.0 19.0 16.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 18.0 15.0
		vertex 10.0 19.0 16.0
		vertex 10.0 18.0 16.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 19.0 15.0
		vertex 10.0 20.0 15.0
		vertex 10.0 20.0 16.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 19.0 15.0
		vertex 10.0 20.0 16.0
		vertex 10.0 19.0 16.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 0.0 16.0
		vertex 10.0 1.0 16.0
		vertex 10.0 1.0 17.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 0.0 16.0
		vertex 10.0 1.0 17.0
		vertex 10.0 0.0 17.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 1.0 16.0
		vertex 10.0 2.0 16.0
		vertex 10.0 2.0 17.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 1.0 16.0
		vertex 10.0 2.0 17.0
		vertex 10.0 1.0 17.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 2.0 16.0
		vertex 10.0 3.0 16.0
		vertex 10.0 3.0 17.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 2.0 16.0
		vertex 10.0 3.0 17.0
		vertex 10.0 2.0 17.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 3.0 16.0
		vertex 10.0 4.0 16.0
		vertex 10.0 4.0 17.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 3.0 16.0
		vertex 10.0 4.0 17.0
		vertex 10.0 3.0 17.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 4.0 16.0
		vertex 10.0 5.0 16.0
		vertex 10.0 5.0 17.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 4.0 16.0
		vertex 10.0 5.0 17.0
		vertex 10.0 4.0 17.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 5.0 16.0
		vertex 10.0 6.0 16.0
		vertex 10.0 6.0 17.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 5.0 16.0
		vertex 10.0 6.0 17.0
		vertex 10.0 5.0 17.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 6.0 16.0
		vertex 10.0 7.0 16.0
		vertex 10.0 7.0 17.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 6.0 16.0
		vertex 10.0 7.0 17.0
		vertex 10.0 6.0 17.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 7.0 16.0
		vertex 10.0 8.0 16.0
		vertex 10.0 8.0 17.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 7.0 16.0
		vertex 10.0 8.0 17.0
		vertex 10.0 7.0 17.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 8.0 16.0
		vertex 10.0 9.0 16.0
		vertex 10.0 9.0 17.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 8.0 16.0
		vertex 10.0 9.0 17.0
		vertex 10.0 8.0 17.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 9.0 16.0
		vertex 10.0 10.0 16.0
		vertex 10.0 10.0 17.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 9.0 16.0
		vertex 10.0 10.0 17.0
		vertex 10.0 9.0 17.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 10.0 16.0
		vertex 10.0 11.0 16.0
		vertex 10.0 11.0 17.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 10.0 16.0
		vertex 10.0 11.0 17.0
		vertex 10.0 10.0 17.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 11.0 16.0
		vertex 10.0 12.0 16.0
		vertex 10.0 12.0 17.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 11.0 16.0
		vertex 10.0 12.0 17.0
		vertex 10.0 11.0 17.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 12.0 16.0
		vertex 10.0 13.0 16.0
		vertex 10.0 13.0 17.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 12.0 16.0
		vertex 10.0 13.0 17.0
		vertex 10.0 12.0 17.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 13.0 16.0
		vertex 10.0 14.0 16.0
		vertex 10.0 14.0 17.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 13.0 16.0
		vertex 10.0 14.0 17.0
		vertex 10.0 13.0 17.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 14.0 16.0
		vertex 10.0 15.0 16.0
		vertex 10.0 15.0 17.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 14.0 16.0
		vertex 10.0 15.0 17.0
		vertex 10.0 14.0 17.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 15.0 16.0
		vertex 10.0 16.0 16.0
		vertex 10.0 16.0 17.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 15.0 16.0
		vertex 10.0 16.0 17.0
		vertex 10.0 15.0 17.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 16.0 16.0
		vertex 10.0 17.0 16.0
		vertex 10.0 17.0 17.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 16.0 16.0
		vertex 10.0 17.0 17.0
		vertex 10.0 16.0 17.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 17.0 16.0
		vertex 10.0 18.0 16.0
		vertex 10.0 18.0 17.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 17.0 16.0
		vertex 10.0 18.0 17.0
		vertex 10.0 17.0 17.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 18.0 16.0
		vertex 10.0 19.0 16.0
		vertex 10.0 19.0 17.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 18.0 16.0
		vertex 10.0 19.0 17.0
		vertex 10.0 18.0 17.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 19.0 16.0
		vertex 10.0 20.0 16.0
		vertex 10.0 20.0 17.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 19.0 16.0
		vertex 10.0 20.0 17.0
		vertex 10.0 19.0 17.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 0.0 17.0
		vertex 10.0 1.0 17.0
		vertex 10.0 1.0 18.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 0.0 17.0
		vertex 10.0 1.0 18.0
		vertex 10.0 0.0 18.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 1.0 17.0
		vertex 10.0 2.0 17.0
		vertex 10.0 2.0 18.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 1.0 17.0
		vertex 10.0 2.0 18.0
		vertex 10.0 1.0 18.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 2.0 17.0
		vertex 10.0 3.0 17.0
		vertex 10.0 3.0 18.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 2.0 17.0
		vertex 10.0 3.0 18.0
		vertex 10.0 2.0 18.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 3.0 17.0
		vertex 10.0 4.0 17.0
		vertex 10.0 4.0 18.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 3.0 17.0
		vertex 10.0 4.0 18.0
		vertex 10.0 3.0 18.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 4.0 17.0
		vertex 10.0 5.0 17.0
		vertex 10.0 5.0 18.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 4.0 17.0
		vertex 10.0 5.0 18.0
		vertex 10.0 4.0 18.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 5.0 17.0
		vertex 10.0 6.0 17.0
		vertex 10.0 6.0 18.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 5.0 17.0
		vertex 10.0 6.0 18.0
		vertex 10.0 5.0 18.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 6.0 17.0
		vertex 10.0 7.0 17.0
		vertex 10.0 7.0 18.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 6.0 17.0
		vertex 10.0 7.0 18.0
		vertex 10.0 6.0 18.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 7.0 17.0
		vertex 10.0 8.0 17.0
		vertex 10.0 8.0 18.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 7.0 17.0
		vertex 10.0 8.0 18.0
		vertex 10.0 7.0 18.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 8.0 17.0
		vertex 10.0 9.0 17.0
		vertex 10.0 9.0 18.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 8.0 17.0
		vertex 10.0 9.0 18.0
		vertex 10.0 8.0 18.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 9.0 17.0
		vertex 10.0 10.0 17.0
		vertex 10.0 10.0 18.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 9.0 17.0
		vertex 10.0 10.0 18.0
		vertex 10.0 9.0 18.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 10.0 17.0
		vertex 10.0 11.0 17.0
		vertex 10.0 11.0 18.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 10.0 17.0
		vertex 10.0 11.0 18.0
		vertex 10.0 10.0 18.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 11.0 17.0
		vertex 10.0 12.0 17.0
		vertex 10.0 12.0 18.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 11.0 17.0
		vertex 10.0 12.0 18.0
		vertex 10.0 11.0 18.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 12.0 17.0
		vertex 10.0 13.0 17.0
		vertex 10.0 13.0 18.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 12.0 17.0
		vertex 10.0 13.0 18.0
		vertex 10.0 12.0 18.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 13.0 17.0
		vertex 10.0 14.0 17.0
		vertex 10.0 14.0 18.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 13.0 17.0
		vertex 10.0 14.0 18.0
		vertex 10.0 13.0 18.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 14.0 17.0
		vertex 10.0 15.0 17.0
		vertex 10.0 15.0 18.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 14.0 17.0
		vertex 10.0 15.0 18.0
		vertex 10.0 14.0 18.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 15.0 17.0
		vertex 10.0 16.0 17.0
		vertex 10.0 16.0 18.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 15.0 17.0
		vertex 10.0 16.0 18.0
		vertex 10.0 15.0 18.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 16.0 17.0
		vertex 10.0 17.0 17.0
		vertex 10.0 17.0 18.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 16.0 17.0
		vertex 10.0 17.0 18.0
		vertex 10.0 16.0 18.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 17.0 17.0
		vertex 10.0 18.0 17.0
		vertex 10.0 18.0 18.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 17.0 17.0
		vertex 10.0 18.0 18.0
		vertex 10.0 17.0 18.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 18.0 17.0
		vertex 10.0 19.0 17.0
		vertex 10.0 19.0 18.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 18.0 17.0
		vertex 10.0 19.0 18.0
		vertex 10.0 18.0 18.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 19.0 17.0
		vertex 10.0 20.0 17.0
		vertex 10.0 20.0 18.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 19.0 17.0
		vertex 10.0 20.0 18.0
		vertex 10.0 19.0 18.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 0.0 18.0
		vertex 10.0 1.0 18.0
		vertex 10.0 1.0 19.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 0.0 18.0
		vertex 10.0 1.0 19.0
		vertex 10.0 0.0 19.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 1.0 18.0
		vertex 10.0 2.0 18.0
		vertex 10.0 2.0 19.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 1.0 18.0
		vertex 10.0 2.0 19.0
		vertex 10.0 1.0 19.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 2.0 18.0
		vertex 10.0 3.0 18.0
		vertex 10.0 3.0 19.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 2.0 18.0
		vertex 10.0 3.0 19.0
		vertex 10.0 2.0 19.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 3.0 18.0
		vertex 10.0 4.0 18.0
		vertex 10.0 4.0 19.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 3.0 18.0
		vertex 10.0 4.0 19.0
		vertex 10.0 3.0 19.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 4.0 18.0
		vertex 10.0 5.0 18.0
		vertex 10.0 5.0 19.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 4.0 18.0
		vertex 10.0 5.0 19.0
		vertex 10.0 4.0 19.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 5.0 18.0
		vertex 10.0 6.0 18.0
		vertex 10.0 6.0 19.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 5.0 18.0
		vertex 10.0 6.0 19.0
		vertex 10.0 5.0 19.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 6.0 18.0
		vertex 10.0 7.0 18.0
		vertex 10.0 7.0 19.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 6.0 18.0
		vertex 10.0 7.0 19.0
		vertex 10.0 6.0 19.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 7.0 18.0
		vertex 10.0 8.0 18.0
		vertex 10.0 8.0 19.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 7.0 18.0
		vertex 10.0 8.0 19.0
		vertex 10.0 7.0 19.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 8.0 18.0
		vertex 10.0 9.0 18.0
		vertex 10.0 9.0 19.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 8.0 18.0
		vertex 10.0 9.0 19.0
		vertex 10.0 8.0 19.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 9.0 18.0
		vertex 10.0 10.0 18.0
		vertex 10.0 10.0 19.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 9.0 18.0
		vertex 10.0 10.0 19.0
		vertex 10.0 9.0 19.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 10.0 18.0
		vertex 10.0 11.0 18.0
		vertex 10.0 11.0 19.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 10.0 18.0
		vertex 10.0 11.0 19.0
		vertex 10.0 10.0 19.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 11.0 18.0
		vertex 10.0 12.0 18.0
		vertex 10.0 12.0 19.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 11.0 18.0
		vertex 10.0 12.0 19.0
		vertex 10.0 11.0 19.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 12.0 18.0
		vertex 10.0 13.0 18.0
		vertex 10.0 13.0 19.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 12.0 18.0
		vertex 10.0 13.0 19.0
		vertex 10.0 12.0 19.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 13.0 18.0
		vertex 10.0 14.0 18.0
		vertex 10.0 14.0 19.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 13.0 18.0
		vertex 10.0 14.0 19.0
		vertex 10.0 13.0 19.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 14.0 18.0
		vertex 10.0 15.0 18.0
		vertex 10.0 15.0 19.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 14.0 18.0
		vertex 10.0 15.0 19.0
		vertex 10.0 14.0 19.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 15.0 18.0
		vertex 10.0 16.0 18.0
		vertex 10.0 16.0 19.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 15.0 18.0
		vertex 10.0 16.0 19.0
		vertex 10.0 15.0 19.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 16.0 18.0
		vertex 10.0 17.0 18.0
		vertex 10.0 17.0 19.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 16.0 18.0
		vertex 10.0 17.0 19.0
		vertex 10.0 16.0 19.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 17.0 18.0
		vertex 10.0 18.0 18.0
		vertex 10.0 18.0 19.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 17.0 18.0
		vertex 10.0 18.0 19.0
		vertex 10.0 17.0 19.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 18.0 18.0
		vertex 10.0 19.0 18.0
		vertex 10.0 19.0 19.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 18.0 18.0
		vertex 10.0 19.0 19.0
		vertex 10.0 18.0 19.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 19.0 18.0
		vertex 10.0 20.0 18.0
		vertex 10.0 20.0 19.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 19.0 18.0
		vertex 10.0 20.0 19.0
		vertex 10.0 19.0 19.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 0.0 19.0
		vertex 10.0 1.0 19.0
		vertex 10.0 1.0 20.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 0.0 19.0
		vertex 10.0 1.0 20.0
		vertex 10.0 0.0 20.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 1.0 19.0
		vertex 10.0 2.0 19.0
		vertex 10.0 2.0 20.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 1.0 19.0
		vertex 10.0 2.0 20.0
		vertex 10.0 1.0 20.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 2.0 19.0
		vertex 10.0 3.0 19.0
		vertex 10.0 3.0 20.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 2.0 19.0
		vertex 10.0 3.0 20.0
		vertex 10.0 2.0 20.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 3.0 19.0
		vertex 10.0 4.0 19.0
		vertex 10.0 4.0 20.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 3.0 19.0
		vertex 10.0 4.0 20.0
		vertex 10.0 3.0 20.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 4.0 19.0
		vertex 10.0 5.0 19.0
		vertex 10.0 5.0 20.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 4.0 19.0
		vertex 10.0 5.0 20.0
		vertex 10.0 4.0 20.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 5.0 19.0
		vertex 10.0 6.0 19.0
		vertex 10.0 6.0 20.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 5.0 19.0
		vertex 10.0 6.0 20.0
		vertex 10.0 5.0 20.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 6.0 19.0
		vertex 10.0 7.0 19.0
		vertex 10.0 7.0 20.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 6.0 19.0
		vertex 10.0 7.0 20.0
		vertex 10.0 6.0 20.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 7.0 19.0
		vertex 10.0 8.0 19.0
		vertex 10.0 8.0 20.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 7.0 19.0
		vertex 10.0 8.0 20.0
		vertex 10.0 7.0 20.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 8.0 19.0
		vertex 10.0 9.0 19.0
		vertex 10.0 9.0 20.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 8.0 19.0
		vertex 10.0 9.0 20.0
		vertex 10.0 8.0 20.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 9.0 19.0
		vertex 10.0 10.0 19.0
		vertex 10.0 10.0 20.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 9.0 19.0
		vertex 10.0 10.0 20.0
		vertex 10.0 9.0 20.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 10.0 19.0
		vertex 10.0 11.0 19.0
		vertex 10.0 11.0 20.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 10.0 19.0
		vertex 10.0 11.0 20.0
		vertex 10.0 10.0 20.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 11.0 19.0
		vertex 10.0 12.0 19.0
		vertex 10.0 12.0 20.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 11.0 19.0
		vertex 10.0 12.0 20.0
		vertex 10.0 11.0 20.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 12.0 19.0
		vertex 10.0 13.0 19.0
		vertex 10.0 13.0 20.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 12.0 19.0
		vertex 10.0 13.0 20.0
		vertex 10.0 12.0 20.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 13.0 19.0
		vertex 10.0 14.0 19.0
		vertex 10.0 14.0 20.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 13.0 19.0
		vertex 10.0 14.0 20.0
		vertex 10.0 13.0 20.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 14.0 19.0
		vertex 10.0 15.0 19.0
		vertex 10.0 15.0 20.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 14.0 19.0
		vertex 10.0 15.0 20.0
		vertex 10.0 14.0 20.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 15.0 19.0
		vertex 10.0 16.0 19.0
		vertex 10.0 16.0 20.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 15.0 19.0
		vertex 10.0 16.0 20.0
		vertex 10.0 15.0 20.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 16.0 19.0
		vertex 10.0 17.0 19.0
		vertex 10.0 17.0 20.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 16.0 19.0
		vertex 10.0 17.0 20.0
		vertex 10.0 16.0 20.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 17.0 19.0
		vertex 10.0 18.0 19.0
		vertex 10.0 18.0 20.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 17.0 19.0
		vertex 10.0 18.0 20.0
		vertex 10.0 17.0 20.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 18.0 19.0
		vertex 10.0 19.0 19.0
		vertex 10.0 19.0 20.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 18.0 19.0
		vertex 10.0 19.0 20.0
		vertex 10.0 18.0 20.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 19.0 19.0
		vertex 10.0 20.0 19.0
		vertex 10.0 20.0 20.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 19.0 19.0
		vertex 10.0 20.0 20.0
		vertex 10.0 19.0 20.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 0.0 20.0
		vertex 10.0 1.0 20.0
		vertex 10.0 1.0 21.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 0.0 20.0
		vertex 10.0 1.0 21.0
		vertex 10.0 0.0 21.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 1.0 20.0
		vertex 10.0 2.0 20.0
		vertex 10.0 2.0 21.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 1.0 20.0
		vertex 10.0 2.0 21.0
		vertex 10.0 1.0 21.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 2.0 20.0
		vertex 10.0 3.0 20.0
		vertex 10.0 3.0 21.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 2.0 20.0
		vertex 10.0 3.0 21.0
		vertex 10.0 2.0 21.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 3.0 20.0
		vertex 10.0 4.0 20.0
		vertex 10.0 4.0 21.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 3.0 20.0
		vertex 10.0 4.0 21.0
		vertex 10.0 3.0 21.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 4.0 20.0
		vertex 10.0 5.0 20.0
		vertex 10.0 5.0 21.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 4.0 20.0
		vertex 10.0 5.0 21.0
		vertex 10.0 4.0 21.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 5.0 20.0
		vertex 10.0 6.0 20.0
		vertex 10.0 6.0 21.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 5.0 20.0
		vertex 10.0 6.0 21.0
		vertex 10.0 5.0 21.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 6.0 20.0
		vertex 10.0 7.0 20.0
		vertex 10.0 7.0 21.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 6.0 20.0
		vertex 10.0 7.0 21.0
		vertex 10.0 6.0 21.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 7.0 20.0
		vertex 10.0 8.0 20.0
		vertex 10.0 8.0 21.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 7.0 20.0
		vertex 10.0 8.0 21.0
		vertex 10.0 7.0 21.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 8.0 20.0
		vertex 10.0 9.0 20.0
		vertex 10.0 9.0 21.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 8.0 20.0
		vertex 10.0 9.0 21.0
		vertex 10.0 8.0 21.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 9.0 20.0
		vertex 10.0 10.0 20.0
		vertex 10.0 10.0 21.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 9.0 20.0
		vertex 10.0 10.0 21.0
		vertex 10.0 9.0 21.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 10.0 20.0
		vertex 10.0 11.0 20.0
		vertex 10.0 11.0 21.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 10.0 20.0
		vertex 10.0 11.0 21.0
		vertex 10.0 10.0 21.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 11.0 20.0
		vertex 10.0 12.0 20.0
		vertex 10.0 12.0 21.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 11.0 20.0
		vertex 10.0 12.0 21.0
		vertex 10.0 11.0 21.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 12.0 20.0
		vertex 10.0 13.0 20.0
		vertex 10.0 13.0 21.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 12.0 20.0
		vertex 10.0 13.0 21.0
		vertex 10.0 12.0 21.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 13.0 20.0
		vertex 10.0 14.0 20.0
		vertex 10.0 14.0 21.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 13.0 20.0
		vertex 10.0 14.0 21.0
		vertex 10.0 13.0 21.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 14.0 20.0
		vertex 10.0 15.0 20.0
		vertex 10.0 15.0 21.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 14.0 20.0
		vertex 10.0 15.0 21.0
		vertex 10.0 14.0 21.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 15.0 20.0
		vertex 10.0 16.0 20.0
		vertex 10.0 16.0 21.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 15.0 20.0
		vertex 10.0 16.0 21.0
		vertex 10.0 15.0 21.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 16.0 20.0
		vertex 10.0 17.0 20.0
		vertex 10.0 17.0 21.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 16.0 20.0
		vertex 10.0 17.0 21.0
		vertex 10.0 16.0 21.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 17.0 20.0
		vertex 10.0 18.0 20.0
		vertex 10.0 18.0 21.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 17.0 20.0
		vertex 10.0 18.0 21.0
		vertex 10.0 17.0 21.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 18.0 20.0
		vertex 10.0 19.0 20.0
		vertex 10.0 19.0 21.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 18.0 20.0
		vertex 10.0 19.0 21.0
		vertex 10.0 18.0 21.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 19.0 20.0
		vertex 10.0 20.0 20.0
		vertex 10.0 20.0 21.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 19.0 20.0
		vertex 10.0 20.0 21.0
		vertex 10.0 19.0 21.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 0.0 21.0
		vertex 10.0 1.0 21.0
		vertex 10.0 1.0 22.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 0.0 21.0
		vertex 10.0 1.0 22.0
		vertex 10.0 0.0 22.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 1.0 21.0
		vertex 10.0 2.0 21.0
		vertex 10.0 2.0 22.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 1.0 21.0
		vertex 10.0 2.0 22.0
		vertex 10.0 1.0 22.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 2.0 21.0
		vertex 10.0 3.0 21.0
		vertex 10.0 3.0 22.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 2.0 21.0
		vertex 10.0 3.0 22.0
		vertex 10.0 2.0 22.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 3.0 21.0
		vertex 10.0 4.0 21.0
		vertex 10.0 4.0 22.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 3.0 21.0
		vertex 10.0 4.0 22.0
		vertex 10.0 3.0 22.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 4.0 21.0
		vertex 10.0 5.0 21.0
		vertex 10.0 5.0 22.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 4.0 21.0
		vertex 10.0 5.0 22.0
		vertex 10.0 4.0 22.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 5.0 21.0
		vertex 10.0 6.0 21.0
		vertex 10.0 6.0 22.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 5.0 21.0
		vertex 10.0 6.0 22.0
		vertex 10.0 5.0 22.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 6.0 21.0
		vertex 10.0 7.0 21.0
		vertex 10.0 7.0 22.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 6.0 21.0
		vertex 10.0 7.0 22.0
		vertex 10.0 6.0 22.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 7.0 21.0
		vertex 10.0 8.0 21.0
		vertex 10.0 8.0 22.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 7.0 21.0
		vertex 10.0 8.0 22.0
		vertex 10.0 7.0 22.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 8.0 21.0
		vertex 10.0 9.0 21.0
		vertex 10.0 9.0 22.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 8.0 21.0
		vertex 10.0 9.0 22.0
		vertex 10.0 8.0 22.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 9.0 21.0
		vertex 10.0 10.0 21.0
		vertex 10.0 10.0 22.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 9.0 21.0
		vertex 10.0 10.0 22.0
		vertex 10.0 9.0 22.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 10.0 21.0
		vertex 10.0 11.0 21.0
		vertex 10.0 11.0 22.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 10.0 21.0
		vertex 10.0 11.0 22.0
		vertex 10.0 10.0 22.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 11.0 21.0
		vertex 10.0 12.0 21.0
		vertex 10.0 12.0 22.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 11.0 21.0
		vertex 10.0 12.0 22.0
		vertex 10.0 11.0 22.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 12.0 21.0
		vertex 10.0 13.0 21.0
		vertex 10.0 13.0 22.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 12.0 21.0
		vertex 10.0 13.0 22.0
		vertex 10.0 12.0 22.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 13.0 21.0
		vertex 10.0 14.0 21.0
		vertex 10.0 14.0 22.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 13.0 21.0
		vertex 10.0 14.0 22.0
		vertex 10.0 13.0 22.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 14.0 21.0
		vertex 10.0 15.0 21.0
		vertex 10.0 15.0 22.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 14.0 21.0
		vertex 10.0 15.0 22.0
		vertex 10.0 14.0 22.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 15.0 21.0
		vertex 10.0 16.0 21.0
		vertex 10.0 16.0 22.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 15.0 21.0
		vertex 10.0 16.0 22.0
		vertex 10.0 15.0 22.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 16.0 21.0
		vertex 10.0 17.0 21.0
		vertex 10.0 17.0 22.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 16.0 21.0
		vertex 10.0 17.0 22.0
		vertex 10.0 16.0 22.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 17.0 21.0
		vertex 10.0 18.0 21.0
		vertex 10.0 18.0 22.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 17.0 21.0
		vertex 10.0 18.0 22.0
		vertex 10.0 17.0 22.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 18.0 21.0
		vertex 10.0 19.0 21.0
		vertex 10.0 19.0 22.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 18.0 21.0
		vertex 10.0 19.0 22.0
		vertex 10.0 18.0 22.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 19.0 21.0
		vertex 10.0 20.0 21.0
		vertex 10.0 20.0 22.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 19.0 21.0
		vertex 10.0 20.0 22.0
		vertex 10.0 19.0 22.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 0.0 22.0
		vertex 10.0 1.0 22.0
		vertex 10.0 1.0 23.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 0.0 22.0
		vertex 10.0 1.0 23.0
		vertex 10.0 0.0 23.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 1.0 22.0
		vertex 10.0 2.0 22.0
		vertex 10.0 2.0 23.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 1.0 22.0
		vertex 10.0 2.0 23.0
		vertex 10.0 1.0 23.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 2.0 22.0
		vertex 10.0 3.0 22.0
		vertex 10.0 3.0 23.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 2.0 22.0
		vertex 10.0 3.0 23.0
		vertex 10.0 2.0 23.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 3.0 22.0
		vertex 10.0 4.0 22.0
		vertex 10.0 4.0 23.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 3.0 22.0
		vertex 10.0 4.0 23.0
		vertex 10.0 3.0 23.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 4.0 22.0
		vertex 10.0 5.0 22.0
		vertex 10.0 5.0 23.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 4.0 22.0
		vertex 10.0 5.0 23.0
		vertex 10.0 4.0 23.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 5.0 22.0
		vertex 10.0 6.0 22.0
		vertex 10.0 6.0 23.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 5.0 22.0
		vertex 10.0 6.0 23.0
		vertex 10.0 5.0 23.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 6.0 22.0
		vertex 10.0 7.0 22.0
		vertex 10.0 7.0 23.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 6.0 22.0
		vertex 10.0 7.0 23.0
		vertex 10.0 6.0 23.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 7.0 22.0
		vertex 10.0 8.0 22.0
		vertex 10.0 8.0 23.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 7.0 22.0
		vertex 10.0 8.0 23.0
		vertex 10.0 7.0 23.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 8.0 22.0
		vertex 10.0 9.0 22.0
		vertex 10.0 9.0 23.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 8.0 22.0
		vertex 10.0 9.0 23.0
		vertex 10.0 8.0 23.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 9.0 22.0
		vertex 10.0 10.0 22.0
		vertex 10.0 10.0 23.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 9.0 22.0
		vertex 10.0 10.0 23.0
		vertex 10.0 9.0 23.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 10.0 22.0
		vertex 10.0 11.0 22.0
		vertex 10.0 11.0 23.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 10.0 22.0
		vertex 10.0 11.0 23.0
		vertex 10.0 10.0 23.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 11.0 22.0
		vertex 10.0 12.0 22.0
		vertex 10.0 12.0 23.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 11.0 22.0
		vertex 10.0 12.0 23.0
		vertex 10.0 11.0 23.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 12.0 22.0
		vertex 10.0 13.0 22.0
		vertex 10.0 13.0 23.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 12.0 22.0
		vertex 10.0 13.0 23.0
		vertex 10.0 12.0 23.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 13.0 22.0
		vertex 10.0 14.0 22.0
		vertex 10.0 14.0 23.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 13.0 22.0
		vertex 10.0 14.0 23.0
		vertex 10.0 13.0 23.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 14.0 22.0
		vertex 10.0 15.0 22.0
		vertex 10.0 15.0 23.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 14.0 22.0
		vertex 10.0 15.0 23.0
		vertex 10.0 14.0 23.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 15.0 22.0
		vertex 10.0 16.0 22.0
		vertex 10.0 16.0 23.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 15.0 22.0
		vertex 10.0 16.0 23.0
		vertex 10.0 15.0 23.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 16.0 22.0
		vertex 10.0 17.0 22.0
		vertex 10.0 17.0 23.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 16.0 22.0
		vertex 10.0 17.0 23.0
		vertex 10.0 16.0 23.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 17.0 22.0
		vertex 10.0 18.0 22.0
		vertex 10.0 18.0 23.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 17.0 22.0
		vertex 10.0 18.0 23.0
		vertex 10.0 17.0 23.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 18.0 22.0
		vertex 10.0 19.0 22.0
		vertex 10.0 19.0 23.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 18.0 22.0
		vertex 10.0 19.0 23.0
		vertex 10.0 18.0 23.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 19.0 22.0
		vertex 10.0 20.0 22.0
		vertex 10.0 20.0 23.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 19.0 22.0
		vertex 10.0 20.0 23.0
		vertex 10.0 19.0 23.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 0.0 23.0
		vertex 10.0 1.0 23.0
		vertex 10.0 1.0 24.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 0.0 23.0
		vertex 10.0 1.0 24.0
		vertex 10.0 0.0 24.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 1.0 23.0
		vertex 10.0 2.0 23.0
		vertex 10.0 2.0 24.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 1.0 23.0
		vertex 10.0 2.0 24.0
		vertex 10.0 1.0 24.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 2.0 23.0
		vertex 10.0 3.0 23.0
		vertex 10.0 3.0 24.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 2.0 23.0
		vertex 10.0 3.0 24.0
		vertex 10.0 2.0 24.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 3.0 23.0
		vertex 10.0 4.0 23.0
		vertex 10.0 4.0 24.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 3.0 23.0
		vertex 10.0 4.0 24.0
		vertex 10.0 3.0 24.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 4.0 23.0
		vertex 10.0 5.0 23.0
		vertex 10.0 5.0 24.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 4.0 23.0
		vertex 10.0 5.0 24.0
		vertex 10.0 4.0 24.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 5.0 23.0
		vertex 10.0 6.0 23.0
		vertex 10.0 6.0 24.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 5.0 23.0
		vertex 10.0 6.0 24.0
		vertex 10.0 5.0 24.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 6.0 23.0
		vertex 10.0 7.0 23.0
		vertex 10.0 7.0 24.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 6.0 23.0
		vertex 10.0 7.0 24.0
		vertex 10.0 6.0 24.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 7.0 23.0
		vertex 10.0 8.0 23.0
		vertex 10.0 8.0 24.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 7.0 23.0
		vertex 10.0 8.0 24.0
		vertex 10.0 7.0 24.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 8.0 23.0
		vertex 10.0 9.0 23.0
		vertex 10.0 9.0 24.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 8.0 23.0
		vertex 10.0 9.0 24.0
		vertex 10.0 8.0 24.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 9.0 23.0
		vertex 10.0 10.0 23.0
		vertex 10.0 10.0 24.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 9.0 23.0
		vertex 10.0 10.0 24.0
		vertex 10.0 9.0 24.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 10.0 23.0
		vertex 10.0 11.0 23.0
		vertex 10.0 11.0 24.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 10.0 23.0
		vertex 10.0 11.0 24.0
		vertex 10.0 10.0 24.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 11.0 23.0
		vertex 10.0 12.0 23.0
		vertex 10.0 12.0 24.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 11.0 23.0
		vertex 10.0 12.0 24.0
		vertex 10.0 11.0 24.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 12.0 23.0
		vertex 10.0 13.0 23.0
		vertex 10.0 13.0 24.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 12.0 23.0
		vertex 10.0 13.0 24.0
		vertex 10.0 12.0 24.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 13.0 23.0
		vertex 10.0 14.0 23.0
		vertex 10.0 14.0 24.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 13.0 23.0
		vertex 10.0 14.0 24.0
		vertex 10.0 13.0 24.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 14.0 23.0
		vertex 10.0 15.0 23.0
		vertex 10.0 15.0 24.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 14.0 23.0
		vertex 10.0 15.0 24.0
		vertex 10.0 14.0 24.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 15.0 23.0
		vertex 10.0 16.0 23.0
		vertex 10.0 16.0 24.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 15.0 23.0
		vertex 10.0 16.0 24.0
		vertex 10.0 15.0 24.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 16.0 23.0
		vertex 10.0 17.0 23.0
		vertex 10.0 17.0 24.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 16.0 23.0
		vertex 10.0 17.0 24.0
		vertex 10.0 16.0 24.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 17.0 23.0
		vertex 10.0 18.0 23.0
		vertex 10.0 18.0 24.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 17.0 23.0
		vertex 10.0 18.0 24.0
		vertex 10.0 17.0 24.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 18.0 23.0
		vertex 10.0 19.0 23.0
		vertex 10.0 19.0 24.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 18.0 23.0
		vertex 10.0 19.0 24.0
		vertex 10.0 18.0 24.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 19.0 23.0
		vertex 10.0 20.0 23.0
		vertex 10.0 20.0 24.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 19.0 23.0
		vertex 10.0 20.0 24.0
		vertex 10.0 19.0 24.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 0.0 24.0
		vertex 10.0 1.0 24.0
		vertex 10.0 1.0 25.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 0.0 24.0
		vertex 10.0 1.0 25.0
		vertex 10.0 0.0 25.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 1.0 24.0
		vertex 10.0 2.0 24.0
		vertex 10.0 2.0 25.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 1.0 24.0
		vertex 10.0 2.0 25.0
		vertex 10.0 1.0 25.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 2.0 24.0
		vertex 10.0 3.0 24.0
		vertex 10.0 3.0 25.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 2.0 24.0
		vertex 10.0 3.0 25.0
		vertex 10.0 2.0 25.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 3.0 24.0
		vertex 10.0 4.0 24.0
		vertex 10.0 4.0 25.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 3.0 24.0
		vertex 10.0 4.0 25.0
		vertex 10.0 3.0 25.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 4.0 24.0
		vertex 10.0 5.0 24.0
		vertex 10.0 5.0 25.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 4.0 24.0
		vertex 10.0 5.0 25.0
		vertex 10.0 4.0 25.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 5.0 24.0
		vertex 10.0 6.0 24.0
		vertex 10.0 6.0 25.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 5.0 24.0
		vertex 10.0 6.0 25.0
		vertex 10.0 5.0 25.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 6.0 24.0
		vertex 10.0 7.0 24.0
		vertex 10.0 7.0 25.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 6.0 24.0
		vertex 10.0 7.0 25.0
		vertex 10.0 6.0 25.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 7.0 24.0
		vertex 10.0 8.0 24.0
		vertex 10.0 8.0 25.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 7.0 24.0
		vertex 10.0 8.0 25.0
		vertex 10.0 7.0 25.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 8.0 24.0
		vertex 10.0 9.0 24.0
		vertex 10.0 9.0 25.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 8.0 24.0
		vertex 10.0 9.0 25.0
		vertex 10.0 8.0 25.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 9.0 24.0
		vertex 10.0 10.0 24.0
		vertex 10.0 10.0 25.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 9.0 24.0
		vertex 10.0 10.0 25.0
		vertex 10.0 9.0 25.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 10.0 24.0
		vertex 10.0 11.0 24.0
		vertex 10.0 11.0 25.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 10.0 24.0
		vertex 10.0 11.0 25.0
		vertex 10.0 10.0 25.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 11.0 24.0
		vertex 10.0 12.0 24.0
		vertex 10.0 12.0 25.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 11.0 24.0
		vertex 10.0 12.0 25.0
		vertex 10.0 11.0 25.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 12.0 24.0
		vertex 10.0 13.0 24.0
		vertex 10.0 13.0 25.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 12.0 24.0
		vertex 10.0 13.0 25.0
		vertex 10.0 12.0 25.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 13.0 24.0
		vertex 10.0 14.0 24.0
		vertex 10.0 14.0 25.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 13.0 24.0
		vertex 10.0 14.0 25.0
		vertex 10.0 13.0 25.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 14.0 24.0
		vertex 10.0 15.0 24.0
		vertex 10.0 15.0 25.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 14.0 24.0
		vertex 10.0 15.0 25.0
		vertex 10.0 14.0 25.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 15.0 24.0
		vertex 10.0 16.0 24.0
		vertex 10.0 16.0 25.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 15.0 24.0
		vertex 10.0 16.0 25.0
		vertex 10.0 15.0 25.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 16.0 24.0
		vertex 10.0 17.0 24.0
		vertex 10.0 17.0 25.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 16.0 24.0
		vertex 10.0 17.0 25.0
		vertex 10.0 16.0 25.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 17.0 24.0
		vertex 10.0 18.0 24.0
		vertex 10.0 18.0 25.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 17.0 24.0
		vertex 10.0 18.0 25.0
		vertex 10.0 17.0 25.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 18.0 24.0
		vertex 10.0 19.0 24.0
		vertex 10.0 19.0 25.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 18.0 24.0
		vertex 10.0 19.0 25.0
		vertex 10.0 18.0 25.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 19.0 24.0
		vertex 10.0 20.0 24.0
		vertex 10.0 20.0 25.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 19.0 24.0
		vertex 10.0 20.0 25.0
		vertex 10.0 19.0 25.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 0.0 25.0
		vertex 10.0 1.0 25.0
		vertex 10.0 1.0 26.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 0.0 25.0
		vertex 10.0 1.0 26.0
		vertex 10.0 0.0 26.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 1.0 25.0
		vertex 10.0 2.0 25.0
		vertex 10.0 2.0 26.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 1.0 25.0
		vertex 10.0 2.0 26.0
		vertex 10.0 1.0 26.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 2.0 25.0
		vertex 10.0 3.0 25.0
		vertex 10.0 3.0 26.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 2.0 25.0
		vertex 10.0 3.0 26.0
		vertex 10.0 2.0 26.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 3.0 25.0
		vertex 10.0 4.0 25.0
		vertex 10.0 4.0 26.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 3.0 25.0
		vertex 10.0 4.0 26.0
		vertex 10.0 3.0 26.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 4.0 25.0
		vertex 10.0 5.0 25.0
		vertex 10.0 5.0 26.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 4.0 25.0
		vertex 10.0 5.0 26.0
		vertex 10.0 4.0 26.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 5.0 25.0
		vertex 10.0 6.0 25.0
		vertex 10.0 6.0 26.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 5.0 25.0
		vertex 10.0 6.0 26.0
		vertex 10.0 5.0 26.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 6.0 25.0
		vertex 10.0 7.0 25.0
		vertex 10.0 7.0 26.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 6.0 25.0
		vertex 10.0 7.0 26.0
		vertex 10.0 6.0 26.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 7.0 25.0
		vertex 10.0 8.0 25.0
		vertex 10.0 8.0 26.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 7.0 25.0
		vertex 10.0 8.0 26.0
		vertex 10.0 7.0 26.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 8.0 25.0
		vertex 10.0 9.0 25.0
		vertex 10.0 9.0 26.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 8.0 25.0
		vertex 10.0 9.0 26.0
		vertex 10.0 8.0 26.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 9.0 25.0
		vertex 10.0 10.0 25.0
		vertex 10.0 10.0 26.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 9.0 25.0
		vertex 10.0 10.0 26.0
		vertex 10.0 9.0 26.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 10.0 25.0
		vertex 10.0 11.0 25.0
		vertex 10.0 11.0 26.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 10.0 25.0
		vertex 10.0 11.0 26.0
		vertex 10.0 10.0 26.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 11.0 25.0
		vertex 10.0 12.0 25.0
		vertex 10.0 12.0 26.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 11.0 25.0
		vertex 10.0 12.0 26.0
		vertex 10.0 11.0 26.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 12.0 25.0
		vertex 10.0 13.0 25.0
		vertex 10.0 13.0 26.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 12.0 25.0
		vertex 10.0 13.0 26.0
		vertex 10.0 12.0 26.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 13.0 25.0
		vertex 10.0 14.0 25.0
		vertex 10.0 14.0 26.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 13.0 25.0
		vertex 10.0 14.0 26.0
		vertex 10.0 13.0 26.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 14.0 25.0
		vertex 10.0 15.0 25.0
		vertex 10.0 15.0 26.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 14.0 25.0
		vertex 10.0 15.0 26.0
		vertex 10.0 14.0 26.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 15.0 25.0
		vertex 10.0 16.0 25.0
		vertex 10.0 16.0 26.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 15.0 25.0
		vertex 10.0 16.0 26.0
		vertex 10.0 15.0 26.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 16.0 25.0
		vertex 10.0 17.0 25.0
		vertex 10.0 17.0 26.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 16.0 25.0
		vertex 10.0 17.0 26.0
		vertex 10.0 16.0 26.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 17.0 25.0
		vertex 10.0 18.0 25.0
		vertex 10.0 18.0 26.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 17.0 25.0
		vertex 10.0 18.0 26.0
		vertex 10.0 17.0 26.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 18.0 25.0
		vertex 10.0 19.0 25.0
		vertex 10.0 19.0 26.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 18.0 25.0
		vertex 10.0 19.0 26.0
		vertex 10.0 18.0 26.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 19.0 25.0
		vertex 10.0 20.0 25.0
		vertex 10.0 20.0 26.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 19.0 25.0
		vertex 10.0 20.0 26.0
		vertex 10.0 19.0 26.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 0.0 26.0
		vertex 10.0 1.0 26.0
		vertex 10.0 1.0 27.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 0.0 26.0
		vertex 10.0 1.0 27.0
		vertex 10.0 0.0 27.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 1.0 26.0
		vertex 10.0 2.0 26.0
		vertex 10.0 2.0 27.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 1.0 26.0
		vertex 10.0 2.0 27.0
		vertex 10.0 1.0 27.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 2.0 26.0
		vertex 10.0 3.0 26.0
		vertex 10.0 3.0 27.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 2.0 26.0
		vertex 10.0 3.0 27.0
		vertex 10.0 2.0 27.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 3.0 26.0
		vertex 10.0 4.0 26.0
		vertex 10.0 4.0 27.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 3.0 26.0
		vertex 10.0 4.0 27.0
		vertex 10.0 3.0 27.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 4.0 26.0
		vertex 10.0 5.0 26.0
		vertex 10.0 5.0 27.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 4.0 26.0
		vertex 10.0 5.0 27.0
		vertex 10.0 4.0 27.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 5.0 26.0
		vertex 10.0 6.0 26.0
		vertex 10.0 6.0 27.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 5.0 26.0
		vertex 10.0 6.0 27.0
		vertex 10.0 5.0 27.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 6.0 26.0
		vertex 10.0 7.0 26.0
		vertex 10.0 7.0 27.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 6.0 26.0
		vertex 10.0 7.0 27.0
		vertex 10.0 6.0 27.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 7.0 26.0
		vertex 10.0 8.0 26.0
		vertex 10.0 8.0 27.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 7.0 26.0
		vertex 10.0 8.0 27.0
		vertex 10.0 7.0 27.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 8.0 26.0
		vertex 10.0 9.0 26.0
		vertex 10.0 9.0 27.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 8.0 26.0
		vertex 10.0 9.0 27.0
		vertex 10.0 8.0 27.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 9.0 26.0
		vertex 10.0 10.0 26.0
		vertex 10.0 10.0 27.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 9.0 26.0
		vertex 10.0 10.0 27.0
		vertex 10.0 9.0 27.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 10.0 26.0
		vertex 10.0 11.0 26.0
		vertex 10.0 11.0 27.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 10.0 26.0
		vertex 10.0 11.0 27.0
		vertex 10.0 10.0 27.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 11.0 26.0
		vertex 10.0 12.0 26.0
		vertex 10.0 12.0 27.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 11.0 26.0
		vertex 10.0 12.0 27.0
		vertex 10.0 11.0 27.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 12.0 26.0
		vertex 10.0 13.0 26.0
		vertex 10.0 13.0 27.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 12.0 26.0
		vertex 10.0 13.0 27.0
		vertex 10.0 12.0 27.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 13.0 26.0
		vertex 10.0 14.0 26.0
		vertex 10.0 14.0 27.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 13.0 26.0
		vertex 10.0 14.0 27.0
		vertex 10.0 13.0 27.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 14.0 26.0
		vertex 10.0 15.0 26.0
		vertex 10.0 15.0 27.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 14.0 26.0
		vertex 10.0 15.0 27.0
		vertex 10.0 14.0 27.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 15.0 26.0
		vertex 10.0 16.0 26.0
		vertex 10.0 16.0 27.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 15.0 26.0
		vertex 10.0 16.0 27.0
		vertex 10.0 15.0 27.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 16.0 26.0
		vertex 10.0 17.0 26.0
		vertex 10.0 17.0 27.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 16.0 26.0
		vertex 10.0 17.0 27.0
		vertex 10.0 16.0 27.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 17.0 26.0
		vertex 10.0 18.0 26.0
		vertex 10.0 18.0 27.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 17.0 26.0
		vertex 10.0 18.0 27.0
		vertex 10.0 17.0 27.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 18.0 26.0
		vertex 10.0 19.0 26.0
		vertex 10.0 19.0 27.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 18.0 26.0
		vertex 10.0 19.0 27.0
		vertex 10.0 18.0 27.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 19.0 26.0
		vertex 10.0 20.0 26.0
		vertex 10.0 20.0 27.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 19.0 26.0
		vertex 10.0 20.0 27.0
		vertex 10.0 19.0 27.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 0.0 27.0
		vertex 10.0 1.0 27.0
		vertex 10.0 1.0 28.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 0.0 27.0
		vertex 10.0 1.0 28.0
		vertex 10.0 0.0 28.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 1.0 27.0
		vertex 10.0 2.0 27.0
		vertex 10.0 2.0 28.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 1.0 27.0
		vertex 10.0 2.0 28.0
		vertex 10.0 1.0 28.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 2.0 27.0
		vertex 10.0 3.0 27.0
		vertex 10.0 3.0 28.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 2.0 27.0
		vertex 10.0 3.0 28.0
		vertex 10.0 2.0 28.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 3.0 27.0
		vertex 10.0 4.0 27.0
		vertex 10.0 4.0 28.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 3.0 27.0
		vertex 10.0 4.0 28.0
		vertex 10.0 3.0 28.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 4.0 27.0
		vertex 10.0 5.0 27.0
		vertex 10.0 5.0 28.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 4.0 27.0
		vertex 10.0 5.0 28.0
		vertex 10.0 4.0 28.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 5.0 27.0
		vertex 10.0 6.0 27.0
		vertex 10.0 6.0 28.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 5.0 27.0
		vertex 10.0 6.0 28.0
		vertex 10.0 5.0 28.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 6.0 27.0
		vertex 10.0 7.0 27.0
		vertex 10.0 7.0 28.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 6.0 27.0
		vertex 10.0 7.0 28.0
		vertex 10.0 6.0 28.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 7.0 27.0
		vertex 10.0 8.0 27.0
		vertex 10.0 8.0 28.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 7.0 27.0
		vertex 10.0 8.0 28.0
		vertex 10.0 7.0 28.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 8.0 27.0
		vertex 10.0 9.0 27.0
		vertex 10.0 9.0 28.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 8.0 27.0
		vertex 10.0 9.0 28.0
		vertex 10.0 8.0 28.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 9.0 27.0
		vertex 10.0 10.0 27.0
		vertex 10.0 10.0 28.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 9.0 27.0
		vertex 10.0 10.0 28.0
		vertex 10.0 9.0 28.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 10.0 27.0
		vertex 10.0 11.0 27.0
		vertex 10.0 11.0 28.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 10.0 27.0
		vertex 10.0 11.0 28.0
		vertex 10.0 10.0 28.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 11.0 27.0
		vertex 10.0 12.0 27.0
		vertex 10.0 12.0 28.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 11.0 27.0
		vertex 10.0 12.0 28.0
		vertex 10.0 11.0 28.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 12.0 27.0
		vertex 10.0 13.0 27.0
		vertex 10.0 13.0 28.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 12.0 27.0
		vertex 10.0 13.0 28.0
		vertex 10.0 12.0 28.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 13.0 27.0
		vertex 10.0 14.0 27.0
		vertex 10.0 14.0 28.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 13.0 27.0
		vertex 10.0 14.0 28.0
		vertex 10.0 13.0 28.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 14.0 27.0
		vertex 10.0 15.0 27.0
		vertex 10.0 15.0 28.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 14.0 27.0
		vertex 10.0 15.0 28.0
		vertex 10.0 14.0 28.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 15.0 27.0
		vertex 10.0 16.0 27.0
		vertex 10.0 16.0 28.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 15.0 27.0
		vertex 10.0 16.0 28.0
		vertex 10.0 15.0 28.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 16.0 27.0
		vertex 10.0 17.0 27.0
		vertex 10.0 17.0 28.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 16.0 27.0
		vertex 10.0 17.0 28.0
		vertex 10.0 16.0 28.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 17.0 27.0
		vertex 10.0 18.0 27.0
		vertex 10.0 18.0 28.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 17.0 27.0
		vertex 10.0 18.0 28.0
		vertex 10.0 17.0 28.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 18.0 27.0
		vertex 10.0 19.0 27.0
		vertex 10.0 19.0 28.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 18.0 27.0
		vertex 10.0 19.0 28.0
		vertex 10.0 18.0 28.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 19.0 27.0
		vertex 10.0 20.0 27.0
		vertex 10.0 20.0 28.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 19.0 27.0
		vertex 10.0 20.0 28.0
		vertex 10.0 19.0 28.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 0.0 28.0
		vertex 10.0 1.0 28.0
		vertex 10.0 1.0 29.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 0.0 28.0
		vertex 10.0 1.0 29.0
		vertex 10.0 0.0 29.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 1.0 28.0
		vertex 10.0 2.0 28.0
		vertex 10.0 2.0 29.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 1.0 28.0
		vertex 10.0 2.0 29.0
		vertex 10.0 1.0 29.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 2.0 28.0
		vertex 10.0 3.0 28.0
		vertex 10.0 3.0 29.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 2.0 28.0
		vertex 10.0 3.0 29.0
		vertex 10.0 2.0 29.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 3.0 28.0
		vertex 10.0 4.0 28.0
		vertex 10.0 4.0 29.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 3.0 28.0
		vertex 10.0 4.0 29.0
		vertex 10.0 3.0 29.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 4.0 28.0
		vertex 10.0 5.0 28.0
		vertex 10.0 5.0 29.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 4.0 28.0
		vertex 10.0 5.0 29.0
		vertex 10.0 4.0 29.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 5.0 28.0
		vertex 10.0 6.0 28.0
		vertex 10.0 6.0 29.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 5.0 28.0
		vertex 10.0 6.0 29.0
		vertex 10.0 5.0 29.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 6.0 28.0
		vertex 10.0 7.0 28.0
		vertex 10.0 7.0 29.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 6.0 28.0
		vertex 10.0 7.0 29.0
		vertex 10.0 6.0 29.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 7.0 28.0
		vertex 10.0 8.0 28.0
		vertex 10.0 8.0 29.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 7.0 28.0
		vertex 10.0 8.0 29.0
		vertex 10.0 7.0 29.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 8.0 28.0
		vertex 10.0 9.0 28.0
		vertex 10.0 9.0 29.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 8.0 28.0
		vertex 10.0 9.0 29.0
		vertex 10.0 8.0 29.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 9.0 28.0
		vertex 10.0 10.0 28.0
		vertex 10.0 10.0 29.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 9.0 28.0
		vertex 10.0 10.0 29.0
		vertex 10.0 9.0 29.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 10.0 28.0
		vertex 10.0 11.0 28.0
		vertex 10.0 11.0 29.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 10.0 28.0
		vertex 10.0 11.0 29.0
		vertex 10.0 10.0 29.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 11.0 28.0
		vertex 10.0 12.0 28.0
		vertex 10.0 12.0 29.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 11.0 28.0
		vertex 10.0 12.0 29.0
		vertex 10.0 11.0 29.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 12.0 28.0
		vertex 10.0 13.0 28.0
		vertex 10.0 13.0 29.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 12.0 28.0
		vertex 10.0 13.0 29.0
		vertex 10.0 12.0 29.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 13.0 28.0
		vertex 10.0 14.0 28.0
		vertex 10.0 14.0 29.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 13.0 28.0
		vertex 10.0 14.0 29.0
		vertex 10.0 13.0 29.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 14.0 28.0
		vertex 10.0 15.0 28.0
		vertex 10.0 15.0 29.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 14.0 28.0
		vertex 10.0 15.0 29.0
		vertex 10.0 14.0 29.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 15.0 28.0
		vertex 10.0 16.0 28.0
		vertex 10.0 16.0 29.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 15.0 28.0
		vertex 10.0 16.0 29.0
		vertex 10.0 15.0 29.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 16.0 28.0
		vertex 10.0 17.0 28.0
		vertex 10.0 17.0 29.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 16.0 28.0
		vertex 10.0 17.0 29.0
		vertex 10.0 16.0 29.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 17.0 28.0
		vertex 10.0 18.0 28.0
		vertex 10.0 18.0 29.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 17.0 28.0
		vertex 10.0 18.0 29.0
		vertex 10.0 17.0 29.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 18.0 28.0
		vertex 10.0 19.0 28.0
		vertex 10.0 19.0 29.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 18.0 28.0
		vertex 10.0 19.0 29.0
		vertex 10.0 18.0 29.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 19.0 28.0
		vertex 10.0 20.0 28.0
		vertex 10.0 20.0 29.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 19.0 28.0
		vertex 10.0 20.0 29.0
		vertex 10.0 19.0 29.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 0.0 29.0
		vertex 10.0 1.0 29.0
		vertex 10.0 1.0 30.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 0.0 29.0
		vertex 10.0 1.0 30.0
		vertex 10.0 0.0 30.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 1.0 29.0
		vertex 10.0 2.0 29.0
		vertex 10.0 2.0 30.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 1.0 29.0
		vertex 10.0 2.0 30.0
		vertex 10.0 1.0 30.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 2.0 29.0
		vertex 10.0 3.0 29.0
		vertex 10.0 3.0 30.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 2.0 29.0
		vertex 10.0 3.0 30.0
		vertex 10.0 2.0 30.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 3.0 29.0
		vertex 10.0 4.0 29.0
		vertex 10.0 4.0 30.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 3.0 29.0
		vertex 10.0 4.0 30.0
		vertex 10.0 3.0 30.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 4.0 29.0
		vertex 10.0 5.0 29.0
		vertex 10.0 5.0 30.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 4.0 29.0
		vertex 10.0 5.0 30.0
		vertex 10.0 4.0 30.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 5.0 29.0
		vertex 10.0 6.0 29.0
		vertex 10.0 6.0 30.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 5.0 29.0
		vertex 10.0 6.0 30.0
		vertex 10.0 5.0 30.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 6.0 29.0
		vertex 10.0 7.0 29.0
		vertex 10.0 7.0 30.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 6.0 29.0
		vertex 10.0 7.0 30.0
		vertex 10.0 6.0 30.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 7.0 29.0
		vertex 10.0 8.0 29.0
		vertex 10.0 8.0 30.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 7.0 29.0
		vertex 10.0 8.0 30.0
		vertex 10.0 7.0 30.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 8.0 29.0
		vertex 10.0 9.0 29.0
		vertex 10.0 9.0 30.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 8.0 29.0
		vertex 10.0 9.0 30.0
		vertex 10.0 8.0 30.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 9.0 29.0
		vertex 10.0 10.0 29.0
		vertex 10.0 10.0 30.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 9.0 29.0
		vertex 10.0 10.0 30.0
		vertex 10.0 9.0 30.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 10.0 29.0
		vertex 10.0 11.0 29.0
		vertex 10.0 11.0 30.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 10.0 29.0
		vertex 10.0 11.0 30.0
		vertex 10.0 10.0 30.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 11.0 29.0
		vertex 10.0 12.0 29.0
		vertex 10.0 12.0 30.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 11.0 29.0
		vertex 10.0 12.0 30.0
		vertex 10.0 11.0 30.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 12.0 29.0
		vertex 10.0 13.0 29.0
		vertex 10.0 13.0 30.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 12.0 29.0
		vertex 10.0 13.0 30.0
		vertex 10.0 12.0 30.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 13.0 29.0
		vertex 10.0 14.0 29.0
		vertex 10.0 14.0 30.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 13.0 29.0
		vertex 10.0 14.0 30.0
		vertex 10.0 13.0 30.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 14.0 29.0
		vertex 10.0 15.0 29.0
		vertex 10.0 15.0 30.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 14.0 29.0
		vertex 10.0 15.0 30.0
		vertex 10.0 14.0 30.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 15.0 29.0
		vertex 10.0 16.0 29.0
		vertex 10.0 16.0 30.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 15.0 29.0
		vertex 10.0 16.0 30.0
		vertex 10.0 15.0 30.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 16.0 29.0
		vertex 10.0 17.0 29.0
		vertex 10.0 17.0 30.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 16.0 29.0
		vertex 10.0 17.0 30.0
		vertex 10.0 16.0 30.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 17.0 29.0
		vertex 10.0 18.0 29.0
		vertex 10.0 18.0 30.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 17.0 29.0
		vertex 10.0 18.0 30.0
		vertex 10.0 17.0 30.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 18.0 29.0
		vertex 10.0 19.0 29.0
		vertex 10.0 19.0 30.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 18.0 29.0
		vertex 10.0 19.0 30.0
		vertex 10.0 18.0 30.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 19.0 29.0
		vertex 10.0 20.0 29.0
		vertex 10.0 20.0 30.0
	endloop
endfacet

facet normal 1.0 0.0 0.0
	outer loop
		vertex 10.0 19.0 29.0
		vertex 10.0 20.0 30.0
		vertex 10.0 19.0 30.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 0.0 0.0 0.0
		vertex 1.0 0.0 0.0
		vertex 1.0 0.0 1.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 0.0 0.0 0.0
		vertex 1.0 0.0 1.0
		vertex 0.0 0.0 1.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 1.0 0.0 0.0
		vertex 2.0 0.0 0.0
		vertex 2.0 0.0 1.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 1.0 0.0 0.0
		vertex 2.0 0.0 1.0
		vertex 1.0 0.0 1.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 2.0 0.0 0.0
		vertex 3.0 0.0 0.0
		vertex 3.0 0.0 1.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 2.0 0.0 0.0
		vertex 3.0 0.0 1.0
		vertex 2.0 0.0 1.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 3.0 0.0 0.0
		vertex 4.0 0.0 0.0
		vertex 4.0 0.0 1.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 3.0 0.0 0.0
		vertex 4.0 0.0 1.0
		vertex 3.0 0.0 1.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 4.0 0.0 0.0
		vertex 5.0 0.0 0.0
		vertex 5.0 0.0 1.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 4.0 0.0 0.0
		vertex 5.0 0.0 1.0
		vertex 4.0 0.0 1.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 5.0 0.0 0.0
		vertex 6.0 0.0 0.0
		vertex 6.0 0.0 1.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 5.0 0.0 0.0
		vertex 6.0 0.0 1.0
		vertex 5.0 0.0 1.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 6.0 0.0 0.0
		vertex 7.0 0.0 0.0
		vertex 7.0 0.0 1.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 6.0 0.0 0.0
		vertex 7.0 0.0 1.0
		vertex 6.0 0.0 1.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 7.0 0.0 0.0
		vertex 8.0 0.0 0.0
		vertex 8.0 0.0 1.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 7.0 0.0 0.0
		vertex 8.0 0.0 1.0
		vertex 7.0 0.0 1.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 8.0 0.0 0.0
		vertex 9.0 0.0 0.0
		vertex 9.0 0.0 1.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 8.0 0.0 0.0
		vertex 9.0 0.0 1.0
		vertex 8.0 0.0 1.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 9.0 0.0 0.0
		vertex 10.0 0.0 0.0
		vertex 10.0 0.0 1.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 9.0 0.0 0.0
		vertex 10.0 0.0 1.0
		vertex 9.0 0.0 1.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 0.0 0.0 1.0
		vertex 1.0 0.0 1.0
		vertex 1.0 0.0 2.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 0.0 0.0 1.0
		vertex 1.0 0.0 2.0
		vertex 0.0 0.0 2.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 1.0 0.0 1.0
		vertex 2.0 0.0 1.0
		vertex 2.0 0.0 2.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 1.0 0.0 1.0
		vertex 2.0 0.0 2.0
		vertex 1.0 0.0 2.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 2.0 0.0 1.0
		vertex 3.0 0.0 1.0
		vertex 3.0 0.0 2.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 2.0 0.0 1.0
		vertex 3.0 0.0 2.0
		vertex 2.0 0.0 2.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 3.0 0.0 1.0
		vertex 4.0 0.0 1.0
		vertex 4.0 0.0 2.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 3.0 0.0 1.0
		vertex 4.0 0.0 2.0
		vertex 3.0 0.0 2.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 4.0 0.0 1.0
		vertex 5.0 0.0 1.0
		vertex 5.0 0.0 2.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 4.0 0.0 1.0
		vertex 5.0 0.0 2.0
		vertex 4.0 0.0 2.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 5.0 0.0 1.0
		vertex 6.0 0.0 1.0
		vertex 6.0 0.0 2.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 5.0 0.0 1.0
		vertex 6.0 0.0 2.0
		vertex 5.0 0.0 2.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 6.0 0.0 1.0
		vertex 7.0 0.0 1.0
		vertex 7.0 0.0 2.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 6.0 0.0 1.0
		vertex 7.0 0.0 2.0
		vertex 6.0 0.0 2.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 7.0 0.0 1.0
		vertex 8.0 0.0 1.0
		vertex 8.0 0.0 2.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 7.0 0.0 1.0
		vertex 8.0 0.0 2.0
		vertex 7.0 0.0 2.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 8.0 0.0 1.0
		vertex 9.0 0.0 1.0
		vertex 9.0 0.0 2.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 8.0 0.0 1.0
		vertex 9.0 0.0 2.0
		vertex 8.0 0.0 2.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 9.0 0.0 1.0
		vertex 10.0 0.0 1.0
		vertex 10.0 0.0 2.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 9.0 0.0 1.0
		vertex 10.0 0.0 2.0
		vertex 9.0 0.0 2.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 0.0 0.0 2.0
		vertex 1.0 0.0 2.0
		vertex 1.0 0.0 3.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 0.0 0.0 2.0
		vertex 1.0 0.0 3.0
		vertex 0.0 0.0 3.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 1.0 0.0 2.0
		vertex 2.0 0.0 2.0
		vertex 2.0 0.0 3.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 1.0 0.0 2.0
		vertex 2.0 0.0 3.0
		vertex 1.0 0.0 3.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 2.0 0.0 2.0
		vertex 3.0 0.0 2.0
		vertex 3.0 0.0 3.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 2.0 0.0 2.0
		vertex 3.0 0.0 3.0
		vertex 2.0 0.0 3.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 3.0 0.0 2.0
		vertex 4.0 0.0 2.0
		vertex 4.0 0.0 3.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 3.0 0.0 2.0
		vertex 4.0 0.0 3.0
		vertex 3.0 0.0 3.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 4.0 0.0 2.0
		vertex 5.0 0.0 2.0
		vertex 5.0 0.0 3.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 4.0 0.0 2.0
		vertex 5.0 0.0 3.0
		vertex 4.0 0.0 3.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 5.0 0.0 2.0
		vertex 6.0 0.0 2.0
		vertex 6.0 0.0 3.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 5.0 0.0 2.0
		vertex 6.0 0.0 3.0
		vertex 5.0 0.0 3.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 6.0 0.0 2.0
		vertex 7.0 0.0 2.0
		vertex 7.0 0.0 3.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 6.0 0.0 2.0
		vertex 7.0 0.0 3.0
		vertex 6.0 0.0 3.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 7.0 0.0 2.0
		vertex 8.0 0.0 2.0
		vertex 8.0 0.0 3.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 7.0 0.0 2.0
		vertex 8.0 0.0 3.0
		vertex 7.0 0.0 3.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 8.0 0.0 2.0
		vertex 9.0 0.0 2.0
		vertex 9.0 0.0 3.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 8.0 0.0 2.0
		vertex 9.0 0.0 3.0
		vertex 8.0 0.0 3.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 9.0 0.0 2.0
		vertex 10.0 0.0 2.0
		vertex 10.0 0.0 3.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 9.0 0.0 2.0
		vertex 10.0 0.0 3.0
		vertex 9.0 0.0 3.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 0.0 0.0 3.0
		vertex 1.0 0.0 3.0
		vertex 1.0 0.0 4.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 0.0 0.0 3.0
		vertex 1.0 0.0 4.0
		vertex 0.0 0.0 4.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 1.0 0.0 3.0
		vertex 2.0 0.0 3.0
		vertex 2.0 0.0 4.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 1.0 0.0 3.0
		vertex 2.0 0.0 4.0
		vertex 1.0 0.0 4.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 2.0 0.0 3.0
		vertex 3.0 0.0 3.0
		vertex 3.0 0.0 4.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 2.0 0.0 3.0
		vertex 3.0 0.0 4.0
		vertex 2.0 0.0 4.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 3.0 0.0 3.0
		vertex 4.0 0.0 3.0
		vertex 4.0 0.0 4.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 3.0 0.0 3.0
		vertex 4.0 0.0 4.0
		vertex 3.0 0.0 4.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 4.0 0.0 3.0
		vertex 5.0 0.0 3.0
		vertex 5.0 0.0 4.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 4.0 0.0 3.0
		vertex 5.0 0.0 4.0
		vertex 4.0 0.0 4.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 5.0 0.0 3.0
		vertex 6.0 0.0 3.0
		vertex 6.0 0.0 4.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 5.0 0.0 3.0
		vertex 6.0 0.0 4.0
		vertex 5.0 0.0 4.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 6.0 0.0 3.0
		vertex 7.0 0.0 3.0
		vertex 7.0 0.0 4.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 6.0 0.0 3.0
		vertex 7.0 0.0 4.0
		vertex 6.0 0.0 4.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 7.0 0.0 3.0
		vertex 8.0 0.0 3.0
		vertex 8.0 0.0 4.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 7.0 0.0 3.0
		vertex 8.0 0.0 4.0
		vertex 7.0 0.0 4.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 8.0 0.0 3.0
		vertex 9.0 0.0 3.0
		vertex 9.0 0.0 4.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 8.0 0.0 3.0
		vertex 9.0 0.0 4.0
		vertex 8.0 0.0 4.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 9.0 0.0 3.0
		vertex 10.0 0.0 3.0
		vertex 10.0 0.0 4.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 9.0 0.0 3.0
		vertex 10.0 0.0 4.0
		vertex 9.0 0.0 4.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 0.0 0.0 4.0
		vertex 1.0 0.0 4.0
		vertex 1.0 0.0 5.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 0.0 0.0 4.0
		vertex 1.0 0.0 5.0
		vertex 0.0 0.0 5.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 1.0 0.0 4.0
		vertex 2.0 0.0 4.0
		vertex 2.0 0.0 5.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 1.0 0.0 4.0
		vertex 2.0 0.0 5.0
		vertex 1.0 0.0 5.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 2.0 0.0 4.0
		vertex 3.0 0.0 4.0
		vertex 3.0 0.0 5.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 2.0 0.0 4.0
		vertex 3.0 0.0 5.0
		vertex 2.0 0.0 5.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 3.0 0.0 4.0
		vertex 4.0 0.0 4.0
		vertex 4.0 0.0 5.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 3.0 0.0 4.0
		vertex 4.0 0.0 5.0
		vertex 3.0 0.0 5.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 4.0 0.0 4.0
		vertex 5.0 0.0 4.0
		vertex 5.0 0.0 5.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 4.0 0.0 4.0
		vertex 5.0 0.0 5.0
		vertex 4.0 0.0 5.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 5.0 0.0 4.0
		vertex 6.0 0.0 4.0
		vertex 6.0 0.0 5.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 5.0 0.0 4.0
		vertex 6.0 0.0 5.0
		vertex 5.0 0.0 5.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 6.0 0.0 4.0
		vertex 7.0 0.0 4.0
		vertex 7.0 0.0 5.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 6.0 0.0 4.0
		vertex 7.0 0.0 5.0
		vertex 6.0 0.0 5.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 7.0 0.0 4.0
		vertex 8.0 0.0 4.0
		vertex 8.0 0.0 5.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 7.0 0.0 4.0
		vertex 8.0 0.0 5.0
		vertex 7.0 0.0 5.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 8.0 0.0 4.0
		vertex 9.0 0.0 4.0
		vertex 9.0 0.0 5.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 8.0 0.0 4.0
		vertex 9.0 0.0 5.0
		vertex 8.0 0.0 5.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 9.0 0.0 4.0
		vertex 10.0 0.0 4.0
		vertex 10.0 0.0 5.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 9.0 0.0 4.0
		vertex 10.0 0.0 5.0
		vertex 9.0 0.0 5.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 0.0 0.0 5.0
		vertex 1.0 0.0 5.0
		vertex 1.0 0.0 6.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 0.0 0.0 5.0
		vertex 1.0 0.0 6.0
		vertex 0.0 0.0 6.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 1.0 0.0 5.0
		vertex 2.0 0.0 5.0
		vertex 2.0 0.0 6.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 1.0 0.0 5.0
		vertex 2.0 0.0 6.0
		vertex 1.0 0.0 6.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 2.0 0.0 5.0
		vertex 3.0 0.0 5.0
		vertex 3.0 0.0 6.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 2.0 0.0 5.0
		vertex 3.0 0.0 6.0
		vertex 2.0 0.0 6.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 3.0 0.0 5.0
		vertex 4.0 0.0 5.0
		vertex 4.0 0.0 6.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 3.0 0.0 5.0
		vertex 4.0 0.0 6.0
		vertex 3.0 0.0 6.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 4.0 0.0 5.0
		vertex 5.0 0.0 5.0
		vertex 5.0 0.0 6.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 4.0 0.0 5.0
		vertex 5.0 0.0 6.0
		vertex 4.0 0.0 6.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 5.0 0.0 5.0
		vertex 6.0 0.0 5.0
		vertex 6.0 0.0 6.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 5.0 0.0 5.0
		vertex 6.0 0.0 6.0
		vertex 5.0 0.0 6.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 6.0 0.0 5.0
		vertex 7.0 0.0 5.0
		vertex 7.0 0.0 6.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 6.0 0.0 5.0
		vertex 7.0 0.0 6.0
		vertex 6.0 0.0 6.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 7.0 0.0 5.0
		vertex 8.0 0.0 5.0
		vertex 8.0 0.0 6.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 7.0 0.0 5.0
		vertex 8.0 0.0 6.0
		vertex 7.0 0.0 6.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 8.0 0.0 5.0
		vertex 9.0 0.0 5.0
		vertex 9.0 0.0 6.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 8.0 0.0 5.0
		vertex 9.0 0.0 6.0
		vertex 8.0 0.0 6.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 9.0 0.0 5.0
		vertex 10.0 0.0 5.0
		vertex 10.0 0.0 6.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 9.0 0.0 5.0
		vertex 10.0 0.0 6.0
		vertex 9.0 0.0 6.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 0.0 0.0 6.0
		vertex 1.0 0.0 6.0
		vertex 1.0 0.0 7.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 0.0 0.0 6.0
		vertex 1.0 0.0 7.0
		vertex 0.0 0.0 7.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 1.0 0.0 6.0
		vertex 2.0 0.0 6.0
		vertex 2.0 0.0 7.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 1.0 0.0 6.0
		vertex 2.0 0.0 7.0
		vertex 1.0 0.0 7.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 2.0 0.0 6.0
		vertex 3.0 0.0 6.0
		vertex 3.0 0.0 7.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 2.0 0.0 6.0
		vertex 3.0 0.0 7.0
		vertex 2.0 0.0 7.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 3.0 0.0 6.0
		vertex 4.0 0.0 6.0
		vertex 4.0 0.0 7.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 3.0 0.0 6.0
		vertex 4.0 0.0 7.0
		vertex 3.0 0.0 7.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 4.0 0.0 6.0
		vertex 5.0 0.0 6.0
		vertex 5.0 0.0 7.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 4.0 0.0 6.0
		vertex 5.0 0.0 7.0
		vertex 4.0 0.0 7.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 5.0 0.0 6.0
		vertex 6.0 0.0 6.0
		vertex 6.0 0.0 7.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 5.0 0.0 6.0
		vertex 6.0 0.0 7.0
		vertex 5.0 0.0 7.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 6.0 0.0 6.0
		vertex 7.0 0.0 6.0
		vertex 7.0 0.0 7.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 6.0 0.0 6.0
		vertex 7.0 0.0 7.0
		vertex 6.0 0.0 7.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 7.0 0.0 6.0
		vertex 8.0 0.0 6.0
		vertex 8.0 0.0 7.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 7.0 0.0 6.0
		vertex 8.0 0.0 7.0
		vertex 7.0 0.0 7.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 8.0 0.0 6.0
		vertex 9.0 0.0 6.0
		vertex 9.0 0.0 7.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 8.0 0.0 6.0
		vertex 9.0 0.0 7.0
		vertex 8.0 0.0 7.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 9.0 0.0 6.0
		vertex 10.0 0.0 6.0
		vertex 10.0 0.0 7.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 9.0 0.0 6.0
		vertex 10.0 0.0 7.0
		vertex 9.0 0.0 7.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 0.0 0.0 7.0
		vertex 1.0 0.0 7.0
		vertex 1.0 0.0 8.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 0.0 0.0 7.0
		vertex 1.0 0.0 8.0
		vertex 0.0 0.0 8.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 1.0 0.0 7.0
		vertex 2.0 0.0 7.0
		vertex 2.0 0.0 8.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 1.0 0.0 7.0
		vertex 2.0 0.0 8.0
		vertex 1.0 0.0 8.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 2.0 0.0 7.0
		vertex 3.0 0.0 7.0
		vertex 3.0 0.0 8.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 2.0 0.0 7.0
		vertex 3.0 0.0 8.0
		vertex 2.0 0.0 8.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 3.0 0.0 7.0
		vertex 4.0 0.0 7.0
		vertex 4.0 0.0 8.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 3.0 0.0 7.0
		vertex 4.0 0.0 8.0
		vertex 3.0 0.0 8.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 4.0 0.0 7.0
		vertex 5.0 0.0 7.0
		vertex 5.0 0.0 8.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 4.0 0.0 7.0
		vertex 5.0 0.0 8.0
		vertex 4.0 0.0 8.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 5.0 0.0 7.0
		vertex 6.0 0.0 7.0
		vertex 6.0 0.0 8.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 5.0 0.0 7.0
		vertex 6.0 0.0 8.0
		vertex 5.0 0.0 8.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 6.0 0.0 7.0
		vertex 7.0 0.0 7.0
		vertex 7.0 0.0 8.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 6.0 0.0 7.0
		vertex 7.0 0.0 8.0
		vertex 6.0 0.0 8.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 7.0 0.0 7.0
		vertex 8.0 0.0 7.0
		vertex 8.0 0.0 8.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 7.0 0.0 7.0
		vertex 8.0 0.0 8.0
		vertex 7.0 0.0 8.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 8.0 0.0 7.0
		vertex 9.0 0.0 7.0
		vertex 9.0 0.0 8.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 8.0 0.0 7.0
		vertex 9.0 0.0 8.0
		vertex 8.0 0.0 8.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 9.0 0.0 7.0
		vertex 10.0 0.0 7.0
		vertex 10.0 0.0 8.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 9.0 0.0 7.0
		vertex 10.0 0.0 8.0
		vertex 9.0 0.0 8.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 0.0 0.0 8.0
		vertex 1.0 0.0 8.0
		vertex 1.0 0.0 9.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 0.0 0.0 8.0
		vertex 1.0 0.0 9.0
		vertex 0.0 0.0 9.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 1.0 0.0 8.0
		vertex 2.0 0.0 8.0
		vertex 2.0 0.0 9.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 1.0 0.0 8.0
		vertex 2.0 0.0 9.0
		vertex 1.0 0.0 9.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 2.0 0.0 8.0
		vertex 3.0 0.0 8.0
		vertex 3.0 0.0 9.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 2.0 0.0 8.0
		vertex 3.0 0.0 9.0
		vertex 2.0 0.0 9.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 3.0 0.0 8.0
		vertex 4.0 0.0 8.0
		vertex 4.0 0.0 9.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 3.0 0.0 8.0
		vertex 4.0 0.0 9.0
		vertex 3.0 0.0 9.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 4.0 0.0 8.0
		vertex 5.0 0.0 8.0
		vertex 5.0 0.0 9.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 4.0 0.0 8.0
		vertex 5.0 0.0 9.0
		vertex 4.0 0.0 9.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 5.0 0.0 8.0
		vertex 6.0 0.0 8.0
		vertex 6.0 0.0 9.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 5.0 0.0 8.0
		vertex 6.0 0.0 9.0
		vertex 5.0 0.0 9.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 6.0 0.0 8.0
		vertex 7.0 0.0 8.0
		vertex 7.0 0.0 9.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 6.0 0.0 8.0
		vertex 7.0 0.0 9.0
		vertex 6.0 0.0 9.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 7.0 0.0 8.0
		vertex 8.0 0.0 8.0
		vertex 8.0 0.0 9.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 7.0 0.0 8.0
		vertex 8.0 0.0 9.0
		vertex 7.0 0.0 9.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 8.0 0.0 8.0
		vertex 9.0 0.0 8.0
		vertex 9.0 0.0 9.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 8.0 0.0 8.0
		vertex 9.0 0.0 9.0
		vertex 8.0 0.0 9.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 9.0 0.0 8.0
		vertex 10.0 0.0 8.0
		vertex 10.0 0.0 9.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 9.0 0.0 8.0
		vertex 10.0 0.0 9.0
		vertex 9.0 0.0 9.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 0.0 0.0 9.0
		vertex 1.0 0.0 9.0
		vertex 1.0 0.0 10.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 0.0 0.0 9.0
		vertex 1.0 0.0 10.0
		vertex 0.0 0.0 10.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 1.0 0.0 9.0
		vertex 2.0 0.0 9.0
		vertex 2.0 0.0 10.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 1.0 0.0 9.0
		vertex 2.0 0.0 10.0
		vertex 1.0 0.0 10.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 2.0 0.0 9.0
		vertex 3.0 0.0 9.0
		vertex 3.0 0.0 10.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 2.0 0.0 9.0
		vertex 3.0 0.0 10.0
		vertex 2.0 0.0 10.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 3.0 0.0 9.0
		vertex 4.0 0.0 9.0
		vertex 4.0 0.0 10.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 3.0 0.0 9.0
		vertex 4.0 0.0 10.0
		vertex 3.0 0.0 10.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 4.0 0.0 9.0
		vertex 5.0 0.0 9.0
		vertex 5.0 0.0 10.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 4.0 0.0 9.0
		vertex 5.0 0.0 10.0
		vertex 4.0 0.0 10.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 5.0 0.0 9.0
		vertex 6.0 0.0 9.0
		vertex 6.0 0.0 10.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 5.0 0.0 9.0
		vertex 6.0 0.0 10.0
		vertex 5.0 0.0 10.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 6.0 0.0 9.0
		vertex 7.0 0.0 9.0
		vertex 7.0 0.0 10.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 6.0 0.0 9.0
		vertex 7.0 0.0 10.0
		vertex 6.0 0.0 10.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 7.0 0.0 9.0
		vertex 8.0 0.0 9.0
		vertex 8.0 0.0 10.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 7.0 0.0 9.0
		vertex 8.0 0.0 10.0
		vertex 7.0 0.0 10.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 8.0 0.0 9.0
		vertex 9.0 0.0 9.0
		vertex 9.0 0.0 10.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 8.0 0.0 9.0
		vertex 9.0 0.0 10.0
		vertex 8.0 0.0 10.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 9.0 0.0 9.0
		vertex 10.0 0.0 9.0
		vertex 10.0 0.0 10.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 9.0 0.0 9.0
		vertex 10.0 0.0 10.0
		vertex 9.0 0.0 10.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 0.0 0.0 10.0
		vertex 1.0 0.0 10.0
		vertex 1.0 0.0 11.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 0.0 0.0 10.0
		vertex 1.0 0.0 11.0
		vertex 0.0 0.0 11.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 1.0 0.0 10.0
		vertex 2.0 0.0 10.0
		vertex 2.0 0.0 11.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 1.0 0.0 10.0
		vertex 2.0 0.0 11.0
		vertex 1.0 0.0 11.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 2.0 0.0 10.0
		vertex 3.0 0.0 10.0
		vertex 3.0 0.0 11.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 2.0 0.0 10.0
		vertex 3.0 0.0 11.0
		vertex 2.0 0.0 11.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 3.0 0.0 10.0
		vertex 4.0 0.0 10.0
		vertex 4.0 0.0 11.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 3.0 0.0 10.0
		vertex 4.0 0.0 11.0
		vertex 3.0 0.0 11.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 4.0 0.0 10.0
		vertex 5.0 0.0 10.0
		vertex 5.0 0.0 11.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 4.0 0.0 10.0
		vertex 5.0 0.0 11.0
		vertex 4.0 0.0 11.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 5.0 0.0 10.0
		vertex 6.0 0.0 10.0
		vertex 6.0 0.0 11.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 5.0 0.0 10.0
		vertex 6.0 0.0 11.0
		vertex 5.0 0.0 11.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 6.0 0.0 10.0
		vertex 7.0 0.0 10.0
		vertex 7.0 0.0 11.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 6.0 0.0 10.0
		vertex 7.0 0.0 11.0
		vertex 6.0 0.0 11.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 7.0 0.0 10.0
		vertex 8.0 0.0 10.0
		vertex 8.0 0.0 11.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 7.0 0.0 10.0
		vertex 8.0 0.0 11.0
		vertex 7.0 0.0 11.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 8.0 0.0 10.0
		vertex 9.0 0.0 10.0
		vertex 9.0 0.0 11.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 8.0 0.0 10.0
		vertex 9.0 0.0 11.0
		vertex 8.0 0.0 11.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 9.0 0.0 10.0
		vertex 10.0 0.0 10.0
		vertex 10.0 0.0 11.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 9.0 0.0 10.0
		vertex 10.0 0.0 11.0
		vertex 9.0 0.0 11.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 0.0 0.0 11.0
		vertex 1.0 0.0 11.0
		vertex 1.0 0.0 12.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 0.0 0.0 11.0
		vertex 1.0 0.0 12.0
		vertex 0.0 0.0 12.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 1.0 0.0 11.0
		vertex 2.0 0.0 11.0
		vertex 2.0 0.0 12.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 1.0 0.0 11.0
		vertex 2.0 0.0 12.0
		vertex 1.0 0.0 12.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 2.0 0.0 11.0
		vertex 3.0 0.0 11.0
		vertex 3.0 0.0 12.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 2.0 0.0 11.0
		vertex 3.0 0.0 12.0
		vertex 2.0 0.0 12.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 3.0 0.0 11.0
		vertex 4.0 0.0 11.0
		vertex 4.0 0.0 12.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 3.0 0.0 11.0
		vertex 4.0 0.0 12.0
		vertex 3.0 0.0 12.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 4.0 0.0 11.0
		vertex 5.0 0.0 11.0
		vertex 5.0 0.0 12.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 4.0 0.0 11.0
		vertex 5.0 0.0 12.0
		vertex 4.0 0.0 12.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 5.0 0.0 11.0
		vertex 6.0 0.0 11.0
		vertex 6.0 0.0 12.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 5.0 0.0 11.0
		vertex 6.0 0.0 12.0
		vertex 5.0 0.0 12.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 6.0 0.0 11.0
		vertex 7.0 0.0 11.0
		vertex 7.0 0.0 12.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 6.0 0.0 11.0
		vertex 7.0 0.0 12.0
		vertex 6.0 0.0 12.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 7.0 0.0 11.0
		vertex 8.0 0.0 11.0
		vertex 8.0 0.0 12.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 7.0 0.0 11.0
		vertex 8.0 0.0 12.0
		vertex 7.0 0.0 12.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 8.0 0.0 11.0
		vertex 9.0 0.0 11.0
		vertex 9.0 0.0 12.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 8.0 0.0 11.0
		vertex 9.0 0.0 12.0
		vertex 8.0 0.0 12.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 9.0 0.0 11.0
		vertex 10.0 0.0 11.0
		vertex 10.0 0.0 12.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 9.0 0.0 11.0
		vertex 10.0 0.0 12.0
		vertex 9.0 0.0 12.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 0.0 0.0 12.0
		vertex 1.0 0.0 12.0
		vertex 1.0 0.0 13.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 0.0 0.0 12.0
		vertex 1.0 0.0 13.0
		vertex 0.0 0.0 13.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 1.0 0.0 12.0
		vertex 2.0 0.0 12.0
		vertex 2.0 0.0 13.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 1.0 0.0 12.0
		vertex 2.0 0.0 13.0
		vertex 1.0 0.0 13.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 2.0 0.0 12.0
		vertex 3.0 0.0 12.0
		vertex 3.0 0.0 13.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 2.0 0.0 12.0
		vertex 3.0 0.0 13.0
		vertex 2.0 0.0 13.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 3.0 0.0 12.0
		vertex 4.0 0.0 12.0
		vertex 4.0 0.0 13.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 3.0 0.0 12.0
		vertex 4.0 0.0 13.0
		vertex 3.0 0.0 13.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 4.0 0.0 12.0
		vertex 5.0 0.0 12.0
		vertex 5.0 0.0 13.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 4.0 0.0 12.0
		vertex 5.0 0.0 13.0
		vertex 4.0 0.0 13.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 5.0 0.0 12.0
		vertex 6.0 0.0 12.0
		vertex 6.0 0.0 13.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 5.0 0.0 12.0
		vertex 6.0 0.0 13.0
		vertex 5.0 0.0 13.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 6.0 0.0 12.0
		vertex 7.0 0.0 12.0
		vertex 7.0 0.0 13.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 6.0 0.0 12.0
		vertex 7.0 0.0 13.0
		vertex 6.0 0.0 13.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 7.0 0.0 12.0
		vertex 8.0 0.0 12.0
		vertex 8.0 0.0 13.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 7.0 0.0 12.0
		vertex 8.0 0.0 13.0
		vertex 7.0 0.0 13.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 8.0 0.0 12.0
		vertex 9.0 0.0 12.0
		vertex 9.0 0.0 13.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 8.0 0.0 12.0
		vertex 9.0 0.0 13.0
		vertex 8.0 0.0 13.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 9.0 0.0 12.0
		vertex 10.0 0.0 12.0
		vertex 10.0 0.0 13.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 9.0 0.0 12.0
		vertex 10.0 0.0 13.0
		vertex 9.0 0.0 13.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 0.0 0.0 13.0
		vertex 1.0 0.0 13.0
		vertex 1.0 0.0 14.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 0.0 0.0 13.0
		vertex 1.0 0.0 14.0
		vertex 0.0 0.0 14.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 1.0 0.0 13.0
		vertex 2.0 0.0 13.0
		vertex 2.0 0.0 14.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 1.0 0.0 13.0
		vertex 2.0 0.0 14.0
		vertex 1.0 0.0 14.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 2.0 0.0 13.0
		vertex 3.0 0.0 13.0
		vertex 3.0 0.0 14.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 2.0 0.0 13.0
		vertex 3.0 0.0 14.0
		vertex 2.0 0.0 14.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 3.0 0.0 13.0
		vertex 4.0 0.0 13.0
		vertex 4.0 0.0 14.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 3.0 0.0 13.0
		vertex 4.0 0.0 14.0
		vertex 3.0 0.0 14.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 4.0 0.0 13.0
		vertex 5.0 0.0 13.0
		vertex 5.0 0.0 14.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 4.0 0.0 13.0
		vertex 5.0 0.0 14.0
		vertex 4.0 0.0 14.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 5.0 0.0 13.0
		vertex 6.0 0.0 13.0
		vertex 6.0 0.0 14.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 5.0 0.0 13.0
		vertex 6.0 0.0 14.0
		vertex 5.0 0.0 14.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 6.0 0.0 13.0
		vertex 7.0 0.0 13.0
		vertex 7.0 0.0 14.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 6.0 0.0 13.0
		vertex 7.0 0.0 14.0
		vertex 6.0 0.0 14.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 7.0 0.0 13.0
		vertex 8.0 0.0 13.0
		vertex 8.0 0.0 14.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 7.0 0.0 13.0
		vertex 8.0 0.0 14.0
		vertex 7.0 0.0 14.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 8.0 0.0 13.0
		vertex 9.0 0.0 13.0
		vertex 9.0 0.0 14.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 8.0 0.0 13.0
		vertex 9.0 0.0 14.0
		vertex 8.0 0.0 14.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 9.0 0.0 13.0
		vertex 10.0 0.0 13.0
		vertex 10.0 0.0 14.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 9.0 0.0 13.0
		vertex 10.0 0.0 14.0
		vertex 9.0 0.0 14.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 0.0 0.0 14.0
		vertex 1.0 0.0 14.0
		vertex 1.0 0.0 15.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 0.0 0.0 14.0
		vertex 1.0 0.0 15.0
		vertex 0.0 0.0 15.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 1.0 0.0 14.0
		vertex 2.0 0.0 14.0
		vertex 2.0 0.0 15.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 1.0 0.0 14.0
		vertex 2.0 0.0 15.0
		vertex 1.0 0.0 15.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 2.0 0.0 14.0
		vertex 3.0 0.0 14.0
		vertex 3.0 0.0 15.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 2.0 0.0 14.0
		vertex 3.0 0.0 15.0
		vertex 2.0 0.0 15.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 3.0 0.0 14.0
		vertex 4.0 0.0 14.0
		vertex 4.0 0.0 15.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 3.0 0.0 14.0
		vertex 4.0 0.0 15.0
		vertex 3.0 0.0 15.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 4.0 0.0 14.0
		vertex 5.0 0.0 14.0
		vertex 5.0 0.0 15.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 4.0 0.0 14.0
		vertex 5.0 0.0 15.0
		vertex 4.0 0.0 15.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 5.0 0.0 14.0
		vertex 6.0 0.0 14.0
		vertex 6.0 0.0 15.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 5.0 0.0 14.0
		vertex 6.0 0.0 15.0
		vertex 5.0 0.0 15.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 6.0 0.0 14.0
		vertex 7.0 0.0 14.0
		vertex 7.0 0.0 15.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 6.0 0.0 14.0
		vertex 7.0 0.0 15.0
		vertex 6.0 0.0 15.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 7.0 0.0 14.0
		vertex 8.0 0.0 14.0
		vertex 8.0 0.0 15.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 7.0 0.0 14.0
		vertex 8.0 0.0 15.0
		vertex 7.0 0.0 15.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 8.0 0.0 14.0
		vertex 9.0 0.0 14.0
		vertex 9.0 0.0 15.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 8.0 0.0 14.0
		vertex 9.0 0.0 15.0
		vertex 8.0 0.0 15.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 9.0 0.0 14.0
		vertex 10.0 0.0 14.0
		vertex 10.0 0.0 15.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 9.0 0.0 14.0
		vertex 10.0 0.0 15.0
		vertex 9.0 0.0 15.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 0.0 0.0 15.0
		vertex 1.0 0.0 15.0
		vertex 1.0 0.0 16.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 0.0 0.0 15.0
		vertex 1.0 0.0 16.0
		vertex 0.0 0.0 16.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 1.0 0.0 15.0
		vertex 2.0 0.0 15.0
		vertex 2.0 0.0 16.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 1.0 0.0 15.0
		vertex 2.0 0.0 16.0
		vertex 1.0 0.0 16.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 2.0 0.0 15.0
		vertex 3.0 0.0 15.0
		vertex 3.0 0.0 16.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 2.0 0.0 15.0
		vertex 3.0 0.0 16.0
		vertex 2.0 0.0 16.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 3.0 0.0 15.0
		vertex 4.0 0.0 15.0
		vertex 4.0 0.0 16.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 3.0 0.0 15.0
		vertex 4.0 0.0 16.0
		vertex 3.0 0.0 16.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 4.0 0.0 15.0
		vertex 5.0 0.0 15.0
		vertex 5.0 0.0 16.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 4.0 0.0 15.0
		vertex 5.0 0.0 16.0
		vertex 4.0 0.0 16.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 5.0 0.0 15.0
		vertex 6.0 0.0 15.0
		vertex 6.0 0.0 16.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 5.0 0.0 15.0
		vertex 6.0 0.0 16.0
		vertex 5.0 0.0 16.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 6.0 0.0 15.0
		vertex 7.0 0.0 15.0
		vertex 7.0 0.0 16.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 6.0 0.0 15.0
		vertex 7.0 0.0 16.0
		vertex 6.0 0.0 16.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 7.0 0.0 15.0
		vertex 8.0 0.0 15.0
		vertex 8.0 0.0 16.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 7.0 0.0 15.0
		vertex 8.0 0.0 16.0
		vertex 7.0 0.0 16.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 8.0 0.0 15.0
		vertex 9.0 0.0 15.0
		vertex 9.0 0.0 16.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 8.0 0.0 15.0
		vertex 9.0 0.0 16.0
		vertex 8.0 0.0 16.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 9.0 0.0 15.0
		vertex 10.0 0.0 15.0
		vertex 10.0 0.0 16.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 9.0 0.0 15.0
		vertex 10.0 0.0 16.0
		vertex 9.0 0.0 16.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 0.0 0.0 16.0
		vertex 1.0 0.0 16.0
		vertex 1.0 0.0 17.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 0.0 0.0 16.0
		vertex 1.0 0.0 17.0
		vertex 0.0 0.0 17.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 1.0 0.0 16.0
		vertex 2.0 0.0 16.0
		vertex 2.0 0.0 17.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 1.0 0.0 16.0
		vertex 2.0 0.0 17.0
		vertex 1.0 0.0 17.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 2.0 0.0 16.0
		vertex 3.0 0.0 16.0
		vertex 3.0 0.0 17.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 2.0 0.0 16.0
		vertex 3.0 0.0 17.0
		vertex 2.0 0.0 17.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 3.0 0.0 16.0
		vertex 4.0 0.0 16.0
		vertex 4.0 0.0 17.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 3.0 0.0 16.0
		vertex 4.0 0.0 17.0
		vertex 3.0 0.0 17.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 4.0 0.0 16.0
		vertex 5.0 0.0 16.0
		vertex 5.0 0.0 17.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 4.0 0.0 16.0
		vertex 5.0 0.0 17.0
		vertex 4.0 0.0 17.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 5.0 0.0 16.0
		vertex 6.0 0.0 16.0
		vertex 6.0 0.0 17.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 5.0 0.0 16.0
		vertex 6.0 0.0 17.0
		vertex 5.0 0.0 17.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 6.0 0.0 16.0
		vertex 7.0 0.0 16.0
		vertex 7.0 0.0 17.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 6.0 0.0 16.0
		vertex 7.0 0.0 17.0
		vertex 6.0 0.0 17.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 7.0 0.0 16.0
		vertex 8.0 0.0 16.0
		vertex 8.0 0.0 17.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 7.0 0.0 16.0
		vertex 8.0 0.0 17.0
		vertex 7.0 0.0 17.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 8.0 0.0 16.0
		vertex 9.0 0.0 16.0
		vertex 9.0 0.0 17.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 8.0 0.0 16.0
		vertex 9.0 0.0 17.0
		vertex 8.0 0.0 17.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 9.0 0.0 16.0
		vertex 10.0 0.0 16.0
		vertex 10.0 0.0 17.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 9.0 0.0 16.0
		vertex 10.0 0.0 17.0
		vertex 9.0 0.0 17.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 0.0 0.0 17.0
		vertex 1.0 0.0 17.0
		vertex 1.0 0.0 18.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 0.0 0.0 17.0
		vertex 1.0 0.0 18.0
		vertex 0.0 0.0 18.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 1.0 0.0 17.0
		vertex 2.0 0.0 17.0
		vertex 2.0 0.0 18.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 1.0 0.0 17.0
		vertex 2.0 0.0 18.0
		vertex 1.0 0.0 18.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 2.0 0.0 17.0
		vertex 3.0 0.0 17.0
		vertex 3.0 0.0 18.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 2.0 0.0 17.0
		vertex 3.0 0.0 18.0
		vertex 2.0 0.0 18.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 3.0 0.0 17.0
		vertex 4.0 0.0 17.0
		vertex 4.0 0.0 18.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 3.0 0.0 17.0
		vertex 4.0 0.0 18.0
		vertex 3.0 0.0 18.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 4.0 0.0 17.0
		vertex 5.0 0.0 17.0
		vertex 5.0 0.0 18.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 4.0 0.0 17.0
		vertex 5.0 0.0 18.0
		vertex 4.0 0.0 18.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 5.0 0.0 17.0
		vertex 6.0 0.0 17.0
		vertex 6.0 0.0 18.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 5.0 0.0 17.0
		vertex 6.0 0.0 18.0
		vertex 5.0 0.0 18.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 6.0 0.0 17.0
		vertex 7.0 0.0 17.0
		vertex 7.0 0.0 18.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 6.0 0.0 17.0
		vertex 7.0 0.0 18.0
		vertex 6.0 0.0 18.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 7.0 0.0 17.0
		vertex 8.0 0.0 17.0
		vertex 8.0 0.0 18.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 7.0 0.0 17.0
		vertex 8.0 0.0 18.0
		vertex 7.0 0.0 18.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 8.0 0.0 17.0
		vertex 9.0 0.0 17.0
		vertex 9.0 0.0 18.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 8.0 0.0 17.0
		vertex 9.0 0.0 18.0
		vertex 8.0 0.0 18.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 9.0 0.0 17.0
		vertex 10.0 0.0 17.0
		vertex 10.0 0.0 18.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 9.0 0.0 17.0
		vertex 10.0 0.0 18.0
		vertex 9.0 0.0 18.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 0.0 0.0 18.0
		vertex 1.0 0.0 18.0
		vertex 1.0 0.0 19.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 0.0 0.0 18.0
		vertex 1.0 0.0 19.0
		vertex 0.0 0.0 19.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 1.0 0.0 18.0
		vertex 2.0 0.0 18.0
		vertex 2.0 0.0 19.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 1.0 0.0 18.0
		vertex 2.0 0.0 19.0
		vertex 1.0 0.0 19.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 2.0 0.0 18.0
		vertex 3.0 0.0 18.0
		vertex 3.0 0.0 19.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 2.0 0.0 18.0
		vertex 3.0 0.0 19.0
		vertex 2.0 0.0 19.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 3.0 0.0 18.0
		vertex 4.0 0.0 18.0
		vertex 4.0 0.0 19.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 3.0 0.0 18.0
		vertex 4.0 0.0 19.0
		vertex 3.0 0.0 19.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 4.0 0.0 18.0
		vertex 5.0 0.0 18.0
		vertex 5.0 0.0 19.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 4.0 0.0 18.0
		vertex 5.0 0.0 19.0
		vertex 4.0 0.0 19.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 5.0 0.0 18.0
		vertex 6.0 0.0 18.0
		vertex 6.0 0.0 19.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 5.0 0.0 18.0
		vertex 6.0 0.0 19.0
		vertex 5.0 0.0 19.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 6.0 0.0 18.0
		vertex 7.0 0.0 18.0
		vertex 7.0 0.0 19.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 6.0 0.0 18.0
		vertex 7.0 0.0 19.0
		vertex 6.0 0.0 19.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 7.0 0.0 18.0
		vertex 8.0 0.0 18.0
		vertex 8.0 0.0 19.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 7.0 0.0 18.0
		vertex 8.0 0.0 19.0
		vertex 7.0 0.0 19.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 8.0 0.0 18.0
		vertex 9.0 0.0 18.0
		vertex 9.0 0.0 19.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 8.0 0.0 18.0
		vertex 9.0 0.0 19.0
		vertex 8.0 0.0 19.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 9.0 0.0 18.0
		vertex 10.0 0.0 18.0
		vertex 10.0 0.0 19.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 9.0 0.0 18.0
		vertex 10.0 0.0 19.0
		vertex 9.0 0.0 19.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 0.0 0.0 19.0
		vertex 1.0 0.0 19.0
		vertex 1.0 0.0 20.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 0.0 0.0 19.0
		vertex 1.0 0.0 20.0
		vertex 0.0 0.0 20.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 1.0 0.0 19.0
		vertex 2.0 0.0 19.0
		vertex 2.0 0.0 20.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 1.0 0.0 19.0
		vertex 2.0 0.0 20.0
		vertex 1.0 0.0 20.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 2.0 0.0 19.0
		vertex 3.0 0.0 19.0
		vertex 3.0 0.0 20.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 2.0 0.0 19.0
		vertex 3.0 0.0 20.0
		vertex 2.0 0.0 20.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 3.0 0.0 19.0
		vertex 4.0 0.0 19.0
		vertex 4.0 0.0 20.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 3.0 0.0 19.0
		vertex 4.0 0.0 20.0
		vertex 3.0 0.0 20.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 4.0 0.0 19.0
		vertex 5.0 0.0 19.0
		vertex 5.0 0.0 20.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 4.0 0.0 19.0
		vertex 5.0 0.0 20.0
		vertex 4.0 0.0 20.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 5.0 0.0 19.0
		vertex 6.0 0.0 19.0
		vertex 6.0 0.0 20.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 5.0 0.0 19.0
		vertex 6.0 0.0 20.0
		vertex 5.0 0.0 20.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 6.0 0.0 19.0
		vertex 7.0 0.0 19.0
		vertex 7.0 0.0 20.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 6.0 0.0 19.0
		vertex 7.0 0.0 20.0
		vertex 6.0 0.0 20.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 7.0 0.0 19.0
		vertex 8.0 0.0 19.0
		vertex 8.0 0.0 20.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 7.0 0.0 19.0
		vertex 8.0 0.0 20.0
		vertex 7.0 0.0 20.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 8.0 0.0 19.0
		vertex 9.0 0.0 19.0
		vertex 9.0 0.0 20.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 8.0 0.0 19.0
		vertex 9.0 0.0 20.0
		vertex 8.0 0.0 20.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 9.0 0.0 19.0
		vertex 10.0 0.0 19.0
		vertex 10.0 0.0 20.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 9.0 0.0 19.0
		vertex 10.0 0.0 20.0
		vertex 9.0 0.0 20.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 0.0 0.0 20.0
		vertex 1.0 0.0 20.0
		vertex 1.0 0.0 21.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 0.0 0.0 20.0
		vertex 1.0 0.0 21.0
		vertex 0.0 0.0 21.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 1.0 0.0 20.0
		vertex 2.0 0.0 20.0
		vertex 2.0 0.0 21.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 1.0 0.0 20.0
		vertex 2.0 0.0 21.0
		vertex 1.0 0.0 21.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 2.0 0.0 20.0
		vertex 3.0 0.0 20.0
		vertex 3.0 0.0 21.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 2.0 0.0 20.0
		vertex 3.0 0.0 21.0
		vertex 2.0 0.0 21.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 3.0 0.0 20.0
		vertex 4.0 0.0 20.0
		vertex 4.0 0.0 21.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 3.0 0.0 20.0
		vertex 4.0 0.0 21.0
		vertex 3.0 0.0 21.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 4.0 0.0 20.0
		vertex 5.0 0.0 20.0
		vertex 5.0 0.0 21.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 4.0 0.0 20.0
		vertex 5.0 0.0 21.0
		vertex 4.0 0.0 21.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 5.0 0.0 20.0
		vertex 6.0 0.0 20.0
		vertex 6.0 0.0 21.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 5.0 0.0 20.0
		vertex 6.0 0.0 21.0
		vertex 5.0 0.0 21.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 6.0 0.0 20.0
		vertex 7.0 0.0 20.0
		vertex 7.0 0.0 21.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 6.0 0.0 20.0
		vertex 7.0 0.0 21.0
		vertex 6.0 0.0 21.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 7.0 0.0 20.0
		vertex 8.0 0.0 20.0
		vertex 8.0 0.0 21.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 7.0 0.0 20.0
		vertex 8.0 0.0 21.0
		vertex 7.0 0.0 21.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 8.0 0.0 20.0
		vertex 9.0 0.0 20.0
		vertex 9.0 0.0 21.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 8.0 0.0 20.0
		vertex 9.0 0.0 21.0
		vertex 8.0 0.0 21.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 9.0 0.0 20.0
		vertex 10.0 0.0 20.0
		vertex 10.0 0.0 21.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 9.0 0.0 20.0
		vertex 10.0 0.0 21.0
		vertex 9.0 0.0 21.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 0.0 0.0 21.0
		vertex 1.0 0.0 21.0
		vertex 1.0 0.0 22.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 0.0 0.0 21.0
		vertex 1.0 0.0 22.0
		vertex 0.0 0.0 22.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 1.0 0.0 21.0
		vertex 2.0 0.0 21.0
		vertex 2.0 0.0 22.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 1.0 0.0 21.0
		vertex 2.0 0.0 22.0
		vertex 1.0 0.0 22.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 2.0 0.0 21.0
		vertex 3.0 0.0 21.0
		vertex 3.0 0.0 22.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 2.0 0.0 21.0
		vertex 3.0 0.0 22.0
		vertex 2.0 0.0 22.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 3.0 0.0 21.0
		vertex 4.0 0.0 21.0
		vertex 4.0 0.0 22.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 3.0 0.0 21.0
		vertex 4.0 0.0 22.0
		vertex 3.0 0.0 22.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 4.0 0.0 21.0
		vertex 5.0 0.0 21.0
		vertex 5.0 0.0 22.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 4.0 0.0 21.0
		vertex 5.0 0.0 22.0
		vertex 4.0 0.0 22.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 5.0 0.0 21.0
		vertex 6.0 0.0 21.0
		vertex 6.0 0.0 22.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 5.0 0.0 21.0
		vertex 6.0 0.0 22.0
		vertex 5.0 0.0 22.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 6.0 0.0 21.0
		vertex 7.0 0.0 21.0
		vertex 7.0 0.0 22.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 6.0 0.0 21.0
		vertex 7.0 0.0 22.0
		vertex 6.0 0.0 22.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 7.0 0.0 21.0
		vertex 8.0 0.0 21.0
		vertex 8.0 0.0 22.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 7.0 0.0 21.0
		vertex 8.0 0.0 22.0
		vertex 7.0 0.0 22.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 8.0 0.0 21.0
		vertex 9.0 0.0 21.0
		vertex 9.0 0.0 22.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 8.0 0.0 21.0
		vertex 9.0 0.0 22.0
		vertex 8.0 0.0 22.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 9.0 0.0 21.0
		vertex 10.0 0.0 21.0
		vertex 10.0 0.0 22.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 9.0 0.0 21.0
		vertex 10.0 0.0 22.0
		vertex 9.0 0.0 22.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 0.0 0.0 22.0
		vertex 1.0 0.0 22.0
		vertex 1.0 0.0 23.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 0.0 0.0 22.0
		vertex 1.0 0.0 23.0
		vertex 0.0 0.0 23.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 1.0 0.0 22.0
		vertex 2.0 0.0 22.0
		vertex 2.0 0.0 23.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 1.0 0.0 22.0
		vertex 2.0 0.0 23.0
		vertex 1.0 0.0 23.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 2.0 0.0 22.0
		vertex 3.0 0.0 22.0
		vertex 3.0 0.0 23.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 2.0 0.0 22.0
		vertex 3.0 0.0 23.0
		vertex 2.0 0.0 23.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 3.0 0.0 22.0
		vertex 4.0 0.0 22.0
		vertex 4.0 0.0 23.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 3.0 0.0 22.0
		vertex 4.0 0.0 23.0
		vertex 3.0 0.0 23.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 4.0 0.0 22.0
		vertex 5.0 0.0 22.0
		vertex 5.0 0.0 23.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 4.0 0.0 22.0
		vertex 5.0 0.0 23.0
		vertex 4.0 0.0 23.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 5.0 0.0 22.0
		vertex 6.0 0.0 22.0
		vertex 6.0 0.0 23.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 5.0 0.0 22.0
		vertex 6.0 0.0 23.0
		vertex 5.0 0.0 23.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 6.0 0.0 22.0
		vertex 7.0 0.0 22.0
		vertex 7.0 0.0 23.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 6.0 0.0 22.0
		vertex 7.0 0.0 23.0
		vertex 6.0 0.0 23.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 7.0 0.0 22.0
		vertex 8.0 0.0 22.0
		vertex 8.0 0.0 23.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 7.0 0.0 22.0
		vertex 8.0 0.0 23.0
		vertex 7.0 0.0 23.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 8.0 0.0 22.0
		vertex 9.0 0.0 22.0
		vertex 9.0 0.0 23.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 8.0 0.0 22.0
		vertex 9.0 0.0 23.0
		vertex 8.0 0.0 23.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 9.0 0.0 22.0
		vertex 10.0 0.0 22.0
		vertex 10.0 0.0 23.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 9.0 0.0 22.0
		vertex 10.0 0.0 23.0
		vertex 9.0 0.0 23.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 0.0 0.0 23.0
		vertex 1.0 0.0 23.0
		vertex 1.0 0.0 24.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 0.0 0.0 23.0
		vertex 1.0 0.0 24.0
		vertex 0.0 0.0 24.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 1.0 0.0 23.0
		vertex 2.0 0.0 23.0
		vertex 2.0 0.0 24.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 1.0 0.0 23.0
		vertex 2.0 0.0 24.0
		vertex 1.0 0.0 24.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 2.0 0.0 23.0
		vertex 3.0 0.0 23.0
		vertex 3.0 0.0 24.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 2.0 0.0 23.0
		vertex 3.0 0.0 24.0
		vertex 2.0 0.0 24.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 3.0 0.0 23.0
		vertex 4.0 0.0 23.0
		vertex 4.0 0.0 24.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 3.0 0.0 23.0
		vertex 4.0 0.0 24.0
		vertex 3.0 0.0 24.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 4.0 0.0 23.0
		vertex 5.0 0.0 23.0
		vertex 5.0 0.0 24.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 4.0 0.0 23.0
		vertex 5.0 0.0 24.0
		vertex 4.0 0.0 24.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 5.0 0.0 23.0
		vertex 6.0 0.0 23.0
		vertex 6.0 0.0 24.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 5.0 0.0 23.0
		vertex 6.0 0.0 24.0
		vertex 5.0 0.0 24.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 6.0 0.0 23.0
		vertex 7.0 0.0 23.0
		vertex 7.0 0.0 24.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 6.0 0.0 23.0
		vertex 7.0 0.0 24.0
		vertex 6.0 0.0 24.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 7.0 0.0 23.0
		vertex 8.0 0.0 23.0
		vertex 8.0 0.0 24.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 7.0 0.0 23.0
		vertex 8.0 0.0 24.0
		vertex 7.0 0.0 24.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 8.0 0.0 23.0
		vertex 9.0 0.0 23.0
		vertex 9.0 0.0 24.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 8.0 0.0 23.0
		vertex 9.0 0.0 24.0
		vertex 8.0 0.0 24.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 9.0 0.0 23.0
		vertex 10.0 0.0 23.0
		vertex 10.0 0.0 24.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 9.0 0.0 23.0
		vertex 10.0 0.0 24.0
		vertex 9.0 0.0 24.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 0.0 0.0 24.0
		vertex 1.0 0.0 24.0
		vertex 1.0 0.0 25.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 0.0 0.0 24.0
		vertex 1.0 0.0 25.0
		vertex 0.0 0.0 25.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 1.0 0.0 24.0
		vertex 2.0 0.0 24.0
		vertex 2.0 0.0 25.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 1.0 0.0 24.0
		vertex 2.0 0.0 25.0
		vertex 1.0 0.0 25.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 2.0 0.0 24.0
		vertex 3.0 0.0 24.0
		vertex 3.0 0.0 25.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 2.0 0.0 24.0
		vertex 3.0 0.0 25.0
		vertex 2.0 0.0 25.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 3.0 0.0 24.0
		vertex 4.0 0.0 24.0
		vertex 4.0 0.0 25.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 3.0 0.0 24.0
		vertex 4.0 0.0 25.0
		vertex 3.0 0.0 25.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 4.0 0.0 24.0
		vertex 5.0 0.0 24.0
		vertex 5.0 0.0 25.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 4.0 0.0 24.0
		vertex 5.0 0.0 25.0
		vertex 4.0 0.0 25.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 5.0 0.0 24.0
		vertex 6.0 0.0 24.0
		vertex 6.0 0.0 25.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 5.0 0.0 24.0
		vertex 6.0 0.0 25.0
		vertex 5.0 0.0 25.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 6.0 0.0 24.0
		vertex 7.0 0.0 24.0
		vertex 7.0 0.0 25.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 6.0 0.0 24.0
		vertex 7.0 0.0 25.0
		vertex 6.0 0.0 25.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 7.0 0.0 24.0
		vertex 8.0 0.0 24.0
		vertex 8.0 0.0 25.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 7.0 0.0 24.0
		vertex 8.0 0.0 25.0
		vertex 7.0 0.0 25.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 8.0 0.0 24.0
		vertex 9.0 0.0 24.0
		vertex 9.0 0.0 25.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 8.0 0.0 24.0
		vertex 9.0 0.0 25.0
		vertex 8.0 0.0 25.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 9.0 0.0 24.0
		vertex 10.0 0.0 24.0
		vertex 10.0 0.0 25.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 9.0 0.0 24.0
		vertex 10.0 0.0 25.0
		vertex 9.0 0.0 25.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 0.0 0.0 25.0
		vertex 1.0 0.0 25.0
		vertex 1.0 0.0 26.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 0.0 0.0 25.0
		vertex 1.0 0.0 26.0
		vertex 0.0 0.0 26.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 1.0 0.0 25.0
		vertex 2.0 0.0 25.0
		vertex 2.0 0.0 26.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 1.0 0.0 25.0
		vertex 2.0 0.0 26.0
		vertex 1.0 0.0 26.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 2.0 0.0 25.0
		vertex 3.0 0.0 25.0
		vertex 3.0 0.0 26.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 2.0 0.0 25.0
		vertex 3.0 0.0 26.0
		vertex 2.0 0.0 26.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 3.0 0.0 25.0
		vertex 4.0 0.0 25.0
		vertex 4.0 0.0 26.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 3.0 0.0 25.0
		vertex 4.0 0.0 26.0
		vertex 3.0 0.0 26.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 4.0 0.0 25.0
		vertex 5.0 0.0 25.0
		vertex 5.0 0.0 26.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 4.0 0.0 25.0
		vertex 5.0 0.0 26.0
		vertex 4.0 0.0 26.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 5.0 0.0 25.0
		vertex 6.0 0.0 25.0
		vertex 6.0 0.0 26.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 5.0 0.0 25.0
		vertex 6.0 0.0 26.0
		vertex 5.0 0.0 26.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 6.0 0.0 25.0
		vertex 7.0 0.0 25.0
		vertex 7.0 0.0 26.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 6.0 0.0 25.0
		vertex 7.0 0.0 26.0
		vertex 6.0 0.0 26.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 7.0 0.0 25.0
		vertex 8.0 0.0 25.0
		vertex 8.0 0.0 26.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 7.0 0.0 25.0
		vertex 8.0 0.0 26.0
		vertex 7.0 0.0 26.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 8.0 0.0 25.0
		vertex 9.0 0.0 25.0
		vertex 9.0 0.0 26.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 8.0 0.0 25.0
		vertex 9.0 0.0 26.0
		vertex 8.0 0.0 26.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 9.0 0.0 25.0
		vertex 10.0 0.0 25.0
		vertex 10.0 0.0 26.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 9.0 0.0 25.0
		vertex 10.0 0.0 26.0
		vertex 9.0 0.0 26.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 0.0 0.0 26.0
		vertex 1.0 0.0 26.0
		vertex 1.0 0.0 27.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 0.0 0.0 26.0
		vertex 1.0 0.0 27.0
		vertex 0.0 0.0 27.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 1.0 0.0 26.0
		vertex 2.0 0.0 26.0
		vertex 2.0 0.0 27.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 1.0 0.0 26.0
		vertex 2.0 0.0 27.0
		vertex 1.0 0.0 27.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 2.0 0.0 26.0
		vertex 3.0 0.0 26.0
		vertex 3.0 0.0 27.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 2.0 0.0 26.0
		vertex 3.0 0.0 27.0
		vertex 2.0 0.0 27.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 3.0 0.0 26.0
		vertex 4.0 0.0 26.0
		vertex 4.0 0.0 27.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 3.0 0.0 26.0
		vertex 4.0 0.0 27.0
		vertex 3.0 0.0 27.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 4.0 0.0 26.0
		vertex 5.0 0.0 26.0
		vertex 5.0 0.0 27.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 4.0 0.0 26.0
		vertex 5.0 0.0 27.0
		vertex 4.0 0.0 27.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 5.0 0.0 26.0
		vertex 6.0 0.0 26.0
		vertex 6.0 0.0 27.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 5.0 0.0 26.0
		vertex 6.0 0.0 27.0
		vertex 5.0 0.0 27.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 6.0 0.0 26.0
		vertex 7.0 0.0 26.0
		vertex 7.0 0.0 27.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 6.0 0.0 26.0
		vertex 7.0 0.0 27.0
		vertex 6.0 0.0 27.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 7.0 0.0 26.0
		vertex 8.0 0.0 26.0
		vertex 8.0 0.0 27.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 7.0 0.0 26.0
		vertex 8.0 0.0 27.0
		vertex 7.0 0.0 27.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 8.0 0.0 26.0
		vertex 9.0 0.0 26.0
		vertex 9.0 0.0 27.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 8.0 0.0 26.0
		vertex 9.0 0.0 27.0
		vertex 8.0 0.0 27.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 9.0 0.0 26.0
		vertex 10.0 0.0 26.0
		vertex 10.0 0.0 27.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 9.0 0.0 26.0
		vertex 10.0 0.0 27.0
		vertex 9.0 0.0 27.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 0.0 0.0 27.0
		vertex 1.0 0.0 27.0
		vertex 1.0 0.0 28.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 0.0 0.0 27.0
		vertex 1.0 0.0 28.0
		vertex 0.0 0.0 28.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 1.0 0.0 27.0
		vertex 2.0 0.0 27.0
		vertex 2.0 0.0 28.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 1.0 0.0 27.0
		vertex 2.0 0.0 28.0
		vertex 1.0 0.0 28.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 2.0 0.0 27.0
		vertex 3.0 0.0 27.0
		vertex 3.0 0.0 28.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 2.0 0.0 27.0
		vertex 3.0 0.0 28.0
		vertex 2.0 0.0 28.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 3.0 0.0 27.0
		vertex 4.0 0.0 27.0
		vertex 4.0 0.0 28.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 3.0 0.0 27.0
		vertex 4.0 0.0 28.0
		vertex 3.0 0.0 28.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 4.0 0.0 27.0
		vertex 5.0 0.0 27.0
		vertex 5.0 0.0 28.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 4.0 0.0 27.0
		vertex 5.0 0.0 28.0
		vertex 4.0 0.0 28.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 5.0 0.0 27.0
		vertex 6.0 0.0 27.0
		vertex 6.0 0.0 28.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 5.0 0.0 27.0
		vertex 6.0 0.0 28.0
		vertex 5.0 0.0 28.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 6.0 0.0 27.0
		vertex 7.0 0.0 27.0
		vertex 7.0 0.0 28.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 6.0 0.0 27.0
		vertex 7.0 0.0 28.0
		vertex 6.0 0.0 28.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 7.0 0.0 27.0
		vertex 8.0 0.0 27.0
		vertex 8.0 0.0 28.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 7.0 0.0 27.0
		vertex 8.0 0.0 28.0
		vertex 7.0 0.0 28.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 8.0 0.0 27.0
		vertex 9.0 0.0 27.0
		vertex 9.0 0.0 28.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 8.0 0.0 27.0
		vertex 9.0 0.0 28.0
		vertex 8.0 0.0 28.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 9.0 0.0 27.0
		vertex 10.0 0.0 27.0
		vertex 10.0 0.0 28.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 9.0 0.0 27.0
		vertex 10.0 0.0 28.0
		vertex 9.0 0.0 28.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 0.0 0.0 28.0
		vertex 1.0 0.0 28.0
		vertex 1.0 0.0 29.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 0.0 0.0 28.0
		vertex 1.0 0.0 29.0
		vertex 0.0 0.0 29.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 1.0 0.0 28.0
		vertex 2.0 0.0 28.0
		vertex 2.0 0.0 29.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 1.0 0.0 28.0
		vertex 2.0 0.0 29.0
		vertex 1.0 0.0 29.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 2.0 0.0 28.0
		vertex 3.0 0.0 28.0
		vertex 3.0 0.0 29.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 2.0 0.0 28.0
		vertex 3.0 0.0 29.0
		vertex 2.0 0.0 29.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 3.0 0.0 28.0
		vertex 4.0 0.0 28.0
		vertex 4.0 0.0 29.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 3.0 0.0 28.0
		vertex 4.0 0.0 29.0
		vertex 3.0 0.0 29.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 4.0 0.0 28.0
		vertex 5.0 0.0 28.0
		vertex 5.0 0.0 29.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 4.0 0.0 28.0
		vertex 5.0 0.0 29.0
		vertex 4.0 0.0 29.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 5.0 0.0 28.0
		vertex 6.0 0.0 28.0
		vertex 6.0 0.0 29.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 5.0 0.0 28.0
		vertex 6.0 0.0 29.0
		vertex 5.0 0.0 29.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 6.0 0.0 28.0
		vertex 7.0 0.0 28.0
		vertex 7.0 0.0 29.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 6.0 0.0 28.0
		vertex 7.0 0.0 29.0
		vertex 6.0 0.0 29.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 7.0 0.0 28.0
		vertex 8.0 0.0 28.0
		vertex 8.0 0.0 29.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 7.0 0.0 28.0
		vertex 8.0 0.0 29.0
		vertex 7.0 0.0 29.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 8.0 0.0 28.0
		vertex 9.0 0.0 28.0
		vertex 9.0 0.0 29.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 8.0 0.0 28.0
		vertex 9.0 0.0 29.0
		vertex 8.0 0.0 29.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 9.0 0.0 28.0
		vertex 10.0 0.0 28.0
		vertex 10.0 0.0 29.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 9.0 0.0 28.0
		vertex 10.0 0.0 29.0
		vertex 9.0 0.0 29.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 0.0 0.0 29.0
		vertex 1.0 0.0 29.0
		vertex 1.0 0.0 30.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 0.0 0.0 29.0
		vertex 1.0 0.0 30.0
		vertex 0.0 0.0 30.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 1.0 0.0 29.0
		vertex 2.0 0.0 29.0
		vertex 2.0 0.0 30.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 1.0 0.0 29.0
		vertex 2.0 0.0 30.0
		vertex 1.0 0.0 30.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 2.0 0.0 29.0
		vertex 3.0 0.0 29.0
		vertex 3.0 0.0 30.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 2.0 0.0 29.0
		vertex 3.0 0.0 30.0
		vertex 2.0 0.0 30.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 3.0 0.0 29.0
		vertex 4.0 0.0 29.0
		vertex 4.0 0.0 30.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 3.0 0.0 29.0
		vertex 4.0 0.0 30.0
		vertex 3.0 0.0 30.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 4.0 0.0 29.0
		vertex 5.0 0.0 29.0
		vertex 5.0 0.0 30.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 4.0 0.0 29.0
		vertex 5.0 0.0 30.0
		vertex 4.0 0.0 30.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 5.0 0.0 29.0
		vertex 6.0 0.0 29.0
		vertex 6.0 0.0 30.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 5.0 0.0 29.0
		vertex 6.0 0.0 30.0
		vertex 5.0 0.0 30.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 6.0 0.0 29.0
		vertex 7.0 0.0 29.0
		vertex 7.0 0.0 30.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 6.0 0.0 29.0
		vertex 7.0 0.0 30.0
		vertex 6.0 0.0 30.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 7.0 0.0 29.0
		vertex 8.0 0.0 29.0
		vertex 8.0 0.0 30.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 7.0 0.0 29.0
		vertex 8.0 0.0 30.0
		vertex 7.0 0.0 30.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 8.0 0.0 29.0
		vertex 9.0 0.0 29.0
		vertex 9.0 0.0 30.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 8.0 0.0 29.0
		vertex 9.0 0.0 30.0
		vertex 8.0 0.0 30.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 9.0 0.0 29.0
		vertex 10.0 0.0 29.0
		vertex 10.0 0.0 30.0
	endloop
endfacet

facet normal -0.0 -1.0 -0.0
	outer loop
		vertex 9.0 0.0 29.0
		vertex 10.0 0.0 30.0
		vertex 9.0 0.0 30.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 1.0 20.0 0.0
		vertex 0.0 20.0 0.0
		vertex 1.0 20.0 1.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 1.0 20.0 1.0
		vertex 0.0 20.0 0.0
		vertex 0.0 20.0 1.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 2.0 20.0 0.0
		vertex 1.0 20.0 0.0
		vertex 2.0 20.0 1.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 2.0 20.0 1.0
		vertex 1.0 20.0 0.0
		vertex 1.0 20.0 1.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 3.0 20.0 0.0
		vertex 2.0 20.0 0.0
		vertex 3.0 20.0 1.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 3.0 20.0 1.0
		vertex 2.0 20.0 0.0
		vertex 2.0 20.0 1.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 4.0 20.0 0.0
		vertex 3.0 20.0 0.0
		vertex 4.0 20.0 1.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 4.0 20.0 1.0
		vertex 3.0 20.0 0.0
		vertex 3.0 20.0 1.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 5.0 20.0 0.0
		vertex 4.0 20.0 0.0
		vertex 5.0 20.0 1.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 5.0 20.0 1.0
		vertex 4.0 20.0 0.0
		vertex 4.0 20.0 1.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 6.0 20.0 0.0
		vertex 5.0 20.0 0.0
		vertex 6.0 20.0 1.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 6.0 20.0 1.0
		vertex 5.0 20.0 0.0
		vertex 5.0 20.0 1.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 7.0 20.0 0.0
		vertex 6.0 20.0 0.0
		vertex 7.0 20.0 1.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 7.0 20.0 1.0
		vertex 6.0 20.0 0.0
		vertex 6.0 20.0 1.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 8.0 20.0 0.0
		vertex 7.0 20.0 0.0
		vertex 8.0 20.0 1.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 8.0 20.0 1.0
		vertex 7.0 20.0 0.0
		vertex 7.0 20.0 1.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 9.0 20.0 0.0
		vertex 8.0 20.0 0.0
		vertex 9.0 20.0 1.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 9.0 20.0 1.0
		vertex 8.0 20.0 0.0
		vertex 8.0 20.0 1.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 10.0 20.0 0.0
		vertex 9.0 20.0 0.0
		vertex 10.0 20.0 1.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 10.0 20.0 1.0
		vertex 9.0 20.0 0.0
		vertex 9.0 20.0 1.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 1.0 20.0 1.0
		vertex 0.0 20.0 1.0
		vertex 1.0 20.0 2.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 1.0 20.0 2.0
		vertex 0.0 20.0 1.0
		vertex 0.0 20.0 2.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 2.0 20.0 1.0
		vertex 1.0 20.0 1.0
		vertex 2.0 20.0 2.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 2.0 20.0 2.0
		vertex 1.0 20.0 1.0
		vertex 1.0 20.0 2.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 3.0 20.0 1.0
		vertex 2.0 20.0 1.0
		vertex 3.0 20.0 2.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 3.0 20.0 2.0
		vertex 2.0 20.0 1.0
		vertex 2.0 20.0 2.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 4.0 20.0 1.0
		vertex 3.0 20.0 1.0
		vertex 4.0 20.0 2.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 4.0 20.0 2.0
		vertex 3.0 20.0 1.0
		vertex 3.0 20.0 2.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 5.0 20.0 1.0
		vertex 4.0 20.0 1.0
		vertex 5.0 20.0 2.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 5.0 20.0 2.0
		vertex 4.0 20.0 1.0
		vertex 4.0 20.0 2.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 6.0 20.0 1.0
		vertex 5.0 20.0 1.0
		vertex 6.0 20.0 2.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 6.0 20.0 2.0
		vertex 5.0 20.0 1.0
		vertex 5.0 20.0 2.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 7.0 20.0 1.0
		vertex 6.0 20.0 1.0
		vertex 7.0 20.0 2.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 7.0 20.0 2.0
		vertex 6.0 20.0 1.0
		vertex 6.0 20.0 2.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 8.0 20.0 1.0
		vertex 7.0 20.0 1.0
		vertex 8.0 20.0 2.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 8.0 20.0 2.0
		vertex 7.0 20.0 1.0
		vertex 7.0 20.0 2.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 9.0 20.0 1.0
		vertex 8.0 20.0 1.0
		vertex 9.0 20.0 2.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 9.0 20.0 2.0
		vertex 8.0 20.0 1.0
		vertex 8.0 20.0 2.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 10.0 20.0 1.0
		vertex 9.0 20.0 1.0
		vertex 10.0 20.0 2.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 10.0 20.0 2.0
		vertex 9.0 20.0 1.0
		vertex 9.0 20.0 2.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 1.0 20.0 2.0
		vertex 0.0 20.0 2.0
		vertex 1.0 20.0 3.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 1.0 20.0 3.0
		vertex 0.0 20.0 2.0
		vertex 0.0 20.0 3.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 2.0 20.0 2.0
		vertex 1.0 20.0 2.0
		vertex 2.0 20.0 3.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 2.0 20.0 3.0
		vertex 1.0 20.0 2.0
		vertex 1.0 20.0 3.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 3.0 20.0 2.0
		vertex 2.0 20.0 2.0
		vertex 3.0 20.0 3.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 3.0 20.0 3.0
		vertex 2.0 20.0 2.0
		vertex 2.0 20.0 3.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 4.0 20.0 2.0
		vertex 3.0 20.0 2.0
		vertex 4.0 20.0 3.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 4.0 20.0 3.0
		vertex 3.0 20.0 2.0
		vertex 3.0 20.0 3.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 5.0 20.0 2.0
		vertex 4.0 20.0 2.0
		vertex 5.0 20.0 3.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 5.0 20.0 3.0
		vertex 4.0 20.0 2.0
		vertex 4.0 20.0 3.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 6.0 20.0 2.0
		vertex 5.0 20.0 2.0
		vertex 6.0 20.0 3.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 6.0 20.0 3.0
		vertex 5.0 20.0 2.0
		vertex 5.0 20.0 3.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 7.0 20.0 2.0
		vertex 6.0 20.0 2.0
		vertex 7.0 20.0 3.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 7.0 20.0 3.0
		vertex 6.0 20.0 2.0
		vertex 6.0 20.0 3.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 8.0 20.0 2.0
		vertex 7.0 20.0 2.0
		vertex 8.0 20.0 3.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 8.0 20.0 3.0
		vertex 7.0 20.0 2.0
		vertex 7.0 20.0 3.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 9.0 20.0 2.0
		vertex 8.0 20.0 2.0
		vertex 9.0 20.0 3.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 9.0 20.0 3.0
		vertex 8.0 20.0 2.0
		vertex 8.0 20.0 3.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 10.0 20.0 2.0
		vertex 9.0 20.0 2.0
		vertex 10.0 20.0 3.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 10.0 20.0 3.0
		vertex 9.0 20.0 2.0
		vertex 9.0 20.0 3.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 1.0 20.0 3.0
		vertex 0.0 20.0 3.0
		vertex 1.0 20.0 4.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 1.0 20.0 4.0
		vertex 0.0 20.0 3.0
		vertex 0.0 20.0 4.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 2.0 20.0 3.0
		vertex 1.0 20.0 3.0
		vertex 2.0 20.0 4.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 2.0 20.0 4.0
		vertex 1.0 20.0 3.0
		vertex 1.0 20.0 4.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 3.0 20.0 3.0
		vertex 2.0 20.0 3.0
		vertex 3.0 20.0 4.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 3.0 20.0 4.0
		vertex 2.0 20.0 3.0
		vertex 2.0 20.0 4.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 4.0 20.0 3.0
		vertex 3.0 20.0 3.0
		vertex 4.0 20.0 4.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 4.0 20.0 4.0
		vertex 3.0 20.0 3.0
		vertex 3.0 20.0 4.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 5.0 20.0 3.0
		vertex 4.0 20.0 3.0
		vertex 5.0 20.0 4.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 5.0 20.0 4.0
		vertex 4.0 20.0 3.0
		vertex 4.0 20.0 4.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 6.0 20.0 3.0
		vertex 5.0 20.0 3.0
		vertex 6.0 20.0 4.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 6.0 20.0 4.0
		vertex 5.0 20.0 3.0
		vertex 5.0 20.0 4.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 7.0 20.0 3.0
		vertex 6.0 20.0 3.0
		vertex 7.0 20.0 4.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 7.0 20.0 4.0
		vertex 6.0 20.0 3.0
		vertex 6.0 20.0 4.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 8.0 20.0 3.0
		vertex 7.0 20.0 3.0
		vertex 8.0 20.0 4.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 8.0 20.0 4.0
		vertex 7.0 20.0 3.0
		vertex 7.0 20.0 4.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 9.0 20.0 3.0
		vertex 8.0 20.0 3.0
		vertex 9.0 20.0 4.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 9.0 20.0 4.0
		vertex 8.0 20.0 3.0
		vertex 8.0 20.0 4.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 10.0 20.0 3.0
		vertex 9.0 20.0 3.0
		vertex 10.0 20.0 4.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 10.0 20.0 4.0
		vertex 9.0 20.0 3.0
		vertex 9.0 20.0 4.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 1.0 20.0 4.0
		vertex 0.0 20.0 4.0
		vertex 1.0 20.0 5.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 1.0 20.0 5.0
		vertex 0.0 20.0 4.0
		vertex 0.0 20.0 5.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 2.0 20.0 4.0
		vertex 1.0 20.0 4.0
		vertex 2.0 20.0 5.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 2.0 20.0 5.0
		vertex 1.0 20.0 4.0
		vertex 1.0 20.0 5.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 3.0 20.0 4.0
		vertex 2.0 20.0 4.0
		vertex 3.0 20.0 5.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 3.0 20.0 5.0
		vertex 2.0 20.0 4.0
		vertex 2.0 20.0 5.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 4.0 20.0 4.0
		vertex 3.0 20.0 4.0
		vertex 4.0 20.0 5.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 4.0 20.0 5.0
		vertex 3.0 20.0 4.0
		vertex 3.0 20.0 5.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 5.0 20.0 4.0
		vertex 4.0 20.0 4.0
		vertex 5.0 20.0 5.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 5.0 20.0 5.0
		vertex 4.0 20.0 4.0
		vertex 4.0 20.0 5.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 6.0 20.0 4.0
		vertex 5.0 20.0 4.0
		vertex 6.0 20.0 5.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 6.0 20.0 5.0
		vertex 5.0 20.0 4.0
		vertex 5.0 20.0 5.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 7.0 20.0 4.0
		vertex 6.0 20.0 4.0
		vertex 7.0 20.0 5.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 7.0 20.0 5.0
		vertex 6.0 20.0 4.0
		vertex 6.0 20.0 5.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 8.0 20.0 4.0
		vertex 7.0 20.0 4.0
		vertex 8.0 20.0 5.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 8.0 20.0 5.0
		vertex 7.0 20.0 4.0
		vertex 7.0 20.0 5.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 9.0 20.0 4.0
		vertex 8.0 20.0 4.0
		vertex 9.0 20.0 5.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 9.0 20.0 5.0
		vertex 8.0 20.0 4.0
		vertex 8.0 20.0 5.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 10.0 20.0 4.0
		vertex 9.0 20.0 4.0
		vertex 10.0 20.0 5.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 10.0 20.0 5.0
		vertex 9.0 20.0 4.0
		vertex 9.0 20.0 5.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 1.0 20.0 5.0
		vertex 0.0 20.0 5.0
		vertex 1.0 20.0 6.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 1.0 20.0 6.0
		vertex 0.0 20.0 5.0
		vertex 0.0 20.0 6.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 2.0 20.0 5.0
		vertex 1.0 20.0 5.0
		vertex 2.0 20.0 6.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 2.0 20.0 6.0
		vertex 1.0 20.0 5.0
		vertex 1.0 20.0 6.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 3.0 20.0 5.0
		vertex 2.0 20.0 5.0
		vertex 3.0 20.0 6.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 3.0 20.0 6.0
		vertex 2.0 20.0 5.0
		vertex 2.0 20.0 6.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 4.0 20.0 5.0
		vertex 3.0 20.0 5.0
		vertex 4.0 20.0 6.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 4.0 20.0 6.0
		vertex 3.0 20.0 5.0
		vertex 3.0 20.0 6.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 5.0 20.0 5.0
		vertex 4.0 20.0 5.0
		vertex 5.0 20.0 6.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 5.0 20.0 6.0
		vertex 4.0 20.0 5.0
		vertex 4.0 20.0 6.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 6.0 20.0 5.0
		vertex 5.0 20.0 5.0
		vertex 6.0 20.0 6.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 6.0 20.0 6.0
		vertex 5.0 20.0 5.0
		vertex 5.0 20.0 6.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 7.0 20.0 5.0
		vertex 6.0 20.0 5.0
		vertex 7.0 20.0 6.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 7.0 20.0 6.0
		vertex 6.0 20.0 5.0
		vertex 6.0 20.0 6.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 8.0 20.0 5.0
		vertex 7.0 20.0 5.0
		vertex 8.0 20.0 6.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 8.0 20.0 6.0
		vertex 7.0 20.0 5.0
		vertex 7.0 20.0 6.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 9.0 20.0 5.0
		vertex 8.0 20.0 5.0
		vertex 9.0 20.0 6.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 9.0 20.0 6.0
		vertex 8.0 20.0 5.0
		vertex 8.0 20.0 6.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 10.0 20.0 5.0
		vertex 9.0 20.0 5.0
		vertex 10.0 20.0 6.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 10.0 20.0 6.0
		vertex 9.0 20.0 5.0
		vertex 9.0 20.0 6.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 1.0 20.0 6.0
		vertex 0.0 20.0 6.0
		vertex 1.0 20.0 7.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 1.0 20.0 7.0
		vertex 0.0 20.0 6.0
		vertex 0.0 20.0 7.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 2.0 20.0 6.0
		vertex 1.0 20.0 6.0
		vertex 2.0 20.0 7.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 2.0 20.0 7.0
		vertex 1.0 20.0 6.0
		vertex 1.0 20.0 7.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 3.0 20.0 6.0
		vertex 2.0 20.0 6.0
		vertex 3.0 20.0 7.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 3.0 20.0 7.0
		vertex 2.0 20.0 6.0
		vertex 2.0 20.0 7.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 4.0 20.0 6.0
		vertex 3.0 20.0 6.0
		vertex 4.0 20.0 7.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 4.0 20.0 7.0
		vertex 3.0 20.0 6.0
		vertex 3.0 20.0 7.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 5.0 20.0 6.0
		vertex 4.0 20.0 6.0
		vertex 5.0 20.0 7.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 5.0 20.0 7.0
		vertex 4.0 20.0 6.0
		vertex 4.0 20.0 7.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 6.0 20.0 6.0
		vertex 5.0 20.0 6.0
		vertex 6.0 20.0 7.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 6.0 20.0 7.0
		vertex 5.0 20.0 6.0
		vertex 5.0 20.0 7.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 7.0 20.0 6.0
		vertex 6.0 20.0 6.0
		vertex 7.0 20.0 7.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 7.0 20.0 7.0
		vertex 6.0 20.0 6.0
		vertex 6.0 20.0 7.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 8.0 20.0 6.0
		vertex 7.0 20.0 6.0
		vertex 8.0 20.0 7.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 8.0 20.0 7.0
		vertex 7.0 20.0 6.0
		vertex 7.0 20.0 7.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 9.0 20.0 6.0
		vertex 8.0 20.0 6.0
		vertex 9.0 20.0 7.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 9.0 20.0 7.0
		vertex 8.0 20.0 6.0
		vertex 8.0 20.0 7.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 10.0 20.0 6.0
		vertex 9.0 20.0 6.0
		vertex 10.0 20.0 7.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 10.0 20.0 7.0
		vertex 9.0 20.0 6.0
		vertex 9.0 20.0 7.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 1.0 20.0 7.0
		vertex 0.0 20.0 7.0
		vertex 1.0 20.0 8.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 1.0 20.0 8.0
		vertex 0.0 20.0 7.0
		vertex 0.0 20.0 8.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 2.0 20.0 7.0
		vertex 1.0 20.0 7.0
		vertex 2.0 20.0 8.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 2.0 20.0 8.0
		vertex 1.0 20.0 7.0
		vertex 1.0 20.0 8.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 3.0 20.0 7.0
		vertex 2.0 20.0 7.0
		vertex 3.0 20.0 8.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 3.0 20.0 8.0
		vertex 2.0 20.0 7.0
		vertex 2.0 20.0 8.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 4.0 20.0 7.0
		vertex 3.0 20.0 7.0
		vertex 4.0 20.0 8.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 4.0 20.0 8.0
		vertex 3.0 20.0 7.0
		vertex 3.0 20.0 8.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 5.0 20.0 7.0
		vertex 4.0 20.0 7.0
		vertex 5.0 20.0 8.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 5.0 20.0 8.0
		vertex 4.0 20.0 7.0
		vertex 4.0 20.0 8.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 6.0 20.0 7.0
		vertex 5.0 20.0 7.0
		vertex 6.0 20.0 8.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 6.0 20.0 8.0
		vertex 5.0 20.0 7.0
		vertex 5.0 20.0 8.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 7.0 20.0 7.0
		vertex 6.0 20.0 7.0
		vertex 7.0 20.0 8.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 7.0 20.0 8.0
		vertex 6.0 20.0 7.0
		vertex 6.0 20.0 8.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 8.0 20.0 7.0
		vertex 7.0 20.0 7.0
		vertex 8.0 20.0 8.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 8.0 20.0 8.0
		vertex 7.0 20.0 7.0
		vertex 7.0 20.0 8.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 9.0 20.0 7.0
		vertex 8.0 20.0 7.0
		vertex 9.0 20.0 8.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 9.0 20.0 8.0
		vertex 8.0 20.0 7.0
		vertex 8.0 20.0 8.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 10.0 20.0 7.0
		vertex 9.0 20.0 7.0
		vertex 10.0 20.0 8.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 10.0 20.0 8.0
		vertex 9.0 20.0 7.0
		vertex 9.0 20.0 8.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 1.0 20.0 8.0
		vertex 0.0 20.0 8.0
		vertex 1.0 20.0 9.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 1.0 20.0 9.0
		vertex 0.0 20.0 8.0
		vertex 0.0 20.0 9.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 2.0 20.0 8.0
		vertex 1.0 20.0 8.0
		vertex 2.0 20.0 9.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 2.0 20.0 9.0
		vertex 1.0 20.0 8.0
		vertex 1.0 20.0 9.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 3.0 20.0 8.0
		vertex 2.0 20.0 8.0
		vertex 3.0 20.0 9.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 3.0 20.0 9.0
		vertex 2.0 20.0 8.0
		vertex 2.0 20.0 9.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 4.0 20.0 8.0
		vertex 3.0 20.0 8.0
		vertex 4.0 20.0 9.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 4.0 20.0 9.0
		vertex 3.0 20.0 8.0
		vertex 3.0 20.0 9.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 5.0 20.0 8.0
		vertex 4.0 20.0 8.0
		vertex 5.0 20.0 9.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 5.0 20.0 9.0
		vertex 4.0 20.0 8.0
		vertex 4.0 20.0 9.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 6.0 20.0 8.0
		vertex 5.0 20.0 8.0
		vertex 6.0 20.0 9.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 6.0 20.0 9.0
		vertex 5.0 20.0 8.0
		vertex 5.0 20.0 9.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 7.0 20.0 8.0
		vertex 6.0 20.0 8.0
		vertex 7.0 20.0 9.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 7.0 20.0 9.0
		vertex 6.0 20.0 8.0
		vertex 6.0 20.0 9.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 8.0 20.0 8.0
		vertex 7.0 20.0 8.0
		vertex 8.0 20.0 9.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 8.0 20.0 9.0
		vertex 7.0 20.0 8.0
		vertex 7.0 20.0 9.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 9.0 20.0 8.0
		vertex 8.0 20.0 8.0
		vertex 9.0 20.0 9.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 9.0 20.0 9.0
		vertex 8.0 20.0 8.0
		vertex 8.0 20.0 9.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 10.0 20.0 8.0
		vertex 9.0 20.0 8.0
		vertex 10.0 20.0 9.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 10.0 20.0 9.0
		vertex 9.0 20.0 8.0
		vertex 9.0 20.0 9.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 1.0 20.0 9.0
		vertex 0.0 20.0 9.0
		vertex 1.0 20.0 10.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 1.0 20.0 10.0
		vertex 0.0 20.0 9.0
		vertex 0.0 20.0 10.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 2.0 20.0 9.0
		vertex 1.0 20.0 9.0
		vertex 2.0 20.0 10.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 2.0 20.0 10.0
		vertex 1.0 20.0 9.0
		vertex 1.0 20.0 10.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 3.0 20.0 9.0
		vertex 2.0 20.0 9.0
		vertex 3.0 20.0 10.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 3.0 20.0 10.0
		vertex 2.0 20.0 9.0
		vertex 2.0 20.0 10.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 4.0 20.0 9.0
		vertex 3.0 20.0 9.0
		vertex 4.0 20.0 10.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 4.0 20.0 10.0
		vertex 3.0 20.0 9.0
		vertex 3.0 20.0 10.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 5.0 20.0 9.0
		vertex 4.0 20.0 9.0
		vertex 5.0 20.0 10.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 5.0 20.0 10.0
		vertex 4.0 20.0 9.0
		vertex 4.0 20.0 10.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 6.0 20.0 9.0
		vertex 5.0 20.0 9.0
		vertex 6.0 20.0 10.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 6.0 20.0 10.0
		vertex 5.0 20.0 9.0
		vertex 5.0 20.0 10.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 7.0 20.0 9.0
		vertex 6.0 20.0 9.0
		vertex 7.0 20.0 10.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 7.0 20.0 10.0
		vertex 6.0 20.0 9.0
		vertex 6.0 20.0 10.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 8.0 20.0 9.0
		vertex 7.0 20.0 9.0
		vertex 8.0 20.0 10.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 8.0 20.0 10.0
		vertex 7.0 20.0 9.0
		vertex 7.0 20.0 10.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 9.0 20.0 9.0
		vertex 8.0 20.0 9.0
		vertex 9.0 20.0 10.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 9.0 20.0 10.0
		vertex 8.0 20.0 9.0
		vertex 8.0 20.0 10.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 10.0 20.0 9.0
		vertex 9.0 20.0 9.0
		vertex 10.0 20.0 10.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 10.0 20.0 10.0
		vertex 9.0 20.0 9.0
		vertex 9.0 20.0 10.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 1.0 20.0 10.0
		vertex 0.0 20.0 10.0
		vertex 1.0 20.0 11.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 1.0 20.0 11.0
		vertex 0.0 20.0 10.0
		vertex 0.0 20.0 11.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 2.0 20.0 10.0
		vertex 1.0 20.0 10.0
		vertex 2.0 20.0 11.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 2.0 20.0 11.0
		vertex 1.0 20.0 10.0
		vertex 1.0 20.0 11.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 3.0 20.0 10.0
		vertex 2.0 20.0 10.0
		vertex 3.0 20.0 11.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 3.0 20.0 11.0
		vertex 2.0 20.0 10.0
		vertex 2.0 20.0 11.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 4.0 20.0 10.0
		vertex 3.0 20.0 10.0
		vertex 4.0 20.0 11.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 4.0 20.0 11.0
		vertex 3.0 20.0 10.0
		vertex 3.0 20.0 11.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 5.0 20.0 10.0
		vertex 4.0 20.0 10.0
		vertex 5.0 20.0 11.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 5.0 20.0 11.0
		vertex 4.0 20.0 10.0
		vertex 4.0 20.0 11.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 6.0 20.0 10.0
		vertex 5.0 20.0 10.0
		vertex 6.0 20.0 11.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 6.0 20.0 11.0
		vertex 5.0 20.0 10.0
		vertex 5.0 20.0 11.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 7.0 20.0 10.0
		vertex 6.0 20.0 10.0
		vertex 7.0 20.0 11.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 7.0 20.0 11.0
		vertex 6.0 20.0 10.0
		vertex 6.0 20.0 11.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 8.0 20.0 10.0
		vertex 7.0 20.0 10.0
		vertex 8.0 20.0 11.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 8.0 20.0 11.0
		vertex 7.0 20.0 10.0
		vertex 7.0 20.0 11.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 9.0 20.0 10.0
		vertex 8.0 20.0 10.0
		vertex 9.0 20.0 11.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 9.0 20.0 11.0
		vertex 8.0 20.0 10.0
		vertex 8.0 20.0 11.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 10.0 20.0 10.0
		vertex 9.0 20.0 10.0
		vertex 10.0 20.0 11.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 10.0 20.0 11.0
		vertex 9.0 20.0 10.0
		vertex 9.0 20.0 11.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 1.0 20.0 11.0
		vertex 0.0 20.0 11.0
		vertex 1.0 20.0 12.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 1.0 20.0 12.0
		vertex 0.0 20.0 11.0
		vertex 0.0 20.0 12.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 2.0 20.0 11.0
		vertex 1.0 20.0 11.0
		vertex 2.0 20.0 12.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 2.0 20.0 12.0
		vertex 1.0 20.0 11.0
		vertex 1.0 20.0 12.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 3.0 20.0 11.0
		vertex 2.0 20.0 11.0
		vertex 3.0 20.0 12.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 3.0 20.0 12.0
		vertex 2.0 20.0 11.0
		vertex 2.0 20.0 12.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 4.0 20.0 11.0
		vertex 3.0 20.0 11.0
		vertex 4.0 20.0 12.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 4.0 20.0 12.0
		vertex 3.0 20.0 11.0
		vertex 3.0 20.0 12.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 5.0 20.0 11.0
		vertex 4.0 20.0 11.0
		vertex 5.0 20.0 12.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 5.0 20.0 12.0
		vertex 4.0 20.0 11.0
		vertex 4.0 20.0 12.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 6.0 20.0 11.0
		vertex 5.0 20.0 11.0
		vertex 6.0 20.0 12.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 6.0 20.0 12.0
		vertex 5.0 20.0 11.0
		vertex 5.0 20.0 12.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 7.0 20.0 11.0
		vertex 6.0 20.0 11.0
		vertex 7.0 20.0 12.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 7.0 20.0 12.0
		vertex 6.0 20.0 11.0
		vertex 6.0 20.0 12.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 8.0 20.0 11.0
		vertex 7.0 20.0 11.0
		vertex 8.0 20.0 12.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 8.0 20.0 12.0
		vertex 7.0 20.0 11.0
		vertex 7.0 20.0 12.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 9.0 20.0 11.0
		vertex 8.0 20.0 11.0
		vertex 9.0 20.0 12.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 9.0 20.0 12.0
		vertex 8.0 20.0 11.0
		vertex 8.0 20.0 12.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 10.0 20.0 11.0
		vertex 9.0 20.0 11.0
		vertex 10.0 20.0 12.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 10.0 20.0 12.0
		vertex 9.0 20.0 11.0
		vertex 9.0 20.0 12.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 1.0 20.0 12.0
		vertex 0.0 20.0 12.0
		vertex 1.0 20.0 13.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 1.0 20.0 13.0
		vertex 0.0 20.0 12.0
		vertex 0.0 20.0 13.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 2.0 20.0 12.0
		vertex 1.0 20.0 12.0
		vertex 2.0 20.0 13.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 2.0 20.0 13.0
		vertex 1.0 20.0 12.0
		vertex 1.0 20.0 13.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 3.0 20.0 12.0
		vertex 2.0 20.0 12.0
		vertex 3.0 20.0 13.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 3.0 20.0 13.0
		vertex 2.0 20.0 12.0
		vertex 2.0 20.0 13.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 4.0 20.0 12.0
		vertex 3.0 20.0 12.0
		vertex 4.0 20.0 13.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 4.0 20.0 13.0
		vertex 3.0 20.0 12.0
		vertex 3.0 20.0 13.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 5.0 20.0 12.0
		vertex 4.0 20.0 12.0
		vertex 5.0 20.0 13.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 5.0 20.0 13.0
		vertex 4.0 20.0 12.0
		vertex 4.0 20.0 13.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 6.0 20.0 12.0
		vertex 5.0 20.0 12.0
		vertex 6.0 20.0 13.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 6.0 20.0 13.0
		vertex 5.0 20.0 12.0
		vertex 5.0 20.0 13.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 7.0 20.0 12.0
		vertex 6.0 20.0 12.0
		vertex 7.0 20.0 13.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 7.0 20.0 13.0
		vertex 6.0 20.0 12.0
		vertex 6.0 20.0 13.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 8.0 20.0 12.0
		vertex 7.0 20.0 12.0
		vertex 8.0 20.0 13.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 8.0 20.0 13.0
		vertex 7.0 20.0 12.0
		vertex 7.0 20.0 13.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 9.0 20.0 12.0
		vertex 8.0 20.0 12.0
		vertex 9.0 20.0 13.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 9.0 20.0 13.0
		vertex 8.0 20.0 12.0
		vertex 8.0 20.0 13.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 10.0 20.0 12.0
		vertex 9.0 20.0 12.0
		vertex 10.0 20.0 13.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 10.0 20.0 13.0
		vertex 9.0 20.0 12.0
		vertex 9.0 20.0 13.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 1.0 20.0 13.0
		vertex 0.0 20.0 13.0
		vertex 1.0 20.0 14.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 1.0 20.0 14.0
		vertex 0.0 20.0 13.0
		vertex 0.0 20.0 14.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 2.0 20.0 13.0
		vertex 1.0 20.0 13.0
		vertex 2.0 20.0 14.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 2.0 20.0 14.0
		vertex 1.0 20.0 13.0
		vertex 1.0 20.0 14.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 3.0 20.0 13.0
		vertex 2.0 20.0 13.0
		vertex 3.0 20.0 14.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 3.0 20.0 14.0
		vertex 2.0 20.0 13.0
		vertex 2.0 20.0 14.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 4.0 20.0 13.0
		vertex 3.0 20.0 13.0
		vertex 4.0 20.0 14.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 4.0 20.0 14.0
		vertex 3.0 20.0 13.0
		vertex 3.0 20.0 14.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 5.0 20.0 13.0
		vertex 4.0 20.0 13.0
		vertex 5.0 20.0 14.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 5.0 20.0 14.0
		vertex 4.0 20.0 13.0
		vertex 4.0 20.0 14.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 6.0 20.0 13.0
		vertex 5.0 20.0 13.0
		vertex 6.0 20.0 14.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 6.0 20.0 14.0
		vertex 5.0 20.0 13.0
		vertex 5.0 20.0 14.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 7.0 20.0 13.0
		vertex 6.0 20.0 13.0
		vertex 7.0 20.0 14.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 7.0 20.0 14.0
		vertex 6.0 20.0 13.0
		vertex 6.0 20.0 14.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 8.0 20.0 13.0
		vertex 7.0 20.0 13.0
		vertex 8.0 20.0 14.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 8.0 20.0 14.0
		vertex 7.0 20.0 13.0
		vertex 7.0 20.0 14.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 9.0 20.0 13.0
		vertex 8.0 20.0 13.0
		vertex 9.0 20.0 14.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 9.0 20.0 14.0
		vertex 8.0 20.0 13.0
		vertex 8.0 20.0 14.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 10.0 20.0 13.0
		vertex 9.0 20.0 13.0
		vertex 10.0 20.0 14.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 10.0 20.0 14.0
		vertex 9.0 20.0 13.0
		vertex 9.0 20.0 14.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 1.0 20.0 14.0
		vertex 0.0 20.0 14.0
		vertex 1.0 20.0 15.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 1.0 20.0 15.0
		vertex 0.0 20.0 14.0
		vertex 0.0 20.0 15.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 2.0 20.0 14.0
		vertex 1.0 20.0 14.0
		vertex 2.0 20.0 15.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 2.0 20.0 15.0
		vertex 1.0 20.0 14.0
		vertex 1.0 20.0 15.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 3.0 20.0 14.0
		vertex 2.0 20.0 14.0
		vertex 3.0 20.0 15.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 3.0 20.0 15.0
		vertex 2.0 20.0 14.0
		vertex 2.0 20.0 15.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 4.0 20.0 14.0
		vertex 3.0 20.0 14.0
		vertex 4.0 20.0 15.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 4.0 20.0 15.0
		vertex 3.0 20.0 14.0
		vertex 3.0 20.0 15.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 5.0 20.0 14.0
		vertex 4.0 20.0 14.0
		vertex 5.0 20.0 15.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 5.0 20.0 15.0
		vertex 4.0 20.0 14.0
		vertex 4.0 20.0 15.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 6.0 20.0 14.0
		vertex 5.0 20.0 14.0
		vertex 6.0 20.0 15.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 6.0 20.0 15.0
		vertex 5.0 20.0 14.0
		vertex 5.0 20.0 15.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 7.0 20.0 14.0
		vertex 6.0 20.0 14.0
		vertex 7.0 20.0 15.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 7.0 20.0 15.0
		vertex 6.0 20.0 14.0
		vertex 6.0 20.0 15.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 8.0 20.0 14.0
		vertex 7.0 20.0 14.0
		vertex 8.0 20.0 15.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 8.0 20.0 15.0
		vertex 7.0 20.0 14.0
		vertex 7.0 20.0 15.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 9.0 20.0 14.0
		vertex 8.0 20.0 14.0
		vertex 9.0 20.0 15.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 9.0 20.0 15.0
		vertex 8.0 20.0 14.0
		vertex 8.0 20.0 15.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 10.0 20.0 14.0
		vertex 9.0 20.0 14.0
		vertex 10.0 20.0 15.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 10.0 20.0 15.0
		vertex 9.0 20.0 14.0
		vertex 9.0 20.0 15.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 1.0 20.0 15.0
		vertex 0.0 20.0 15.0
		vertex 1.0 20.0 16.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 1.0 20.0 16.0
		vertex 0.0 20.0 15.0
		vertex 0.0 20.0 16.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 2.0 20.0 15.0
		vertex 1.0 20.0 15.0
		vertex 2.0 20.0 16.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 2.0 20.0 16.0
		vertex 1.0 20.0 15.0
		vertex 1.0 20.0 16.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 3.0 20.0 15.0
		vertex 2.0 20.0 15.0
		vertex 3.0 20.0 16.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 3.0 20.0 16.0
		vertex 2.0 20.0 15.0
		vertex 2.0 20.0 16.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 4.0 20.0 15.0
		vertex 3.0 20.0 15.0
		vertex 4.0 20.0 16.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 4.0 20.0 16.0
		vertex 3.0 20.0 15.0
		vertex 3.0 20.0 16.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 5.0 20.0 15.0
		vertex 4.0 20.0 15.0
		vertex 5.0 20.0 16.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 5.0 20.0 16.0
		vertex 4.0 20.0 15.0
		vertex 4.0 20.0 16.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 6.0 20.0 15.0
		vertex 5.0 20.0 15.0
		vertex 6.0 20.0 16.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 6.0 20.0 16.0
		vertex 5.0 20.0 15.0
		vertex 5.0 20.0 16.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 7.0 20.0 15.0
		vertex 6.0 20.0 15.0
		vertex 7.0 20.0 16.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 7.0 20.0 16.0
		vertex 6.0 20.0 15.0
		vertex 6.0 20.0 16.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 8.0 20.0 15.0
		vertex 7.0 20.0 15.0
		vertex 8.0 20.0 16.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 8.0 20.0 16.0
		vertex 7.0 20.0 15.0
		vertex 7.0 20.0 16.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 9.0 20.0 15.0
		vertex 8.0 20.0 15.0
		vertex 9.0 20.0 16.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 9.0 20.0 16.0
		vertex 8.0 20.0 15.0
		vertex 8.0 20.0 16.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 10.0 20.0 15.0
		vertex 9.0 20.0 15.0
		vertex 10.0 20.0 16.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 10.0 20.0 16.0
		vertex 9.0 20.0 15.0
		vertex 9.0 20.0 16.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 1.0 20.0 16.0
		vertex 0.0 20.0 16.0
		vertex 1.0 20.0 17.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 1.0 20.0 17.0
		vertex 0.0 20.0 16.0
		vertex 0.0 20.0 17.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 2.0 20.0 16.0
		vertex 1.0 20.0 16.0
		vertex 2.0 20.0 17.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 2.0 20.0 17.0
		vertex 1.0 20.0 16.0
		vertex 1.0 20.0 17.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 3.0 20.0 16.0
		vertex 2.0 20.0 16.0
		vertex 3.0 20.0 17.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 3.0 20.0 17.0
		vertex 2.0 20.0 16.0
		vertex 2.0 20.0 17.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 4.0 20.0 16.0
		vertex 3.0 20.0 16.0
		vertex 4.0 20.0 17.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 4.0 20.0 17.0
		vertex 3.0 20.0 16.0
		vertex 3.0 20.0 17.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 5.0 20.0 16.0
		vertex 4.0 20.0 16.0
		vertex 5.0 20.0 17.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 5.0 20.0 17.0
		vertex 4.0 20.0 16.0
		vertex 4.0 20.0 17.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 6.0 20.0 16.0
		vertex 5.0 20.0 16.0
		vertex 6.0 20.0 17.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 6.0 20.0 17.0
		vertex 5.0 20.0 16.0
		vertex 5.0 20.0 17.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 7.0 20.0 16.0
		vertex 6.0 20.0 16.0
		vertex 7.0 20.0 17.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 7.0 20.0 17.0
		vertex 6.0 20.0 16.0
		vertex 6.0 20.0 17.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 8.0 20.0 16.0
		vertex 7.0 20.0 16.0
		vertex 8.0 20.0 17.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 8.0 20.0 17.0
		vertex 7.0 20.0 16.0
		vertex 7.0 20.0 17.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 9.0 20.0 16.0
		vertex 8.0 20.0 16.0
		vertex 9.0 20.0 17.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 9.0 20.0 17.0
		vertex 8.0 20.0 16.0
		vertex 8.0 20.0 17.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 10.0 20.0 16.0
		vertex 9.0 20.0 16.0
		vertex 10.0 20.0 17.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 10.0 20.0 17.0
		vertex 9.0 20.0 16.0
		vertex 9.0 20.0 17.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 1.0 20.0 17.0
		vertex 0.0 20.0 17.0
		vertex 1.0 20.0 18.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 1.0 20.0 18.0
		vertex 0.0 20.0 17.0
		vertex 0.0 20.0 18.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 2.0 20.0 17.0
		vertex 1.0 20.0 17.0
		vertex 2.0 20.0 18.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 2.0 20.0 18.0
		vertex 1.0 20.0 17.0
		vertex 1.0 20.0 18.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 3.0 20.0 17.0
		vertex 2.0 20.0 17.0
		vertex 3.0 20.0 18.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 3.0 20.0 18.0
		vertex 2.0 20.0 17.0
		vertex 2.0 20.0 18.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 4.0 20.0 17.0
		vertex 3.0 20.0 17.0
		vertex 4.0 20.0 18.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 4.0 20.0 18.0
		vertex 3.0 20.0 17.0
		vertex 3.0 20.0 18.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 5.0 20.0 17.0
		vertex 4.0 20.0 17.0
		vertex 5.0 20.0 18.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 5.0 20.0 18.0
		vertex 4.0 20.0 17.0
		vertex 4.0 20.0 18.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 6.0 20.0 17.0
		vertex 5.0 20.0 17.0
		vertex 6.0 20.0 18.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 6.0 20.0 18.0
		vertex 5.0 20.0 17.0
		vertex 5.0 20.0 18.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 7.0 20.0 17.0
		vertex 6.0 20.0 17.0
		vertex 7.0 20.0 18.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 7.0 20.0 18.0
		vertex 6.0 20.0 17.0
		vertex 6.0 20.0 18.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 8.0 20.0 17.0
		vertex 7.0 20.0 17.0
		vertex 8.0 20.0 18.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 8.0 20.0 18.0
		vertex 7.0 20.0 17.0
		vertex 7.0 20.0 18.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 9.0 20.0 17.0
		vertex 8.0 20.0 17.0
		vertex 9.0 20.0 18.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 9.0 20.0 18.0
		vertex 8.0 20.0 17.0
		vertex 8.0 20.0 18.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 10.0 20.0 17.0
		vertex 9.0 20.0 17.0
		vertex 10.0 20.0 18.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 10.0 20.0 18.0
		vertex 9.0 20.0 17.0
		vertex 9.0 20.0 18.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 1.0 20.0 18.0
		vertex 0.0 20.0 18.0
		vertex 1.0 20.0 19.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 1.0 20.0 19.0
		vertex 0.0 20.0 18.0
		vertex 0.0 20.0 19.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 2.0 20.0 18.0
		vertex 1.0 20.0 18.0
		vertex 2.0 20.0 19.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 2.0 20.0 19.0
		vertex 1.0 20.0 18.0
		vertex 1.0 20.0 19.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 3.0 20.0 18.0
		vertex 2.0 20.0 18.0
		vertex 3.0 20.0 19.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 3.0 20.0 19.0
		vertex 2.0 20.0 18.0
		vertex 2.0 20.0 19.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 4.0 20.0 18.0
		vertex 3.0 20.0 18.0
		vertex 4.0 20.0 19.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 4.0 20.0 19.0
		vertex 3.0 20.0 18.0
		vertex 3.0 20.0 19.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 5.0 20.0 18.0
		vertex 4.0 20.0 18.0
		vertex 5.0 20.0 19.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 5.0 20.0 19.0
		vertex 4.0 20.0 18.0
		vertex 4.0 20.0 19.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 6.0 20.0 18.0
		vertex 5.0 20.0 18.0
		vertex 6.0 20.0 19.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 6.0 20.0 19.0
		vertex 5.0 20.0 18.0
		vertex 5.0 20.0 19.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 7.0 20.0 18.0
		vertex 6.0 20.0 18.0
		vertex 7.0 20.0 19.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 7.0 20.0 19.0
		vertex 6.0 20.0 18.0
		vertex 6.0 20.0 19.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 8.0 20.0 18.0
		vertex 7.0 20.0 18.0
		vertex 8.0 20.0 19.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 8.0 20.0 19.0
		vertex 7.0 20.0 18.0
		vertex 7.0 20.0 19.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 9.0 20.0 18.0
		vertex 8.0 20.0 18.0
		vertex 9.0 20.0 19.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 9.0 20.0 19.0
		vertex 8.0 20.0 18.0
		vertex 8.0 20.0 19.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 10.0 20.0 18.0
		vertex 9.0 20.0 18.0
		vertex 10.0 20.0 19.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 10.0 20.0 19.0
		vertex 9.0 20.0 18.0
		vertex 9.0 20.0 19.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 1.0 20.0 19.0
		vertex 0.0 20.0 19.0
		vertex 1.0 20.0 20.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 1.0 20.0 20.0
		vertex 0.0 20.0 19.0
		vertex 0.0 20.0 20.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 2.0 20.0 19.0
		vertex 1.0 20.0 19.0
		vertex 2.0 20.0 20.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 2.0 20.0 20.0
		vertex 1.0 20.0 19.0
		vertex 1.0 20.0 20.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 3.0 20.0 19.0
		vertex 2.0 20.0 19.0
		vertex 3.0 20.0 20.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 3.0 20.0 20.0
		vertex 2.0 20.0 19.0
		vertex 2.0 20.0 20.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 4.0 20.0 19.0
		vertex 3.0 20.0 19.0
		vertex 4.0 20.0 20.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 4.0 20.0 20.0
		vertex 3.0 20.0 19.0
		vertex 3.0 20.0 20.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 5.0 20.0 19.0
		vertex 4.0 20.0 19.0
		vertex 5.0 20.0 20.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 5.0 20.0 20.0
		vertex 4.0 20.0 19.0
		vertex 4.0 20.0 20.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 6.0 20.0 19.0
		vertex 5.0 20.0 19.0
		vertex 6.0 20.0 20.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 6.0 20.0 20.0
		vertex 5.0 20.0 19.0
		vertex 5.0 20.0 20.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 7.0 20.0 19.0
		vertex 6.0 20.0 19.0
		vertex 7.0 20.0 20.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 7.0 20.0 20.0
		vertex 6.0 20.0 19.0
		vertex 6.0 20.0 20.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 8.0 20.0 19.0
		vertex 7.0 20.0 19.0
		vertex 8.0 20.0 20.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 8.0 20.0 20.0
		vertex 7.0 20.0 19.0
		vertex 7.0 20.0 20.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 9.0 20.0 19.0
		vertex 8.0 20.0 19.0
		vertex 9.0 20.0 20.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 9.0 20.0 20.0
		vertex 8.0 20.0 19.0
		vertex 8.0 20.0 20.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 10.0 20.0 19.0
		vertex 9.0 20.0 19.0
		vertex 10.0 20.0 20.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 10.0 20.0 20.0
		vertex 9.0 20.0 19.0
		vertex 9.0 20.0 20.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 1.0 20.0 20.0
		vertex 0.0 20.0 20.0
		vertex 1.0 20.0 21.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 1.0 20.0 21.0
		vertex 0.0 20.0 20.0
		vertex 0.0 20.0 21.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 2.0 20.0 20.0
		vertex 1.0 20.0 20.0
		vertex 2.0 20.0 21.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 2.0 20.0 21.0
		vertex 1.0 20.0 20.0
		vertex 1.0 20.0 21.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 3.0 20.0 20.0
		vertex 2.0 20.0 20.0
		vertex 3.0 20.0 21.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 3.0 20.0 21.0
		vertex 2.0 20.0 20.0
		vertex 2.0 20.0 21.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 4.0 20.0 20.0
		vertex 3.0 20.0 20.0
		vertex 4.0 20.0 21.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 4.0 20.0 21.0
		vertex 3.0 20.0 20.0
		vertex 3.0 20.0 21.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 5.0 20.0 20.0
		vertex 4.0 20.0 20.0
		vertex 5.0 20.0 21.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 5.0 20.0 21.0
		vertex 4.0 20.0 20.0
		vertex 4.0 20.0 21.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 6.0 20.0 20.0
		vertex 5.0 20.0 20.0
		vertex 6.0 20.0 21.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 6.0 20.0 21.0
		vertex 5.0 20.0 20.0
		vertex 5.0 20.0 21.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 7.0 20.0 20.0
		vertex 6.0 20.0 20.0
		vertex 7.0 20.0 21.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 7.0 20.0 21.0
		vertex 6.0 20.0 20.0
		vertex 6.0 20.0 21.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 8.0 20.0 20.0
		vertex 7.0 20.0 20.0
		vertex 8.0 20.0 21.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 8.0 20.0 21.0
		vertex 7.0 20.0 20.0
		vertex 7.0 20.0 21.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 9.0 20.0 20.0
		vertex 8.0 20.0 20.0
		vertex 9.0 20.0 21.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 9.0 20.0 21.0
		vertex 8.0 20.0 20.0
		vertex 8.0 20.0 21.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 10.0 20.0 20.0
		vertex 9.0 20.0 20.0
		vertex 10.0 20.0 21.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 10.0 20.0 21.0
		vertex 9.0 20.0 20.0
		vertex 9.0 20.0 21.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 1.0 20.0 21.0
		vertex 0.0 20.0 21.0
		vertex 1.0 20.0 22.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 1.0 20.0 22.0
		vertex 0.0 20.0 21.0
		vertex 0.0 20.0 22.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 2.0 20.0 21.0
		vertex 1.0 20.0 21.0
		vertex 2.0 20.0 22.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 2.0 20.0 22.0
		vertex 1.0 20.0 21.0
		vertex 1.0 20.0 22.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 3.0 20.0 21.0
		vertex 2.0 20.0 21.0
		vertex 3.0 20.0 22.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 3.0 20.0 22.0
		vertex 2.0 20.0 21.0
		vertex 2.0 20.0 22.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 4.0 20.0 21.0
		vertex 3.0 20.0 21.0
		vertex 4.0 20.0 22.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 4.0 20.0 22.0
		vertex 3.0 20.0 21.0
		vertex 3.0 20.0 22.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 5.0 20.0 21.0
		vertex 4.0 20.0 21.0
		vertex 5.0 20.0 22.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 5.0 20.0 22.0
		vertex 4.0 20.0 21.0
		vertex 4.0 20.0 22.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 6.0 20.0 21.0
		vertex 5.0 20.0 21.0
		vertex 6.0 20.0 22.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 6.0 20.0 22.0
		vertex 5.0 20.0 21.0
		vertex 5.0 20.0 22.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 7.0 20.0 21.0
		vertex 6.0 20.0 21.0
		vertex 7.0 20.0 22.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 7.0 20.0 22.0
		vertex 6.0 20.0 21.0
		vertex 6.0 20.0 22.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 8.0 20.0 21.0
		vertex 7.0 20.0 21.0
		vertex 8.0 20.0 22.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 8.0 20.0 22.0
		vertex 7.0 20.0 21.0
		vertex 7.0 20.0 22.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 9.0 20.0 21.0
		vertex 8.0 20.0 21.0
		vertex 9.0 20.0 22.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 9.0 20.0 22.0
		vertex 8.0 20.0 21.0
		vertex 8.0 20.0 22.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 10.0 20.0 21.0
		vertex 9.0 20.0 21.0
		vertex 10.0 20.0 22.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 10.0 20.0 22.0
		vertex 9.0 20.0 21.0
		vertex 9.0 20.0 22.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 1.0 20.0 22.0
		vertex 0.0 20.0 22.0
		vertex 1.0 20.0 23.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 1.0 20.0 23.0
		vertex 0.0 20.0 22.0
		vertex 0.0 20.0 23.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 2.0 20.0 22.0
		vertex 1.0 20.0 22.0
		vertex 2.0 20.0 23.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 2.0 20.0 23.0
		vertex 1.0 20.0 22.0
		vertex 1.0 20.0 23.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 3.0 20.0 22.0
		vertex 2.0 20.0 22.0
		vertex 3.0 20.0 23.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 3.0 20.0 23.0
		vertex 2.0 20.0 22.0
		vertex 2.0 20.0 23.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 4.0 20.0 22.0
		vertex 3.0 20.0 22.0
		vertex 4.0 20.0 23.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 4.0 20.0 23.0
		vertex 3.0 20.0 22.0
		vertex 3.0 20.0 23.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 5.0 20.0 22.0
		vertex 4.0 20.0 22.0
		vertex 5.0 20.0 23.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 5.0 20.0 23.0
		vertex 4.0 20.0 22.0
		vertex 4.0 20.0 23.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 6.0 20.0 22.0
		vertex 5.0 20.0 22.0
		vertex 6.0 20.0 23.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 6.0 20.0 23.0
		vertex 5.0 20.0 22.0
		vertex 5.0 20.0 23.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 7.0 20.0 22.0
		vertex 6.0 20.0 22.0
		vertex 7.0 20.0 23.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 7.0 20.0 23.0
		vertex 6.0 20.0 22.0
		vertex 6.0 20.0 23.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 8.0 20.0 22.0
		vertex 7.0 20.0 22.0
		vertex 8.0 20.0 23.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 8.0 20.0 23.0
		vertex 7.0 20.0 22.0
		vertex 7.0 20.0 23.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 9.0 20.0 22.0
		vertex 8.0 20.0 22.0
		vertex 9.0 20.0 23.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 9.0 20.0 23.0
		vertex 8.0 20.0 22.0
		vertex 8.0 20.0 23.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 10.0 20.0 22.0
		vertex 9.0 20.0 22.0
		vertex 10.0 20.0 23.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 10.0 20.0 23.0
		vertex 9.0 20.0 22.0
		vertex 9.0 20.0 23.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 1.0 20.0 23.0
		vertex 0.0 20.0 23.0
		vertex 1.0 20.0 24.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 1.0 20.0 24.0
		vertex 0.0 20.0 23.0
		vertex 0.0 20.0 24.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 2.0 20.0 23.0
		vertex 1.0 20.0 23.0
		vertex 2.0 20.0 24.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 2.0 20.0 24.0
		vertex 1.0 20.0 23.0
		vertex 1.0 20.0 24.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 3.0 20.0 23.0
		vertex 2.0 20.0 23.0
		vertex 3.0 20.0 24.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 3.0 20.0 24.0
		vertex 2.0 20.0 23.0
		vertex 2.0 20.0 24.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 4.0 20.0 23.0
		vertex 3.0 20.0 23.0
		vertex 4.0 20.0 24.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 4.0 20.0 24.0
		vertex 3.0 20.0 23.0
		vertex 3.0 20.0 24.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 5.0 20.0 23.0
		vertex 4.0 20.0 23.0
		vertex 5.0 20.0 24.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 5.0 20.0 24.0
		vertex 4.0 20.0 23.0
		vertex 4.0 20.0 24.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 6.0 20.0 23.0
		vertex 5.0 20.0 23.0
		vertex 6.0 20.0 24.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 6.0 20.0 24.0
		vertex 5.0 20.0 23.0
		vertex 5.0 20.0 24.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 7.0 20.0 23.0
		vertex 6.0 20.0 23.0
		vertex 7.0 20.0 24.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 7.0 20.0 24.0
		vertex 6.0 20.0 23.0
		vertex 6.0 20.0 24.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 8.0 20.0 23.0
		vertex 7.0 20.0 23.0
		vertex 8.0 20.0 24.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 8.0 20.0 24.0
		vertex 7.0 20.0 23.0
		vertex 7.0 20.0 24.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 9.0 20.0 23.0
		vertex 8.0 20.0 23.0
		vertex 9.0 20.0 24.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 9.0 20.0 24.0
		vertex 8.0 20.0 23.0
		vertex 8.0 20.0 24.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 10.0 20.0 23.0
		vertex 9.0 20.0 23.0
		vertex 10.0 20.0 24.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 10.0 20.0 24.0
		vertex 9.0 20.0 23.0
		vertex 9.0 20.0 24.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 1.0 20.0 24.0
		vertex 0.0 20.0 24.0
		vertex 1.0 20.0 25.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 1.0 20.0 25.0
		vertex 0.0 20.0 24.0
		vertex 0.0 20.0 25.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 2.0 20.0 24.0
		vertex 1.0 20.0 24.0
		vertex 2.0 20.0 25.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 2.0 20.0 25.0
		vertex 1.0 20.0 24.0
		vertex 1.0 20.0 25.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 3.0 20.0 24.0
		vertex 2.0 20.0 24.0
		vertex 3.0 20.0 25.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 3.0 20.0 25.0
		vertex 2.0 20.0 24.0
		vertex 2.0 20.0 25.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 4.0 20.0 24.0
		vertex 3.0 20.0 24.0
		vertex 4.0 20.0 25.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 4.0 20.0 25.0
		vertex 3.0 20.0 24.0
		vertex 3.0 20.0 25.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 5.0 20.0 24.0
		vertex 4.0 20.0 24.0
		vertex 5.0 20.0 25.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 5.0 20.0 25.0
		vertex 4.0 20.0 24.0
		vertex 4.0 20.0 25.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 6.0 20.0 24.0
		vertex 5.0 20.0 24.0
		vertex 6.0 20.0 25.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 6.0 20.0 25.0
		vertex 5.0 20.0 24.0
		vertex 5.0 20.0 25.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 7.0 20.0 24.0
		vertex 6.0 20.0 24.0
		vertex 7.0 20.0 25.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 7.0 20.0 25.0
		vertex 6.0 20.0 24.0
		vertex 6.0 20.0 25.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 8.0 20.0 24.0
		vertex 7.0 20.0 24.0
		vertex 8.0 20.0 25.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 8.0 20.0 25.0
		vertex 7.0 20.0 24.0
		vertex 7.0 20.0 25.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 9.0 20.0 24.0
		vertex 8.0 20.0 24.0
		vertex 9.0 20.0 25.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 9.0 20.0 25.0
		vertex 8.0 20.0 24.0
		vertex 8.0 20.0 25.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 10.0 20.0 24.0
		vertex 9.0 20.0 24.0
		vertex 10.0 20.0 25.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 10.0 20.0 25.0
		vertex 9.0 20.0 24.0
		vertex 9.0 20.0 25.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 1.0 20.0 25.0
		vertex 0.0 20.0 25.0
		vertex 1.0 20.0 26.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 1.0 20.0 26.0
		vertex 0.0 20.0 25.0
		vertex 0.0 20.0 26.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 2.0 20.0 25.0
		vertex 1.0 20.0 25.0
		vertex 2.0 20.0 26.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 2.0 20.0 26.0
		vertex 1.0 20.0 25.0
		vertex 1.0 20.0 26.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 3.0 20.0 25.0
		vertex 2.0 20.0 25.0
		vertex 3.0 20.0 26.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 3.0 20.0 26.0
		vertex 2.0 20.0 25.0
		vertex 2.0 20.0 26.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 4.0 20.0 25.0
		vertex 3.0 20.0 25.0
		vertex 4.0 20.0 26.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 4.0 20.0 26.0
		vertex 3.0 20.0 25.0
		vertex 3.0 20.0 26.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 5.0 20.0 25.0
		vertex 4.0 20.0 25.0
		vertex 5.0 20.0 26.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 5.0 20.0 26.0
		vertex 4.0 20.0 25.0
		vertex 4.0 20.0 26.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 6.0 20.0 25.0
		vertex 5.0 20.0 25.0
		vertex 6.0 20.0 26.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 6.0 20.0 26.0
		vertex 5.0 20.0 25.0
		vertex 5.0 20.0 26.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 7.0 20.0 25.0
		vertex 6.0 20.0 25.0
		vertex 7.0 20.0 26.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 7.0 20.0 26.0
		vertex 6.0 20.0 25.0
		vertex 6.0 20.0 26.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 8.0 20.0 25.0
		vertex 7.0 20.0 25.0
		vertex 8.0 20.0 26.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 8.0 20.0 26.0
		vertex 7.0 20.0 25.0
		vertex 7.0 20.0 26.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 9.0 20.0 25.0
		vertex 8.0 20.0 25.0
		vertex 9.0 20.0 26.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 9.0 20.0 26.0
		vertex 8.0 20.0 25.0
		vertex 8.0 20.0 26.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 10.0 20.0 25.0
		vertex 9.0 20.0 25.0
		vertex 10.0 20.0 26.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 10.0 20.0 26.0
		vertex 9.0 20.0 25.0
		vertex 9.0 20.0 26.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 1.0 20.0 26.0
		vertex 0.0 20.0 26.0
		vertex 1.0 20.0 27.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 1.0 20.0 27.0
		vertex 0.0 20.0 26.0
		vertex 0.0 20.0 27.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 2.0 20.0 26.0
		vertex 1.0 20.0 26.0
		vertex 2.0 20.0 27.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 2.0 20.0 27.0
		vertex 1.0 20.0 26.0
		vertex 1.0 20.0 27.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 3.0 20.0 26.0
		vertex 2.0 20.0 26.0
		vertex 3.0 20.0 27.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 3.0 20.0 27.0
		vertex 2.0 20.0 26.0
		vertex 2.0 20.0 27.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 4.0 20.0 26.0
		vertex 3.0 20.0 26.0
		vertex 4.0 20.0 27.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 4.0 20.0 27.0
		vertex 3.0 20.0 26.0
		vertex 3.0 20.0 27.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 5.0 20.0 26.0
		vertex 4.0 20.0 26.0
		vertex 5.0 20.0 27.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 5.0 20.0 27.0
		vertex 4.0 20.0 26.0
		vertex 4.0 20.0 27.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 6.0 20.0 26.0
		vertex 5.0 20.0 26.0
		vertex 6.0 20.0 27.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 6.0 20.0 27.0
		vertex 5.0 20.0 26.0
		vertex 5.0 20.0 27.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 7.0 20.0 26.0
		vertex 6.0 20.0 26.0
		vertex 7.0 20.0 27.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 7.0 20.0 27.0
		vertex 6.0 20.0 26.0
		vertex 6.0 20.0 27.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 8.0 20.0 26.0
		vertex 7.0 20.0 26.0
		vertex 8.0 20.0 27.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 8.0 20.0 27.0
		vertex 7.0 20.0 26.0
		vertex 7.0 20.0 27.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 9.0 20.0 26.0
		vertex 8.0 20.0 26.0
		vertex 9.0 20.0 27.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 9.0 20.0 27.0
		vertex 8.0 20.0 26.0
		vertex 8.0 20.0 27.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 10.0 20.0 26.0
		vertex 9.0 20.0 26.0
		vertex 10.0 20.0 27.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 10.0 20.0 27.0
		vertex 9.0 20.0 26.0
		vertex 9.0 20.0 27.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 1.0 20.0 27.0
		vertex 0.0 20.0 27.0
		vertex 1.0 20.0 28.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 1.0 20.0 28.0
		vertex 0.0 20.0 27.0
		vertex 0.0 20.0 28.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 2.0 20.0 27.0
		vertex 1.0 20.0 27.0
		vertex 2.0 20.0 28.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 2.0 20.0 28.0
		vertex 1.0 20.0 27.0
		vertex 1.0 20.0 28.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 3.0 20.0 27.0
		vertex 2.0 20.0 27.0
		vertex 3.0 20.0 28.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 3.0 20.0 28.0
		vertex 2.0 20.0 27.0
		vertex 2.0 20.0 28.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 4.0 20.0 27.0
		vertex 3.0 20.0 27.0
		vertex 4.0 20.0 28.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 4.0 20.0 28.0
		vertex 3.0 20.0 27.0
		vertex 3.0 20.0 28.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 5.0 20.0 27.0
		vertex 4.0 20.0 27.0
		vertex 5.0 20.0 28.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 5.0 20.0 28.0
		vertex 4.0 20.0 27.0
		vertex 4.0 20.0 28.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 6.0 20.0 27.0
		vertex 5.0 20.0 27.0
		vertex 6.0 20.0 28.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 6.0 20.0 28.0
		vertex 5.0 20.0 27.0
		vertex 5.0 20.0 28.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 7.0 20.0 27.0
		vertex 6.0 20.0 27.0
		vertex 7.0 20.0 28.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 7.0 20.0 28.0
		vertex 6.0 20.0 27.0
		vertex 6.0 20.0 28.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 8.0 20.0 27.0
		vertex 7.0 20.0 27.0
		vertex 8.0 20.0 28.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 8.0 20.0 28.0
		vertex 7.0 20.0 27.0
		vertex 7.0 20.0 28.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 9.0 20.0 27.0
		vertex 8.0 20.0 27.0
		vertex 9.0 20.0 28.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 9.0 20.0 28.0
		vertex 8.0 20.0 27.0
		vertex 8.0 20.0 28.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 10.0 20.0 27.0
		vertex 9.0 20.0 27.0
		vertex 10.0 20.0 28.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 10.0 20.0 28.0
		vertex 9.0 20.0 27.0
		vertex 9.0 20.0 28.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 1.0 20.0 28.0
		vertex 0.0 20.0 28.0
		vertex 1.0 20.0 29.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 1.0 20.0 29.0
		vertex 0.0 20.0 28.0
		vertex 0.0 20.0 29.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 2.0 20.0 28.0
		vertex 1.0 20.0 28.0
		vertex 2.0 20.0 29.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 2.0 20.0 29.0
		vertex 1.0 20.0 28.0
		vertex 1.0 20.0 29.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 3.0 20.0 28.0
		vertex 2.0 20.0 28.0
		vertex 3.0 20.0 29.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 3.0 20.0 29.0
		vertex 2.0 20.0 28.0
		vertex 2.0 20.0 29.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 4.0 20.0 28.0
		vertex 3.0 20.0 28.0
		vertex 4.0 20.0 29.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 4.0 20.0 29.0
		vertex 3.0 20.0 28.0
		vertex 3.0 20.0 29.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 5.0 20.0 28.0
		vertex 4.0 20.0 28.0
		vertex 5.0 20.0 29.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 5.0 20.0 29.0
		vertex 4.0 20.0 28.0
		vertex 4.0 20.0 29.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 6.0 20.0 28.0
		vertex 5.0 20.0 28.0
		vertex 6.0 20.0 29.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 6.0 20.0 29.0
		vertex 5.0 20.0 28.0
		vertex 5.0 20.0 29.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 7.0 20.0 28.0
		vertex 6.0 20.0 28.0
		vertex 7.0 20.0 29.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 7.0 20.0 29.0
		vertex 6.0 20.0 28.0
		vertex 6.0 20.0 29.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 8.0 20.0 28.0
		vertex 7.0 20.0 28.0
		vertex 8.0 20.0 29.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 8.0 20.0 29.0
		vertex 7.0 20.0 28.0
		vertex 7.0 20.0 29.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 9.0 20.0 28.0
		vertex 8.0 20.0 28.0
		vertex 9.0 20.0 29.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 9.0 20.0 29.0
		vertex 8.0 20.0 28.0
		vertex 8.0 20.0 29.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 10.0 20.0 28.0
		vertex 9.0 20.0 28.0
		vertex 10.0 20.0 29.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 10.0 20.0 29.0
		vertex 9.0 20.0 28.0
		vertex 9.0 20.0 29.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 1.0 20.0 29.0
		vertex 0.0 20.0 29.0
		vertex 1.0 20.0 30.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 1.0 20.0 30.0
		vertex 0.0 20.0 29.0
		vertex 0.0 20.0 30.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 2.0 20.0 29.0
		vertex 1.0 20.0 29.0
		vertex 2.0 20.0 30.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 2.0 20.0 30.0
		vertex 1.0 20.0 29.0
		vertex 1.0 20.0 30.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 3.0 20.0 29.0
		vertex 2.0 20.0 29.0
		vertex 3.0 20.0 30.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 3.0 20.0 30.0
		vertex 2.0 20.0 29.0
		vertex 2.0 20.0 30.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 4.0 20.0 29.0
		vertex 3.0 20.0 29.0
		vertex 4.0 20.0 30.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 4.0 20.0 30.0
		vertex 3.0 20.0 29.0
		vertex 3.0 20.0 30.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 5.0 20.0 29.0
		vertex 4.0 20.0 29.0
		vertex 5.0 20.0 30.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 5.0 20.0 30.0
		vertex 4.0 20.0 29.0
		vertex 4.0 20.0 30.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 6.0 20.0 29.0
		vertex 5.0 20.0 29.0
		vertex 6.0 20.0 30.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 6.0 20.0 30.0
		vertex 5.0 20.0 29.0
		vertex 5.0 20.0 30.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 7.0 20.0 29.0
		vertex 6.0 20.0 29.0
		vertex 7.0 20.0 30.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 7.0 20.0 30.0
		vertex 6.0 20.0 29.0
		vertex 6.0 20.0 30.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 8.0 20.0 29.0
		vertex 7.0 20.0 29.0
		vertex 8.0 20.0 30.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 8.0 20.0 30.0
		vertex 7.0 20.0 29.0
		vertex 7.0 20.0 30.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 9.0 20.0 29.0
		vertex 8.0 20.0 29.0
		vertex 9.0 20.0 30.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 9.0 20.0 30.0
		vertex 8.0 20.0 29.0
		vertex 8.0 20.0 30.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 10.0 20.0 29.0
		vertex 9.0 20.0 29.0
		vertex 10.0 20.0 30.0
	endloop
endfacet

facet normal 0.0 1.0 0.0
	outer loop
		vertex 10.0 20.0 30.0
		vertex 9.0 20.0 29.0
		vertex 9.0 20.0 30.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 1.0 0.0 0.0
		vertex 0.0 0.0 0.0
		vertex 1.0 1.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 1.0 1.0 0.0
		vertex 0.0 0.0 0.0
		vertex 0.0 1.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 2.0 0.0 0.0
		vertex 1.0 0.0 0.0
		vertex 2.0 1.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 2.0 1.0 0.0
		vertex 1.0 0.0 0.0
		vertex 1.0 1.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 3.0 0.0 0.0
		vertex 2.0 0.0 0.0
		vertex 3.0 1.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 3.0 1.0 0.0
		vertex 2.0 0.0 0.0
		vertex 2.0 1.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 4.0 0.0 0.0
		vertex 3.0 0.0 0.0
		vertex 4.0 1.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 4.0 1.0 0.0
		vertex 3.0 0.0 0.0
		vertex 3.0 1.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 5.0 0.0 0.0
		vertex 4.0 0.0 0.0
		vertex 5.0 1.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 5.0 1.0 0.0
		vertex 4.0 0.0 0.0
		vertex 4.0 1.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 6.0 0.0 0.0
		vertex 5.0 0.0 0.0
		vertex 6.0 1.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 6.0 1.0 0.0
		vertex 5.0 0.0 0.0
		vertex 5.0 1.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 7.0 0.0 0.0
		vertex 6.0 0.0 0.0
		vertex 7.0 1.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 7.0 1.0 0.0
		vertex 6.0 0.0 0.0
		vertex 6.0 1.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 8.0 0.0 0.0
		vertex 7.0 0.0 0.0
		vertex 8.0 1.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 8.0 1.0 0.0
		vertex 7.0 0.0 0.0
		vertex 7.0 1.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 9.0 0.0 0.0
		vertex 8.0 0.0 0.0
		vertex 9.0 1.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 9.0 1.0 0.0
		vertex 8.0 0.0 0.0
		vertex 8.0 1.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 10.0 0.0 0.0
		vertex 9.0 0.0 0.0
		vertex 10.0 1.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 10.0 1.0 0.0
		vertex 9.0 0.0 0.0
		vertex 9.0 1.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 1.0 1.0 0.0
		vertex 0.0 1.0 0.0
		vertex 1.0 2.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 1.0 2.0 0.0
		vertex 0.0 1.0 0.0
		vertex 0.0 2.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 2.0 1.0 0.0
		vertex 1.0 1.0 0.0
		vertex 2.0 2.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 2.0 2.0 0.0
		vertex 1.0 1.0 0.0
		vertex 1.0 2.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 3.0 1.0 0.0
		vertex 2.0 1.0 0.0
		vertex 3.0 2.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 3.0 2.0 0.0
		vertex 2.0 1.0 0.0
		vertex 2.0 2.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 4.0 1.0 0.0
		vertex 3.0 1.0 0.0
		vertex 4.0 2.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 4.0 2.0 0.0
		vertex 3.0 1.0 0.0
		vertex 3.0 2.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 5.0 1.0 0.0
		vertex 4.0 1.0 0.0
		vertex 5.0 2.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 5.0 2.0 0.0
		vertex 4.0 1.0 0.0
		vertex 4.0 2.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 6.0 1.0 0.0
		vertex 5.0 1.0 0.0
		vertex 6.0 2.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 6.0 2.0 0.0
		vertex 5.0 1.0 0.0
		vertex 5.0 2.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 7.0 1.0 0.0
		vertex 6.0 1.0 0.0
		vertex 7.0 2.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 7.0 2.0 0.0
		vertex 6.0 1.0 0.0
		vertex 6.0 2.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 8.0 1.0 0.0
		vertex 7.0 1.0 0.0
		vertex 8.0 2.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 8.0 2.0 0.0
		vertex 7.0 1.0 0.0
		vertex 7.0 2.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 9.0 1.0 0.0
		vertex 8.0 1.0 0.0
		vertex 9.0 2.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 9.0 2.0 0.0
		vertex 8.0 1.0 0.0
		vertex 8.0 2.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 10.0 1.0 0.0
		vertex 9.0 1.0 0.0
		vertex 10.0 2.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 10.0 2.0 0.0
		vertex 9.0 1.0 0.0
		vertex 9.0 2.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 1.0 2.0 0.0
		vertex 0.0 2.0 0.0
		vertex 1.0 3.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 1.0 3.0 0.0
		vertex 0.0 2.0 0.0
		vertex 0.0 3.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 2.0 2.0 0.0
		vertex 1.0 2.0 0.0
		vertex 2.0 3.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 2.0 3.0 0.0
		vertex 1.0 2.0 0.0
		vertex 1.0 3.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 3.0 2.0 0.0
		vertex 2.0 2.0 0.0
		vertex 3.0 3.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 3.0 3.0 0.0
		vertex 2.0 2.0 0.0
		vertex 2.0 3.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 4.0 2.0 0.0
		vertex 3.0 2.0 0.0
		vertex 4.0 3.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 4.0 3.0 0.0
		vertex 3.0 2.0 0.0
		vertex 3.0 3.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 5.0 2.0 0.0
		vertex 4.0 2.0 0.0
		vertex 5.0 3.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 5.0 3.0 0.0
		vertex 4.0 2.0 0.0
		vertex 4.0 3.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 6.0 2.0 0.0
		vertex 5.0 2.0 0.0
		vertex 6.0 3.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 6.0 3.0 0.0
		vertex 5.0 2.0 0.0
		vertex 5.0 3.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 7.0 2.0 0.0
		vertex 6.0 2.0 0.0
		vertex 7.0 3.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 7.0 3.0 0.0
		vertex 6.0 2.0 0.0
		vertex 6.0 3.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 8.0 2.0 0.0
		vertex 7.0 2.0 0.0
		vertex 8.0 3.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 8.0 3.0 0.0
		vertex 7.0 2.0 0.0
		vertex 7.0 3.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 9.0 2.0 0.0
		vertex 8.0 2.0 0.0
		vertex 9.0 3.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 9.0 3.0 0.0
		vertex 8.0 2.0 0.0
		vertex 8.0 3.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 10.0 2.0 0.0
		vertex 9.0 2.0 0.0
		vertex 10.0 3.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 10.0 3.0 0.0
		vertex 9.0 2.0 0.0
		vertex 9.0 3.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 1.0 3.0 0.0
		vertex 0.0 3.0 0.0
		vertex 1.0 4.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 1.0 4.0 0.0
		vertex 0.0 3.0 0.0
		vertex 0.0 4.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 2.0 3.0 0.0
		vertex 1.0 3.0 0.0
		vertex 2.0 4.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 2.0 4.0 0.0
		vertex 1.0 3.0 0.0
		vertex 1.0 4.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 3.0 3.0 0.0
		vertex 2.0 3.0 0.0
		vertex 3.0 4.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 3.0 4.0 0.0
		vertex 2.0 3.0 0.0
		vertex 2.0 4.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 4.0 3.0 0.0
		vertex 3.0 3.0 0.0
		vertex 4.0 4.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 4.0 4.0 0.0
		vertex 3.0 3.0 0.0
		vertex 3.0 4.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 5.0 3.0 0.0
		vertex 4.0 3.0 0.0
		vertex 5.0 4.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 5.0 4.0 0.0
		vertex 4.0 3.0 0.0
		vertex 4.0 4.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 6.0 3.0 0.0
		vertex 5.0 3.0 0.0
		vertex 6.0 4.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 6.0 4.0 0.0
		vertex 5.0 3.0 0.0
		vertex 5.0 4.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 7.0 3.0 0.0
		vertex 6.0 3.0 0.0
		vertex 7.0 4.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 7.0 4.0 0.0
		vertex 6.0 3.0 0.0
		vertex 6.0 4.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 8.0 3.0 0.0
		vertex 7.0 3.0 0.0
		vertex 8.0 4.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 8.0 4.0 0.0
		vertex 7.0 3.0 0.0
		vertex 7.0 4.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 9.0 3.0 0.0
		vertex 8.0 3.0 0.0
		vertex 9.0 4.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 9.0 4.0 0.0
		vertex 8.0 3.0 0.0
		vertex 8.0 4.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 10.0 3.0 0.0
		vertex 9.0 3.0 0.0
		vertex 10.0 4.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 10.0 4.0 0.0
		vertex 9.0 3.0 0.0
		vertex 9.0 4.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 1.0 4.0 0.0
		vertex 0.0 4.0 0.0
		vertex 1.0 5.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 1.0 5.0 0.0
		vertex 0.0 4.0 0.0
		vertex 0.0 5.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 2.0 4.0 0.0
		vertex 1.0 4.0 0.0
		vertex 2.0 5.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 2.0 5.0 0.0
		vertex 1.0 4.0 0.0
		vertex 1.0 5.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 3.0 4.0 0.0
		vertex 2.0 4.0 0.0
		vertex 3.0 5.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 3.0 5.0 0.0
		vertex 2.0 4.0 0.0
		vertex 2.0 5.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 4.0 4.0 0.0
		vertex 3.0 4.0 0.0
		vertex 4.0 5.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 4.0 5.0 0.0
		vertex 3.0 4.0 0.0
		vertex 3.0 5.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 5.0 4.0 0.0
		vertex 4.0 4.0 0.0
		vertex 5.0 5.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 5.0 5.0 0.0
		vertex 4.0 4.0 0.0
		vertex 4.0 5.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 6.0 4.0 0.0
		vertex 5.0 4.0 0.0
		vertex 6.0 5.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 6.0 5.0 0.0
		vertex 5.0 4.0 0.0
		vertex 5.0 5.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 7.0 4.0 0.0
		vertex 6.0 4.0 0.0
		vertex 7.0 5.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 7.0 5.0 0.0
		vertex 6.0 4.0 0.0
		vertex 6.0 5.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 8.0 4.0 0.0
		vertex 7.0 4.0 0.0
		vertex 8.0 5.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 8.0 5.0 0.0
		vertex 7.0 4.0 0.0
		vertex 7.0 5.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 9.0 4.0 0.0
		vertex 8.0 4.0 0.0
		vertex 9.0 5.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 9.0 5.0 0.0
		vertex 8.0 4.0 0.0
		vertex 8.0 5.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 10.0 4.0 0.0
		vertex 9.0 4.0 0.0
		vertex 10.0 5.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 10.0 5.0 0.0
		vertex 9.0 4.0 0.0
		vertex 9.0 5.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 1.0 5.0 0.0
		vertex 0.0 5.0 0.0
		vertex 1.0 6.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 1.0 6.0 0.0
		vertex 0.0 5.0 0.0
		vertex 0.0 6.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 2.0 5.0 0.0
		vertex 1.0 5.0 0.0
		vertex 2.0 6.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 2.0 6.0 0.0
		vertex 1.0 5.0 0.0
		vertex 1.0 6.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 3.0 5.0 0.0
		vertex 2.0 5.0 0.0
		vertex 3.0 6.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 3.0 6.0 0.0
		vertex 2.0 5.0 0.0
		vertex 2.0 6.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 4.0 5.0 0.0
		vertex 3.0 5.0 0.0
		vertex 4.0 6.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 4.0 6.0 0.0
		vertex 3.0 5.0 0.0
		vertex 3.0 6.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 5.0 5.0 0.0
		vertex 4.0 5.0 0.0
		vertex 5.0 6.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 5.0 6.0 0.0
		vertex 4.0 5.0 0.0
		vertex 4.0 6.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 6.0 5.0 0.0
		vertex 5.0 5.0 0.0
		vertex 6.0 6.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 6.0 6.0 0.0
		vertex 5.0 5.0 0.0
		vertex 5.0 6.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 7.0 5.0 0.0
		vertex 6.0 5.0 0.0
		vertex 7.0 6.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 7.0 6.0 0.0
		vertex 6.0 5.0 0.0
		vertex 6.0 6.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 8.0 5.0 0.0
		vertex 7.0 5.0 0.0
		vertex 8.0 6.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 8.0 6.0 0.0
		vertex 7.0 5.0 0.0
		vertex 7.0 6.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 9.0 5.0 0.0
		vertex 8.0 5.0 0.0
		vertex 9.0 6.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 9.0 6.0 0.0
		vertex 8.0 5.0 0.0
		vertex 8.0 6.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 10.0 5.0 0.0
		vertex 9.0 5.0 0.0
		vertex 10.0 6.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 10.0 6.0 0.0
		vertex 9.0 5.0 0.0
		vertex 9.0 6.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 1.0 6.0 0.0
		vertex 0.0 6.0 0.0
		vertex 1.0 7.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 1.0 7.0 0.0
		vertex 0.0 6.0 0.0
		vertex 0.0 7.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 2.0 6.0 0.0
		vertex 1.0 6.0 0.0
		vertex 2.0 7.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 2.0 7.0 0.0
		vertex 1.0 6.0 0.0
		vertex 1.0 7.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 3.0 6.0 0.0
		vertex 2.0 6.0 0.0
		vertex 3.0 7.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 3.0 7.0 0.0
		vertex 2.0 6.0 0.0
		vertex 2.0 7.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 4.0 6.0 0.0
		vertex 3.0 6.0 0.0
		vertex 4.0 7.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 4.0 7.0 0.0
		vertex 3.0 6.0 0.0
		vertex 3.0 7.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 5.0 6.0 0.0
		vertex 4.0 6.0 0.0
		vertex 5.0 7.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 5.0 7.0 0.0
		vertex 4.0 6.0 0.0
		vertex 4.0 7.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 6.0 6.0 0.0
		vertex 5.0 6.0 0.0
		vertex 6.0 7.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 6.0 7.0 0.0
		vertex 5.0 6.0 0.0
		vertex 5.0 7.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 7.0 6.0 0.0
		vertex 6.0 6.0 0.0
		vertex 7.0 7.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 7.0 7.0 0.0
		vertex 6.0 6.0 0.0
		vertex 6.0 7.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 8.0 6.0 0.0
		vertex 7.0 6.0 0.0
		vertex 8.0 7.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 8.0 7.0 0.0
		vertex 7.0 6.0 0.0
		vertex 7.0 7.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 9.0 6.0 0.0
		vertex 8.0 6.0 0.0
		vertex 9.0 7.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 9.0 7.0 0.0
		vertex 8.0 6.0 0.0
		vertex 8.0 7.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 10.0 6.0 0.0
		vertex 9.0 6.0 0.0
		vertex 10.0 7.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 10.0 7.0 0.0
		vertex 9.0 6.0 0.0
		vertex 9.0 7.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 1.0 7.0 0.0
		vertex 0.0 7.0 0.0
		vertex 1.0 8.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 1.0 8.0 0.0
		vertex 0.0 7.0 0.0
		vertex 0.0 8.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 2.0 7.0 0.0
		vertex 1.0 7.0 0.0
		vertex 2.0 8.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 2.0 8.0 0.0
		vertex 1.0 7.0 0.0
		vertex 1.0 8.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 3.0 7.0 0.0
		vertex 2.0 7.0 0.0
		vertex 3.0 8.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 3.0 8.0 0.0
		vertex 2.0 7.0 0.0
		vertex 2.0 8.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 4.0 7.0 0.0
		vertex 3.0 7.0 0.0
		vertex 4.0 8.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 4.0 8.0 0.0
		vertex 3.0 7.0 0.0
		vertex 3.0 8.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 5.0 7.0 0.0
		vertex 4.0 7.0 0.0
		vertex 5.0 8.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 5.0 8.0 0.0
		vertex 4.0 7.0 0.0
		vertex 4.0 8.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 6.0 7.0 0.0
		vertex 5.0 7.0 0.0
		vertex 6.0 8.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 6.0 8.0 0.0
		vertex 5.0 7.0 0.0
		vertex 5.0 8.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 7.0 7.0 0.0
		vertex 6.0 7.0 0.0
		vertex 7.0 8.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 7.0 8.0 0.0
		vertex 6.0 7.0 0.0
		vertex 6.0 8.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 8.0 7.0 0.0
		vertex 7.0 7.0 0.0
		vertex 8.0 8.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 8.0 8.0 0.0
		vertex 7.0 7.0 0.0
		vertex 7.0 8.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 9.0 7.0 0.0
		vertex 8.0 7.0 0.0
		vertex 9.0 8.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 9.0 8.0 0.0
		vertex 8.0 7.0 0.0
		vertex 8.0 8.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 10.0 7.0 0.0
		vertex 9.0 7.0 0.0
		vertex 10.0 8.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 10.0 8.0 0.0
		vertex 9.0 7.0 0.0
		vertex 9.0 8.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 1.0 8.0 0.0
		vertex 0.0 8.0 0.0
		vertex 1.0 9.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 1.0 9.0 0.0
		vertex 0.0 8.0 0.0
		vertex 0.0 9.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 2.0 8.0 0.0
		vertex 1.0 8.0 0.0
		vertex 2.0 9.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 2.0 9.0 0.0
		vertex 1.0 8.0 0.0
		vertex 1.0 9.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 3.0 8.0 0.0
		vertex 2.0 8.0 0.0
		vertex 3.0 9.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 3.0 9.0 0.0
		vertex 2.0 8.0 0.0
		vertex 2.0 9.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 4.0 8.0 0.0
		vertex 3.0 8.0 0.0
		vertex 4.0 9.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 4.0 9.0 0.0
		vertex 3.0 8.0 0.0
		vertex 3.0 9.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 5.0 8.0 0.0
		vertex 4.0 8.0 0.0
		vertex 5.0 9.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 5.0 9.0 0.0
		vertex 4.0 8.0 0.0
		vertex 4.0 9.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 6.0 8.0 0.0
		vertex 5.0 8.0 0.0
		vertex 6.0 9.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 6.0 9.0 0.0
		vertex 5.0 8.0 0.0
		vertex 5.0 9.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 7.0 8.0 0.0
		vertex 6.0 8.0 0.0
		vertex 7.0 9.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 7.0 9.0 0.0
		vertex 6.0 8.0 0.0
		vertex 6.0 9.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 8.0 8.0 0.0
		vertex 7.0 8.0 0.0
		vertex 8.0 9.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 8.0 9.0 0.0
		vertex 7.0 8.0 0.0
		vertex 7.0 9.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 9.0 8.0 0.0
		vertex 8.0 8.0 0.0
		vertex 9.0 9.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 9.0 9.0 0.0
		vertex 8.0 8.0 0.0
		vertex 8.0 9.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 10.0 8.0 0.0
		vertex 9.0 8.0 0.0
		vertex 10.0 9.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 10.0 9.0 0.0
		vertex 9.0 8.0 0.0
		vertex 9.0 9.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 1.0 9.0 0.0
		vertex 0.0 9.0 0.0
		vertex 1.0 10.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 1.0 10.0 0.0
		vertex 0.0 9.0 0.0
		vertex 0.0 10.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 2.0 9.0 0.0
		vertex 1.0 9.0 0.0
		vertex 2.0 10.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 2.0 10.0 0.0
		vertex 1.0 9.0 0.0
		vertex 1.0 10.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 3.0 9.0 0.0
		vertex 2.0 9.0 0.0
		vertex 3.0 10.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 3.0 10.0 0.0
		vertex 2.0 9.0 0.0
		vertex 2.0 10.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 4.0 9.0 0.0
		vertex 3.0 9.0 0.0
		vertex 4.0 10.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 4.0 10.0 0.0
		vertex 3.0 9.0 0.0
		vertex 3.0 10.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 5.0 9.0 0.0
		vertex 4.0 9.0 0.0
		vertex 5.0 10.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 5.0 10.0 0.0
		vertex 4.0 9.0 0.0
		vertex 4.0 10.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 6.0 9.0 0.0
		vertex 5.0 9.0 0.0
		vertex 6.0 10.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 6.0 10.0 0.0
		vertex 5.0 9.0 0.0
		vertex 5.0 10.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 7.0 9.0 0.0
		vertex 6.0 9.0 0.0
		vertex 7.0 10.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 7.0 10.0 0.0
		vertex 6.0 9.0 0.0
		vertex 6.0 10.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 8.0 9.0 0.0
		vertex 7.0 9.0 0.0
		vertex 8.0 10.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 8.0 10.0 0.0
		vertex 7.0 9.0 0.0
		vertex 7.0 10.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 9.0 9.0 0.0
		vertex 8.0 9.0 0.0
		vertex 9.0 10.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 9.0 10.0 0.0
		vertex 8.0 9.0 0.0
		vertex 8.0 10.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 10.0 9.0 0.0
		vertex 9.0 9.0 0.0
		vertex 10.0 10.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 10.0 10.0 0.0
		vertex 9.0 9.0 0.0
		vertex 9.0 10.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 1.0 10.0 0.0
		vertex 0.0 10.0 0.0
		vertex 1.0 11.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 1.0 11.0 0.0
		vertex 0.0 10.0 0.0
		vertex 0.0 11.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 2.0 10.0 0.0
		vertex 1.0 10.0 0.0
		vertex 2.0 11.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 2.0 11.0 0.0
		vertex 1.0 10.0 0.0
		vertex 1.0 11.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 3.0 10.0 0.0
		vertex 2.0 10.0 0.0
		vertex 3.0 11.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 3.0 11.0 0.0
		vertex 2.0 10.0 0.0
		vertex 2.0 11.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 4.0 10.0 0.0
		vertex 3.0 10.0 0.0
		vertex 4.0 11.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 4.0 11.0 0.0
		vertex 3.0 10.0 0.0
		vertex 3.0 11.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 5.0 10.0 0.0
		vertex 4.0 10.0 0.0
		vertex 5.0 11.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 5.0 11.0 0.0
		vertex 4.0 10.0 0.0
		vertex 4.0 11.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 6.0 10.0 0.0
		vertex 5.0 10.0 0.0
		vertex 6.0 11.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 6.0 11.0 0.0
		vertex 5.0 10.0 0.0
		vertex 5.0 11.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 7.0 10.0 0.0
		vertex 6.0 10.0 0.0
		vertex 7.0 11.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 7.0 11.0 0.0
		vertex 6.0 10.0 0.0
		vertex 6.0 11.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 8.0 10.0 0.0
		vertex 7.0 10.0 0.0
		vertex 8.0 11.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 8.0 11.0 0.0
		vertex 7.0 10.0 0.0
		vertex 7.0 11.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 9.0 10.0 0.0
		vertex 8.0 10.0 0.0
		vertex 9.0 11.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 9.0 11.0 0.0
		vertex 8.0 10.0 0.0
		vertex 8.0 11.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 10.0 10.0 0.0
		vertex 9.0 10.0 0.0
		vertex 10.0 11.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 10.0 11.0 0.0
		vertex 9.0 10.0 0.0
		vertex 9.0 11.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 1.0 11.0 0.0
		vertex 0.0 11.0 0.0
		vertex 1.0 12.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 1.0 12.0 0.0
		vertex 0.0 11.0 0.0
		vertex 0.0 12.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 2.0 11.0 0.0
		vertex 1.0 11.0 0.0
		vertex 2.0 12.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 2.0 12.0 0.0
		vertex 1.0 11.0 0.0
		vertex 1.0 12.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 3.0 11.0 0.0
		vertex 2.0 11.0 0.0
		vertex 3.0 12.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 3.0 12.0 0.0
		vertex 2.0 11.0 0.0
		vertex 2.0 12.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 4.0 11.0 0.0
		vertex 3.0 11.0 0.0
		vertex 4.0 12.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 4.0 12.0 0.0
		vertex 3.0 11.0 0.0
		vertex 3.0 12.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 5.0 11.0 0.0
		vertex 4.0 11.0 0.0
		vertex 5.0 12.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 5.0 12.0 0.0
		vertex 4.0 11.0 0.0
		vertex 4.0 12.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 6.0 11.0 0.0
		vertex 5.0 11.0 0.0
		vertex 6.0 12.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 6.0 12.0 0.0
		vertex 5.0 11.0 0.0
		vertex 5.0 12.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 7.0 11.0 0.0
		vertex 6.0 11.0 0.0
		vertex 7.0 12.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 7.0 12.0 0.0
		vertex 6.0 11.0 0.0
		vertex 6.0 12.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 8.0 11.0 0.0
		vertex 7.0 11.0 0.0
		vertex 8.0 12.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 8.0 12.0 0.0
		vertex 7.0 11.0 0.0
		vertex 7.0 12.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 9.0 11.0 0.0
		vertex 8.0 11.0 0.0
		vertex 9.0 12.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 9.0 12.0 0.0
		vertex 8.0 11.0 0.0
		vertex 8.0 12.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 10.0 11.0 0.0
		vertex 9.0 11.0 0.0
		vertex 10.0 12.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 10.0 12.0 0.0
		vertex 9.0 11.0 0.0
		vertex 9.0 12.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 1.0 12.0 0.0
		vertex 0.0 12.0 0.0
		vertex 1.0 13.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 1.0 13.0 0.0
		vertex 0.0 12.0 0.0
		vertex 0.0 13.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 2.0 12.0 0.0
		vertex 1.0 12.0 0.0
		vertex 2.0 13.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 2.0 13.0 0.0
		vertex 1.0 12.0 0.0
		vertex 1.0 13.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 3.0 12.0 0.0
		vertex 2.0 12.0 0.0
		vertex 3.0 13.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 3.0 13.0 0.0
		vertex 2.0 12.0 0.0
		vertex 2.0 13.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 4.0 12.0 0.0
		vertex 3.0 12.0 0.0
		vertex 4.0 13.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 4.0 13.0 0.0
		vertex 3.0 12.0 0.0
		vertex 3.0 13.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 5.0 12.0 0.0
		vertex 4.0 12.0 0.0
		vertex 5.0 13.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 5.0 13.0 0.0
		vertex 4.0 12.0 0.0
		vertex 4.0 13.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 6.0 12.0 0.0
		vertex 5.0 12.0 0.0
		vertex 6.0 13.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 6.0 13.0 0.0
		vertex 5.0 12.0 0.0
		vertex 5.0 13.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 7.0 12.0 0.0
		vertex 6.0 12.0 0.0
		vertex 7.0 13.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 7.0 13.0 0.0
		vertex 6.0 12.0 0.0
		vertex 6.0 13.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 8.0 12.0 0.0
		vertex 7.0 12.0 0.0
		vertex 8.0 13.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 8.0 13.0 0.0
		vertex 7.0 12.0 0.0
		vertex 7.0 13.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 9.0 12.0 0.0
		vertex 8.0 12.0 0.0
		vertex 9.0 13.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 9.0 13.0 0.0
		vertex 8.0 12.0 0.0
		vertex 8.0 13.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 10.0 12.0 0.0
		vertex 9.0 12.0 0.0
		vertex 10.0 13.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 10.0 13.0 0.0
		vertex 9.0 12.0 0.0
		vertex 9.0 13.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 1.0 13.0 0.0
		vertex 0.0 13.0 0.0
		vertex 1.0 14.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 1.0 14.0 0.0
		vertex 0.0 13.0 0.0
		vertex 0.0 14.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 2.0 13.0 0.0
		vertex 1.0 13.0 0.0
		vertex 2.0 14.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 2.0 14.0 0.0
		vertex 1.0 13.0 0.0
		vertex 1.0 14.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 3.0 13.0 0.0
		vertex 2.0 13.0 0.0
		vertex 3.0 14.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 3.0 14.0 0.0
		vertex 2.0 13.0 0.0
		vertex 2.0 14.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 4.0 13.0 0.0
		vertex 3.0 13.0 0.0
		vertex 4.0 14.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 4.0 14.0 0.0
		vertex 3.0 13.0 0.0
		vertex 3.0 14.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 5.0 13.0 0.0
		vertex 4.0 13.0 0.0
		vertex 5.0 14.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 5.0 14.0 0.0
		vertex 4.0 13.0 0.0
		vertex 4.0 14.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 6.0 13.0 0.0
		vertex 5.0 13.0 0.0
		vertex 6.0 14.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 6.0 14.0 0.0
		vertex 5.0 13.0 0.0
		vertex 5.0 14.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 7.0 13.0 0.0
		vertex 6.0 13.0 0.0
		vertex 7.0 14.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 7.0 14.0 0.0
		vertex 6.0 13.0 0.0
		vertex 6.0 14.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 8.0 13.0 0.0
		vertex 7.0 13.0 0.0
		vertex 8.0 14.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 8.0 14.0 0.0
		vertex 7.0 13.0 0.0
		vertex 7.0 14.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 9.0 13.0 0.0
		vertex 8.0 13.0 0.0
		vertex 9.0 14.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 9.0 14.0 0.0
		vertex 8.0 13.0 0.0
		vertex 8.0 14.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 10.0 13.0 0.0
		vertex 9.0 13.0 0.0
		vertex 10.0 14.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 10.0 14.0 0.0
		vertex 9.0 13.0 0.0
		vertex 9.0 14.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 1.0 14.0 0.0
		vertex 0.0 14.0 0.0
		vertex 1.0 15.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 1.0 15.0 0.0
		vertex 0.0 14.0 0.0
		vertex 0.0 15.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 2.0 14.0 0.0
		vertex 1.0 14.0 0.0
		vertex 2.0 15.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 2.0 15.0 0.0
		vertex 1.0 14.0 0.0
		vertex 1.0 15.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 3.0 14.0 0.0
		vertex 2.0 14.0 0.0
		vertex 3.0 15.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 3.0 15.0 0.0
		vertex 2.0 14.0 0.0
		vertex 2.0 15.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 4.0 14.0 0.0
		vertex 3.0 14.0 0.0
		vertex 4.0 15.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 4.0 15.0 0.0
		vertex 3.0 14.0 0.0
		vertex 3.0 15.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 5.0 14.0 0.0
		vertex 4.0 14.0 0.0
		vertex 5.0 15.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 5.0 15.0 0.0
		vertex 4.0 14.0 0.0
		vertex 4.0 15.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 6.0 14.0 0.0
		vertex 5.0 14.0 0.0
		vertex 6.0 15.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 6.0 15.0 0.0
		vertex 5.0 14.0 0.0
		vertex 5.0 15.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 7.0 14.0 0.0
		vertex 6.0 14.0 0.0
		vertex 7.0 15.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 7.0 15.0 0.0
		vertex 6.0 14.0 0.0
		vertex 6.0 15.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 8.0 14.0 0.0
		vertex 7.0 14.0 0.0
		vertex 8.0 15.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 8.0 15.0 0.0
		vertex 7.0 14.0 0.0
		vertex 7.0 15.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 9.0 14.0 0.0
		vertex 8.0 14.0 0.0
		vertex 9.0 15.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 9.0 15.0 0.0
		vertex 8.0 14.0 0.0
		vertex 8.0 15.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 10.0 14.0 0.0
		vertex 9.0 14.0 0.0
		vertex 10.0 15.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 10.0 15.0 0.0
		vertex 9.0 14.0 0.0
		vertex 9.0 15.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 1.0 15.0 0.0
		vertex 0.0 15.0 0.0
		vertex 1.0 16.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 1.0 16.0 0.0
		vertex 0.0 15.0 0.0
		vertex 0.0 16.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 2.0 15.0 0.0
		vertex 1.0 15.0 0.0
		vertex 2.0 16.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 2.0 16.0 0.0
		vertex 1.0 15.0 0.0
		vertex 1.0 16.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 3.0 15.0 0.0
		vertex 2.0 15.0 0.0
		vertex 3.0 16.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 3.0 16.0 0.0
		vertex 2.0 15.0 0.0
		vertex 2.0 16.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 4.0 15.0 0.0
		vertex 3.0 15.0 0.0
		vertex 4.0 16.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 4.0 16.0 0.0
		vertex 3.0 15.0 0.0
		vertex 3.0 16.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 5.0 15.0 0.0
		vertex 4.0 15.0 0.0
		vertex 5.0 16.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 5.0 16.0 0.0
		vertex 4.0 15.0 0.0
		vertex 4.0 16.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 6.0 15.0 0.0
		vertex 5.0 15.0 0.0
		vertex 6.0 16.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 6.0 16.0 0.0
		vertex 5.0 15.0 0.0
		vertex 5.0 16.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 7.0 15.0 0.0
		vertex 6.0 15.0 0.0
		vertex 7.0 16.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 7.0 16.0 0.0
		vertex 6.0 15.0 0.0
		vertex 6.0 16.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 8.0 15.0 0.0
		vertex 7.0 15.0 0.0
		vertex 8.0 16.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 8.0 16.0 0.0
		vertex 7.0 15.0 0.0
		vertex 7.0 16.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 9.0 15.0 0.0
		vertex 8.0 15.0 0.0
		vertex 9.0 16.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 9.0 16.0 0.0
		vertex 8.0 15.0 0.0
		vertex 8.0 16.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 10.0 15.0 0.0
		vertex 9.0 15.0 0.0
		vertex 10.0 16.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 10.0 16.0 0.0
		vertex 9.0 15.0 0.0
		vertex 9.0 16.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 1.0 16.0 0.0
		vertex 0.0 16.0 0.0
		vertex 1.0 17.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 1.0 17.0 0.0
		vertex 0.0 16.0 0.0
		vertex 0.0 17.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 2.0 16.0 0.0
		vertex 1.0 16.0 0.0
		vertex 2.0 17.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 2.0 17.0 0.0
		vertex 1.0 16.0 0.0
		vertex 1.0 17.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 3.0 16.0 0.0
		vertex 2.0 16.0 0.0
		vertex 3.0 17.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 3.0 17.0 0.0
		vertex 2.0 16.0 0.0
		vertex 2.0 17.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 4.0 16.0 0.0
		vertex 3.0 16.0 0.0
		vertex 4.0 17.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 4.0 17.0 0.0
		vertex 3.0 16.0 0.0
		vertex 3.0 17.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 5.0 16.0 0.0
		vertex 4.0 16.0 0.0
		vertex 5.0 17.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 5.0 17.0 0.0
		vertex 4.0 16.0 0.0
		vertex 4.0 17.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 6.0 16.0 0.0
		vertex 5.0 16.0 0.0
		vertex 6.0 17.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 6.0 17.0 0.0
		vertex 5.0 16.0 0.0
		vertex 5.0 17.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 7.0 16.0 0.0
		vertex 6.0 16.0 0.0
		vertex 7.0 17.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 7.0 17.0 0.0
		vertex 6.0 16.0 0.0
		vertex 6.0 17.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 8.0 16.0 0.0
		vertex 7.0 16.0 0.0
		vertex 8.0 17.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 8.0 17.0 0.0
		vertex 7.0 16.0 0.0
		vertex 7.0 17.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 9.0 16.0 0.0
		vertex 8.0 16.0 0.0
		vertex 9.0 17.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 9.0 17.0 0.0
		vertex 8.0 16.0 0.0
		vertex 8.0 17.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 10.0 16.0 0.0
		vertex 9.0 16.0 0.0
		vertex 10.0 17.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 10.0 17.0 0.0
		vertex 9.0 16.0 0.0
		vertex 9.0 17.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 1.0 17.0 0.0
		vertex 0.0 17.0 0.0
		vertex 1.0 18.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 1.0 18.0 0.0
		vertex 0.0 17.0 0.0
		vertex 0.0 18.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 2.0 17.0 0.0
		vertex 1.0 17.0 0.0
		vertex 2.0 18.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 2.0 18.0 0.0
		vertex 1.0 17.0 0.0
		vertex 1.0 18.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 3.0 17.0 0.0
		vertex 2.0 17.0 0.0
		vertex 3.0 18.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 3.0 18.0 0.0
		vertex 2.0 17.0 0.0
		vertex 2.0 18.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 4.0 17.0 0.0
		vertex 3.0 17.0 0.0
		vertex 4.0 18.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 4.0 18.0 0.0
		vertex 3.0 17.0 0.0
		vertex 3.0 18.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 5.0 17.0 0.0
		vertex 4.0 17.0 0.0
		vertex 5.0 18.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 5.0 18.0 0.0
		vertex 4.0 17.0 0.0
		vertex 4.0 18.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 6.0 17.0 0.0
		vertex 5.0 17.0 0.0
		vertex 6.0 18.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 6.0 18.0 0.0
		vertex 5.0 17.0 0.0
		vertex 5.0 18.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 7.0 17.0 0.0
		vertex 6.0 17.0 0.0
		vertex 7.0 18.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 7.0 18.0 0.0
		vertex 6.0 17.0 0.0
		vertex 6.0 18.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 8.0 17.0 0.0
		vertex 7.0 17.0 0.0
		vertex 8.0 18.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 8.0 18.0 0.0
		vertex 7.0 17.0 0.0
		vertex 7.0 18.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 9.0 17.0 0.0
		vertex 8.0 17.0 0.0
		vertex 9.0 18.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 9.0 18.0 0.0
		vertex 8.0 17.0 0.0
		vertex 8.0 18.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 10.0 17.0 0.0
		vertex 9.0 17.0 0.0
		vertex 10.0 18.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 10.0 18.0 0.0
		vertex 9.0 17.0 0.0
		vertex 9.0 18.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 1.0 18.0 0.0
		vertex 0.0 18.0 0.0
		vertex 1.0 19.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 1.0 19.0 0.0
		vertex 0.0 18.0 0.0
		vertex 0.0 19.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 2.0 18.0 0.0
		vertex 1.0 18.0 0.0
		vertex 2.0 19.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 2.0 19.0 0.0
		vertex 1.0 18.0 0.0
		vertex 1.0 19.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 3.0 18.0 0.0
		vertex 2.0 18.0 0.0
		vertex 3.0 19.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 3.0 19.0 0.0
		vertex 2.0 18.0 0.0
		vertex 2.0 19.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 4.0 18.0 0.0
		vertex 3.0 18.0 0.0
		vertex 4.0 19.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 4.0 19.0 0.0
		vertex 3.0 18.0 0.0
		vertex 3.0 19.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 5.0 18.0 0.0
		vertex 4.0 18.0 0.0
		vertex 5.0 19.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 5.0 19.0 0.0
		vertex 4.0 18.0 0.0
		vertex 4.0 19.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 6.0 18.0 0.0
		vertex 5.0 18.0 0.0
		vertex 6.0 19.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 6.0 19.0 0.0
		vertex 5.0 18.0 0.0
		vertex 5.0 19.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 7.0 18.0 0.0
		vertex 6.0 18.0 0.0
		vertex 7.0 19.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 7.0 19.0 0.0
		vertex 6.0 18.0 0.0
		vertex 6.0 19.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 8.0 18.0 0.0
		vertex 7.0 18.0 0.0
		vertex 8.0 19.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 8.0 19.0 0.0
		vertex 7.0 18.0 0.0
		vertex 7.0 19.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 9.0 18.0 0.0
		vertex 8.0 18.0 0.0
		vertex 9.0 19.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 9.0 19.0 0.0
		vertex 8.0 18.0 0.0
		vertex 8.0 19.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 10.0 18.0 0.0
		vertex 9.0 18.0 0.0
		vertex 10.0 19.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 10.0 19.0 0.0
		vertex 9.0 18.0 0.0
		vertex 9.0 19.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 1.0 19.0 0.0
		vertex 0.0 19.0 0.0
		vertex 1.0 20.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 1.0 20.0 0.0
		vertex 0.0 19.0 0.0
		vertex 0.0 20.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 2.0 19.0 0.0
		vertex 1.0 19.0 0.0
		vertex 2.0 20.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 2.0 20.0 0.0
		vertex 1.0 19.0 0.0
		vertex 1.0 20.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 3.0 19.0 0.0
		vertex 2.0 19.0 0.0
		vertex 3.0 20.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 3.0 20.0 0.0
		vertex 2.0 19.0 0.0
		vertex 2.0 20.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 4.0 19.0 0.0
		vertex 3.0 19.0 0.0
		vertex 4.0 20.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 4.0 20.0 0.0
		vertex 3.0 19.0 0.0
		vertex 3.0 20.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 5.0 19.0 0.0
		vertex 4.0 19.0 0.0
		vertex 5.0 20.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 5.0 20.0 0.0
		vertex 4.0 19.0 0.0
		vertex 4.0 20.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 6.0 19.0 0.0
		vertex 5.0 19.0 0.0
		vertex 6.0 20.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 6.0 20.0 0.0
		vertex 5.0 19.0 0.0
		vertex 5.0 20.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 7.0 19.0 0.0
		vertex 6.0 19.0 0.0
		vertex 7.0 20.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 7.0 20.0 0.0
		vertex 6.0 19.0 0.0
		vertex 6.0 20.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 8.0 19.0 0.0
		vertex 7.0 19.0 0.0
		vertex 8.0 20.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 8.0 20.0 0.0
		vertex 7.0 19.0 0.0
		vertex 7.0 20.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 9.0 19.0 0.0
		vertex 8.0 19.0 0.0
		vertex 9.0 20.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 9.0 20.0 0.0
		vertex 8.0 19.0 0.0
		vertex 8.0 20.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 10.0 19.0 0.0
		vertex 9.0 19.0 0.0
		vertex 10.0 20.0 0.0
	endloop
endfacet

facet normal -0.0 -0.0 -1.0
	outer loop
		vertex 10.0 20.0 0.0
		vertex 9.0 19.0 0.0
		vertex 9.0 20.0 0.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 0.0 0.0 30.0
		vertex 1.0 0.0 30.0
		vertex 1.0 1.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 0.0 0.0 30.0
		vertex 1.0 1.0 30.0
		vertex 0.0 1.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 1.0 0.0 30.0
		vertex 2.0 0.0 30.0
		vertex 2.0 1.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 1.0 0.0 30.0
		vertex 2.0 1.0 30.0
		vertex 1.0 1.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 2.0 0.0 30.0
		vertex 3.0 0.0 30.0
		vertex 3.0 1.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 2.0 0.0 30.0
		vertex 3.0 1.0 30.0
		vertex 2.0 1.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 3.0 0.0 30.0
		vertex 4.0 0.0 30.0
		vertex 4.0 1.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 3.0 0.0 30.0
		vertex 4.0 1.0 30.0
		vertex 3.0 1.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 4.0 0.0 30.0
		vertex 5.0 0.0 30.0
		vertex 5.0 1.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 4.0 0.0 30.0
		vertex 5.0 1.0 30.0
		vertex 4.0 1.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 5.0 0.0 30.0
		vertex 6.0 0.0 30.0
		vertex 6.0 1.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 5.0 0.0 30.0
		vertex 6.0 1.0 30.0
		vertex 5.0 1.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 6.0 0.0 30.0
		vertex 7.0 0.0 30.0
		vertex 7.0 1.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 6.0 0.0 30.0
		vertex 7.0 1.0 30.0
		vertex 6.0 1.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 7.0 0.0 30.0
		vertex 8.0 0.0 30.0
		vertex 8.0 1.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 7.0 0.0 30.0
		vertex 8.0 1.0 30.0
		vertex 7.0 1.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 8.0 0.0 30.0
		vertex 9.0 0.0 30.0
		vertex 9.0 1.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 8.0 0.0 30.0
		vertex 9.0 1.0 30.0
		vertex 8.0 1.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 9.0 0.0 30.0
		vertex 10.0 0.0 30.0
		vertex 10.0 1.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 9.0 0.0 30.0
		vertex 10.0 1.0 30.0
		vertex 9.0 1.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 0.0 1.0 30.0
		vertex 1.0 1.0 30.0
		vertex 1.0 2.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 0.0 1.0 30.0
		vertex 1.0 2.0 30.0
		vertex 0.0 2.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 1.0 1.0 30.0
		vertex 2.0 1.0 30.0
		vertex 2.0 2.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 1.0 1.0 30.0
		vertex 2.0 2.0 30.0
		vertex 1.0 2.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 2.0 1.0 30.0
		vertex 3.0 1.0 30.0
		vertex 3.0 2.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 2.0 1.0 30.0
		vertex 3.0 2.0 30.0
		vertex 2.0 2.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 3.0 1.0 30.0
		vertex 4.0 1.0 30.0
		vertex 4.0 2.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 3.0 1.0 30.0
		vertex 4.0 2.0 30.0
		vertex 3.0 2.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 4.0 1.0 30.0
		vertex 5.0 1.0 30.0
		vertex 5.0 2.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 4.0 1.0 30.0
		vertex 5.0 2.0 30.0
		vertex 4.0 2.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 5.0 1.0 30.0
		vertex 6.0 1.0 30.0
		vertex 6.0 2.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 5.0 1.0 30.0
		vertex 6.0 2.0 30.0
		vertex 5.0 2.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 6.0 1.0 30.0
		vertex 7.0 1.0 30.0
		vertex 7.0 2.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 6.0 1.0 30.0
		vertex 7.0 2.0 30.0
		vertex 6.0 2.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 7.0 1.0 30.0
		vertex 8.0 1.0 30.0
		vertex 8.0 2.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 7.0 1.0 30.0
		vertex 8.0 2.0 30.0
		vertex 7.0 2.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 8.0 1.0 30.0
		vertex 9.0 1.0 30.0
		vertex 9.0 2.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 8.0 1.0 30.0
		vertex 9.0 2.0 30.0
		vertex 8.0 2.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 9.0 1.0 30.0
		vertex 10.0 1.0 30.0
		vertex 10.0 2.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 9.0 1.0 30.0
		vertex 10.0 2.0 30.0
		vertex 9.0 2.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 0.0 2.0 30.0
		vertex 1.0 2.0 30.0
		vertex 1.0 3.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 0.0 2.0 30.0
		vertex 1.0 3.0 30.0
		vertex 0.0 3.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 1.0 2.0 30.0
		vertex 2.0 2.0 30.0
		vertex 2.0 3.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 1.0 2.0 30.0
		vertex 2.0 3.0 30.0
		vertex 1.0 3.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 2.0 2.0 30.0
		vertex 3.0 2.0 30.0
		vertex 3.0 3.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 2.0 2.0 30.0
		vertex 3.0 3.0 30.0
		vertex 2.0 3.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 3.0 2.0 30.0
		vertex 4.0 2.0 30.0
		vertex 4.0 3.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 3.0 2.0 30.0
		vertex 4.0 3.0 30.0
		vertex 3.0 3.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 4.0 2.0 30.0
		vertex 5.0 2.0 30.0
		vertex 5.0 3.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 4.0 2.0 30.0
		vertex 5.0 3.0 30.0
		vertex 4.0 3.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 5.0 2.0 30.0
		vertex 6.0 2.0 30.0
		vertex 6.0 3.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 5.0 2.0 30.0
		vertex 6.0 3.0 30.0
		vertex 5.0 3.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 6.0 2.0 30.0
		vertex 7.0 2.0 30.0
		vertex 7.0 3.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 6.0 2.0 30.0
		vertex 7.0 3.0 30.0
		vertex 6.0 3.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 7.0 2.0 30.0
		vertex 8.0 2.0 30.0
		vertex 8.0 3.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 7.0 2.0 30.0
		vertex 8.0 3.0 30.0
		vertex 7.0 3.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 8.0 2.0 30.0
		vertex 9.0 2.0 30.0
		vertex 9.0 3.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 8.0 2.0 30.0
		vertex 9.0 3.0 30.0
		vertex 8.0 3.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 9.0 2.0 30.0
		vertex 10.0 2.0 30.0
		vertex 10.0 3.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 9.0 2.0 30.0
		vertex 10.0 3.0 30.0
		vertex 9.0 3.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 0.0 3.0 30.0
		vertex 1.0 3.0 30.0
		vertex 1.0 4.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 0.0 3.0 30.0
		vertex 1.0 4.0 30.0
		vertex 0.0 4.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 1.0 3.0 30.0
		vertex 2.0 3.0 30.0
		vertex 2.0 4.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 1.0 3.0 30.0
		vertex 2.0 4.0 30.0
		vertex 1.0 4.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 2.0 3.0 30.0
		vertex 3.0 3.0 30.0
		vertex 3.0 4.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 2.0 3.0 30.0
		vertex 3.0 4.0 30.0
		vertex 2.0 4.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 3.0 3.0 30.0
		vertex 4.0 3.0 30.0
		vertex 4.0 4.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 3.0 3.0 30.0
		vertex 4.0 4.0 30.0
		vertex 3.0 4.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 4.0 3.0 30.0
		vertex 5.0 3.0 30.0
		vertex 5.0 4.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 4.0 3.0 30.0
		vertex 5.0 4.0 30.0
		vertex 4.0 4.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 5.0 3.0 30.0
		vertex 6.0 3.0 30.0
		vertex 6.0 4.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 5.0 3.0 30.0
		vertex 6.0 4.0 30.0
		vertex 5.0 4.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 6.0 3.0 30.0
		vertex 7.0 3.0 30.0
		vertex 7.0 4.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 6.0 3.0 30.0
		vertex 7.0 4.0 30.0
		vertex 6.0 4.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 7.0 3.0 30.0
		vertex 8.0 3.0 30.0
		vertex 8.0 4.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 7.0 3.0 30.0
		vertex 8.0 4.0 30.0
		vertex 7.0 4.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 8.0 3.0 30.0
		vertex 9.0 3.0 30.0
		vertex 9.0 4.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 8.0 3.0 30.0
		vertex 9.0 4.0 30.0
		vertex 8.0 4.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 9.0 3.0 30.0
		vertex 10.0 3.0 30.0
		vertex 10.0 4.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 9.0 3.0 30.0
		vertex 10.0 4.0 30.0
		vertex 9.0 4.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 0.0 4.0 30.0
		vertex 1.0 4.0 30.0
		vertex 1.0 5.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 0.0 4.0 30.0
		vertex 1.0 5.0 30.0
		vertex 0.0 5.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 1.0 4.0 30.0
		vertex 2.0 4.0 30.0
		vertex 2.0 5.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 1.0 4.0 30.0
		vertex 2.0 5.0 30.0
		vertex 1.0 5.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 2.0 4.0 30.0
		vertex 3.0 4.0 30.0
		vertex 3.0 5.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 2.0 4.0 30.0
		vertex 3.0 5.0 30.0
		vertex 2.0 5.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 3.0 4.0 30.0
		vertex 4.0 4.0 30.0
		vertex 4.0 5.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 3.0 4.0 30.0
		vertex 4.0 5.0 30.0
		vertex 3.0 5.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 4.0 4.0 30.0
		vertex 5.0 4.0 30.0
		vertex 5.0 5.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 4.0 4.0 30.0
		vertex 5.0 5.0 30.0
		vertex 4.0 5.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 5.0 4.0 30.0
		vertex 6.0 4.0 30.0
		vertex 6.0 5.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 5.0 4.0 30.0
		vertex 6.0 5.0 30.0
		vertex 5.0 5.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 6.0 4.0 30.0
		vertex 7.0 4.0 30.0
		vertex 7.0 5.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 6.0 4.0 30.0
		vertex 7.0 5.0 30.0
		vertex 6.0 5.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 7.0 4.0 30.0
		vertex 8.0 4.0 30.0
		vertex 8.0 5.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 7.0 4.0 30.0
		vertex 8.0 5.0 30.0
		vertex 7.0 5.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 8.0 4.0 30.0
		vertex 9.0 4.0 30.0
		vertex 9.0 5.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 8.0 4.0 30.0
		vertex 9.0 5.0 30.0
		vertex 8.0 5.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 9.0 4.0 30.0
		vertex 10.0 4.0 30.0
		vertex 10.0 5.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 9.0 4.0 30.0
		vertex 10.0 5.0 30.0
		vertex 9.0 5.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 0.0 5.0 30.0
		vertex 1.0 5.0 30.0
		vertex 1.0 6.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 0.0 5.0 30.0
		vertex 1.0 6.0 30.0
		vertex 0.0 6.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 1.0 5.0 30.0
		vertex 2.0 5.0 30.0
		vertex 2.0 6.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 1.0 5.0 30.0
		vertex 2.0 6.0 30.0
		vertex 1.0 6.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 2.0 5.0 30.0
		vertex 3.0 5.0 30.0
		vertex 3.0 6.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 2.0 5.0 30.0
		vertex 3.0 6.0 30.0
		vertex 2.0 6.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 3.0 5.0 30.0
		vertex 4.0 5.0 30.0
		vertex 4.0 6.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 3.0 5.0 30.0
		vertex 4.0 6.0 30.0
		vertex 3.0 6.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 4.0 5.0 30.0
		vertex 5.0 5.0 30.0
		vertex 5.0 6.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 4.0 5.0 30.0
		vertex 5.0 6.0 30.0
		vertex 4.0 6.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 5.0 5.0 30.0
		vertex 6.0 5.0 30.0
		vertex 6.0 6.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 5.0 5.0 30.0
		vertex 6.0 6.0 30.0
		vertex 5.0 6.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 6.0 5.0 30.0
		vertex 7.0 5.0 30.0
		vertex 7.0 6.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 6.0 5.0 30.0
		vertex 7.0 6.0 30.0
		vertex 6.0 6.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 7.0 5.0 30.0
		vertex 8.0 5.0 30.0
		vertex 8.0 6.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 7.0 5.0 30.0
		vertex 8.0 6.0 30.0
		vertex 7.0 6.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 8.0 5.0 30.0
		vertex 9.0 5.0 30.0
		vertex 9.0 6.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 8.0 5.0 30.0
		vertex 9.0 6.0 30.0
		vertex 8.0 6.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 9.0 5.0 30.0
		vertex 10.0 5.0 30.0
		vertex 10.0 6.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 9.0 5.0 30.0
		vertex 10.0 6.0 30.0
		vertex 9.0 6.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 0.0 6.0 30.0
		vertex 1.0 6.0 30.0
		vertex 1.0 7.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 0.0 6.0 30.0
		vertex 1.0 7.0 30.0
		vertex 0.0 7.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 1.0 6.0 30.0
		vertex 2.0 6.0 30.0
		vertex 2.0 7.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 1.0 6.0 30.0
		vertex 2.0 7.0 30.0
		vertex 1.0 7.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 2.0 6.0 30.0
		vertex 3.0 6.0 30.0
		vertex 3.0 7.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 2.0 6.0 30.0
		vertex 3.0 7.0 30.0
		vertex 2.0 7.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 3.0 6.0 30.0
		vertex 4.0 6.0 30.0
		vertex 4.0 7.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 3.0 6.0 30.0
		vertex 4.0 7.0 30.0
		vertex 3.0 7.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 4.0 6.0 30.0
		vertex 5.0 6.0 30.0
		vertex 5.0 7.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 4.0 6.0 30.0
		vertex 5.0 7.0 30.0
		vertex 4.0 7.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 5.0 6.0 30.0
		vertex 6.0 6.0 30.0
		vertex 6.0 7.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 5.0 6.0 30.0
		vertex 6.0 7.0 30.0
		vertex 5.0 7.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 6.0 6.0 30.0
		vertex 7.0 6.0 30.0
		vertex 7.0 7.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 6.0 6.0 30.0
		vertex 7.0 7.0 30.0
		vertex 6.0 7.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 7.0 6.0 30.0
		vertex 8.0 6.0 30.0
		vertex 8.0 7.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 7.0 6.0 30.0
		vertex 8.0 7.0 30.0
		vertex 7.0 7.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 8.0 6.0 30.0
		vertex 9.0 6.0 30.0
		vertex 9.0 7.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 8.0 6.0 30.0
		vertex 9.0 7.0 30.0
		vertex 8.0 7.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 9.0 6.0 30.0
		vertex 10.0 6.0 30.0
		vertex 10.0 7.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 9.0 6.0 30.0
		vertex 10.0 7.0 30.0
		vertex 9.0 7.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 0.0 7.0 30.0
		vertex 1.0 7.0 30.0
		vertex 1.0 8.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 0.0 7.0 30.0
		vertex 1.0 8.0 30.0
		vertex 0.0 8.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 1.0 7.0 30.0
		vertex 2.0 7.0 30.0
		vertex 2.0 8.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 1.0 7.0 30.0
		vertex 2.0 8.0 30.0
		vertex 1.0 8.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 2.0 7.0 30.0
		vertex 3.0 7.0 30.0
		vertex 3.0 8.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 2.0 7.0 30.0
		vertex 3.0 8.0 30.0
		vertex 2.0 8.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 3.0 7.0 30.0
		vertex 4.0 7.0 30.0
		vertex 4.0 8.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 3.0 7.0 30.0
		vertex 4.0 8.0 30.0
		vertex 3.0 8.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 4.0 7.0 30.0
		vertex 5.0 7.0 30.0
		vertex 5.0 8.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 4.0 7.0 30.0
		vertex 5.0 8.0 30.0
		vertex 4.0 8.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 5.0 7.0 30.0
		vertex 6.0 7.0 30.0
		vertex 6.0 8.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 5.0 7.0 30.0
		vertex 6.0 8.0 30.0
		vertex 5.0 8.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 6.0 7.0 30.0
		vertex 7.0 7.0 30.0
		vertex 7.0 8.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 6.0 7.0 30.0
		vertex 7.0 8.0 30.0
		vertex 6.0 8.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 7.0 7.0 30.0
		vertex 8.0 7.0 30.0
		vertex 8.0 8.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 7.0 7.0 30.0
		vertex 8.0 8.0 30.0
		vertex 7.0 8.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 8.0 7.0 30.0
		vertex 9.0 7.0 30.0
		vertex 9.0 8.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 8.0 7.0 30.0
		vertex 9.0 8.0 30.0
		vertex 8.0 8.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 9.0 7.0 30.0
		vertex 10.0 7.0 30.0
		vertex 10.0 8.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 9.0 7.0 30.0
		vertex 10.0 8.0 30.0
		vertex 9.0 8.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 0.0 8.0 30.0
		vertex 1.0 8.0 30.0
		vertex 1.0 9.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 0.0 8.0 30.0
		vertex 1.0 9.0 30.0
		vertex 0.0 9.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 1.0 8.0 30.0
		vertex 2.0 8.0 30.0
		vertex 2.0 9.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 1.0 8.0 30.0
		vertex 2.0 9.0 30.0
		vertex 1.0 9.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 2.0 8.0 30.0
		vertex 3.0 8.0 30.0
		vertex 3.0 9.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 2.0 8.0 30.0
		vertex 3.0 9.0 30.0
		vertex 2.0 9.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 3.0 8.0 30.0
		vertex 4.0 8.0 30.0
		vertex 4.0 9.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 3.0 8.0 30.0
		vertex 4.0 9.0 30.0
		vertex 3.0 9.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 4.0 8.0 30.0
		vertex 5.0 8.0 30.0
		vertex 5.0 9.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 4.0 8.0 30.0
		vertex 5.0 9.0 30.0
		vertex 4.0 9.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 5.0 8.0 30.0
		vertex 6.0 8.0 30.0
		vertex 6.0 9.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 5.0 8.0 30.0
		vertex 6.0 9.0 30.0
		vertex 5.0 9.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 6.0 8.0 30.0
		vertex 7.0 8.0 30.0
		vertex 7.0 9.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 6.0 8.0 30.0
		vertex 7.0 9.0 30.0
		vertex 6.0 9.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 7.0 8.0 30.0
		vertex 8.0 8.0 30.0
		vertex 8.0 9.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 7.0 8.0 30.0
		vertex 8.0 9.0 30.0
		vertex 7.0 9.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 8.0 8.0 30.0
		vertex 9.0 8.0 30.0
		vertex 9.0 9.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 8.0 8.0 30.0
		vertex 9.0 9.0 30.0
		vertex 8.0 9.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 9.0 8.0 30.0
		vertex 10.0 8.0 30.0
		vertex 10.0 9.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 9.0 8.0 30.0
		vertex 10.0 9.0 30.0
		vertex 9.0 9.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 0.0 9.0 30.0
		vertex 1.0 9.0 30.0
		vertex 1.0 10.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 0.0 9.0 30.0
		vertex 1.0 10.0 30.0
		vertex 0.0 10.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 1.0 9.0 30.0
		vertex 2.0 9.0 30.0
		vertex 2.0 10.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 1.0 9.0 30.0
		vertex 2.0 10.0 30.0
		vertex 1.0 10.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 2.0 9.0 30.0
		vertex 3.0 9.0 30.0
		vertex 3.0 10.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 2.0 9.0 30.0
		vertex 3.0 10.0 30.0
		vertex 2.0 10.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 3.0 9.0 30.0
		vertex 4.0 9.0 30.0
		vertex 4.0 10.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 3.0 9.0 30.0
		vertex 4.0 10.0 30.0
		vertex 3.0 10.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 4.0 9.0 30.0
		vertex 5.0 9.0 30.0
		vertex 5.0 10.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 4.0 9.0 30.0
		vertex 5.0 10.0 30.0
		vertex 4.0 10.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 5.0 9.0 30.0
		vertex 6.0 9.0 30.0
		vertex 6.0 10.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 5.0 9.0 30.0
		vertex 6.0 10.0 30.0
		vertex 5.0 10.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 6.0 9.0 30.0
		vertex 7.0 9.0 30.0
		vertex 7.0 10.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 6.0 9.0 30.0
		vertex 7.0 10.0 30.0
		vertex 6.0 10.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 7.0 9.0 30.0
		vertex 8.0 9.0 30.0
		vertex 8.0 10.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 7.0 9.0 30.0
		vertex 8.0 10.0 30.0
		vertex 7.0 10.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 8.0 9.0 30.0
		vertex 9.0 9.0 30.0
		vertex 9.0 10.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 8.0 9.0 30.0
		vertex 9.0 10.0 30.0
		vertex 8.0 10.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 9.0 9.0 30.0
		vertex 10.0 9.0 30.0
		vertex 10.0 10.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 9.0 9.0 30.0
		vertex 10.0 10.0 30.0
		vertex 9.0 10.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 0.0 10.0 30.0
		vertex 1.0 10.0 30.0
		vertex 1.0 11.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 0.0 10.0 30.0
		vertex 1.0 11.0 30.0
		vertex 0.0 11.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 1.0 10.0 30.0
		vertex 2.0 10.0 30.0
		vertex 2.0 11.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 1.0 10.0 30.0
		vertex 2.0 11.0 30.0
		vertex 1.0 11.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 2.0 10.0 30.0
		vertex 3.0 10.0 30.0
		vertex 3.0 11.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 2.0 10.0 30.0
		vertex 3.0 11.0 30.0
		vertex 2.0 11.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 3.0 10.0 30.0
		vertex 4.0 10.0 30.0
		vertex 4.0 11.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 3.0 10.0 30.0
		vertex 4.0 11.0 30.0
		vertex 3.0 11.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 4.0 10.0 30.0
		vertex 5.0 10.0 30.0
		vertex 5.0 11.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 4.0 10.0 30.0
		vertex 5.0 11.0 30.0
		vertex 4.0 11.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 5.0 10.0 30.0
		vertex 6.0 10.0 30.0
		vertex 6.0 11.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 5.0 10.0 30.0
		vertex 6.0 11.0 30.0
		vertex 5.0 11.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 6.0 10.0 30.0
		vertex 7.0 10.0 30.0
		vertex 7.0 11.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 6.0 10.0 30.0
		vertex 7.0 11.0 30.0
		vertex 6.0 11.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 7.0 10.0 30.0
		vertex 8.0 10.0 30.0
		vertex 8.0 11.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 7.0 10.0 30.0
		vertex 8.0 11.0 30.0
		vertex 7.0 11.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 8.0 10.0 30.0
		vertex 9.0 10.0 30.0
		vertex 9.0 11.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 8.0 10.0 30.0
		vertex 9.0 11.0 30.0
		vertex 8.0 11.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 9.0 10.0 30.0
		vertex 10.0 10.0 30.0
		vertex 10.0 11.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 9.0 10.0 30.0
		vertex 10.0 11.0 30.0
		vertex 9.0 11.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 0.0 11.0 30.0
		vertex 1.0 11.0 30.0
		vertex 1.0 12.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 0.0 11.0 30.0
		vertex 1.0 12.0 30.0
		vertex 0.0 12.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 1.0 11.0 30.0
		vertex 2.0 11.0 30.0
		vertex 2.0 12.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 1.0 11.0 30.0
		vertex 2.0 12.0 30.0
		vertex 1.0 12.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 2.0 11.0 30.0
		vertex 3.0 11.0 30.0
		vertex 3.0 12.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 2.0 11.0 30.0
		vertex 3.0 12.0 30.0
		vertex 2.0 12.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 3.0 11.0 30.0
		vertex 4.0 11.0 30.0
		vertex 4.0 12.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 3.0 11.0 30.0
		vertex 4.0 12.0 30.0
		vertex 3.0 12.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 4.0 11.0 30.0
		vertex 5.0 11.0 30.0
		vertex 5.0 12.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 4.0 11.0 30.0
		vertex 5.0 12.0 30.0
		vertex 4.0 12.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 5.0 11.0 30.0
		vertex 6.0 11.0 30.0
		vertex 6.0 12.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 5.0 11.0 30.0
		vertex 6.0 12.0 30.0
		vertex 5.0 12.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 6.0 11.0 30.0
		vertex 7.0 11.0 30.0
		vertex 7.0 12.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 6.0 11.0 30.0
		vertex 7.0 12.0 30.0
		vertex 6.0 12.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 7.0 11.0 30.0
		vertex 8.0 11.0 30.0
		vertex 8.0 12.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 7.0 11.0 30.0
		vertex 8.0 12.0 30.0
		vertex 7.0 12.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 8.0 11.0 30.0
		vertex 9.0 11.0 30.0
		vertex 9.0 12.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 8.0 11.0 30.0
		vertex 9.0 12.0 30.0
		vertex 8.0 12.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 9.0 11.0 30.0
		vertex 10.0 11.0 30.0
		vertex 10.0 12.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 9.0 11.0 30.0
		vertex 10.0 12.0 30.0
		vertex 9.0 12.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 0.0 12.0 30.0
		vertex 1.0 12.0 30.0
		vertex 1.0 13.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 0.0 12.0 30.0
		vertex 1.0 13.0 30.0
		vertex 0.0 13.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 1.0 12.0 30.0
		vertex 2.0 12.0 30.0
		vertex 2.0 13.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 1.0 12.0 30.0
		vertex 2.0 13.0 30.0
		vertex 1.0 13.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 2.0 12.0 30.0
		vertex 3.0 12.0 30.0
		vertex 3.0 13.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 2.0 12.0 30.0
		vertex 3.0 13.0 30.0
		vertex 2.0 13.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 3.0 12.0 30.0
		vertex 4.0 12.0 30.0
		vertex 4.0 13.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 3.0 12.0 30.0
		vertex 4.0 13.0 30.0
		vertex 3.0 13.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 4.0 12.0 30.0
		vertex 5.0 12.0 30.0
		vertex 5.0 13.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 4.0 12.0 30.0
		vertex 5.0 13.0 30.0
		vertex 4.0 13.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 5.0 12.0 30.0
		vertex 6.0 12.0 30.0
		vertex 6.0 13.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 5.0 12.0 30.0
		vertex 6.0 13.0 30.0
		vertex 5.0 13.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 6.0 12.0 30.0
		vertex 7.0 12.0 30.0
		vertex 7.0 13.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 6.0 12.0 30.0
		vertex 7.0 13.0 30.0
		vertex 6.0 13.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 7.0 12.0 30.0
		vertex 8.0 12.0 30.0
		vertex 8.0 13.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 7.0 12.0 30.0
		vertex 8.0 13.0 30.0
		vertex 7.0 13.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 8.0 12.0 30.0
		vertex 9.0 12.0 30.0
		vertex 9.0 13.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 8.0 12.0 30.0
		vertex 9.0 13.0 30.0
		vertex 8.0 13.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 9.0 12.0 30.0
		vertex 10.0 12.0 30.0
		vertex 10.0 13.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 9.0 12.0 30.0
		vertex 10.0 13.0 30.0
		vertex 9.0 13.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 0.0 13.0 30.0
		vertex 1.0 13.0 30.0
		vertex 1.0 14.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 0.0 13.0 30.0
		vertex 1.0 14.0 30.0
		vertex 0.0 14.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 1.0 13.0 30.0
		vertex 2.0 13.0 30.0
		vertex 2.0 14.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 1.0 13.0 30.0
		vertex 2.0 14.0 30.0
		vertex 1.0 14.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 2.0 13.0 30.0
		vertex 3.0 13.0 30.0
		vertex 3.0 14.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 2.0 13.0 30.0
		vertex 3.0 14.0 30.0
		vertex 2.0 14.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 3.0 13.0 30.0
		vertex 4.0 13.0 30.0
		vertex 4.0 14.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 3.0 13.0 30.0
		vertex 4.0 14.0 30.0
		vertex 3.0 14.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 4.0 13.0 30.0
		vertex 5.0 13.0 30.0
		vertex 5.0 14.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 4.0 13.0 30.0
		vertex 5.0 14.0 30.0
		vertex 4.0 14.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 5.0 13.0 30.0
		vertex 6.0 13.0 30.0
		vertex 6.0 14.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 5.0 13.0 30.0
		vertex 6.0 14.0 30.0
		vertex 5.0 14.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 6.0 13.0 30.0
		vertex 7.0 13.0 30.0
		vertex 7.0 14.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 6.0 13.0 30.0
		vertex 7.0 14.0 30.0
		vertex 6.0 14.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 7.0 13.0 30.0
		vertex 8.0 13.0 30.0
		vertex 8.0 14.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 7.0 13.0 30.0
		vertex 8.0 14.0 30.0
		vertex 7.0 14.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 8.0 13.0 30.0
		vertex 9.0 13.0 30.0
		vertex 9.0 14.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 8.0 13.0 30.0
		vertex 9.0 14.0 30.0
		vertex 8.0 14.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 9.0 13.0 30.0
		vertex 10.0 13.0 30.0
		vertex 10.0 14.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 9.0 13.0 30.0
		vertex 10.0 14.0 30.0
		vertex 9.0 14.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 0.0 14.0 30.0
		vertex 1.0 14.0 30.0
		vertex 1.0 15.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 0.0 14.0 30.0
		vertex 1.0 15.0 30.0
		vertex 0.0 15.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 1.0 14.0 30.0
		vertex 2.0 14.0 30.0
		vertex 2.0 15.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 1.0 14.0 30.0
		vertex 2.0 15.0 30.0
		vertex 1.0 15.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 2.0 14.0 30.0
		vertex 3.0 14.0 30.0
		vertex 3.0 15.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 2.0 14.0 30.0
		vertex 3.0 15.0 30.0
		vertex 2.0 15.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 3.0 14.0 30.0
		vertex 4.0 14.0 30.0
		vertex 4.0 15.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 3.0 14.0 30.0
		vertex 4.0 15.0 30.0
		vertex 3.0 15.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 4.0 14.0 30.0
		vertex 5.0 14.0 30.0
		vertex 5.0 15.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 4.0 14.0 30.0
		vertex 5.0 15.0 30.0
		vertex 4.0 15.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 5.0 14.0 30.0
		vertex 6.0 14.0 30.0
		vertex 6.0 15.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 5.0 14.0 30.0
		vertex 6.0 15.0 30.0
		vertex 5.0 15.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 6.0 14.0 30.0
		vertex 7.0 14.0 30.0
		vertex 7.0 15.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 6.0 14.0 30.0
		vertex 7.0 15.0 30.0
		vertex 6.0 15.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 7.0 14.0 30.0
		vertex 8.0 14.0 30.0
		vertex 8.0 15.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 7.0 14.0 30.0
		vertex 8.0 15.0 30.0
		vertex 7.0 15.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 8.0 14.0 30.0
		vertex 9.0 14.0 30.0
		vertex 9.0 15.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 8.0 14.0 30.0
		vertex 9.0 15.0 30.0
		vertex 8.0 15.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 9.0 14.0 30.0
		vertex 10.0 14.0 30.0
		vertex 10.0 15.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 9.0 14.0 30.0
		vertex 10.0 15.0 30.0
		vertex 9.0 15.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 0.0 15.0 30.0
		vertex 1.0 15.0 30.0
		vertex 1.0 16.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 0.0 15.0 30.0
		vertex 1.0 16.0 30.0
		vertex 0.0 16.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 1.0 15.0 30.0
		vertex 2.0 15.0 30.0
		vertex 2.0 16.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 1.0 15.0 30.0
		vertex 2.0 16.0 30.0
		vertex 1.0 16.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 2.0 15.0 30.0
		vertex 3.0 15.0 30.0
		vertex 3.0 16.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 2.0 15.0 30.0
		vertex 3.0 16.0 30.0
		vertex 2.0 16.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 3.0 15.0 30.0
		vertex 4.0 15.0 30.0
		vertex 4.0 16.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 3.0 15.0 30.0
		vertex 4.0 16.0 30.0
		vertex 3.0 16.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 4.0 15.0 30.0
		vertex 5.0 15.0 30.0
		vertex 5.0 16.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 4.0 15.0 30.0
		vertex 5.0 16.0 30.0
		vertex 4.0 16.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 5.0 15.0 30.0
		vertex 6.0 15.0 30.0
		vertex 6.0 16.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 5.0 15.0 30.0
		vertex 6.0 16.0 30.0
		vertex 5.0 16.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 6.0 15.0 30.0
		vertex 7.0 15.0 30.0
		vertex 7.0 16.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 6.0 15.0 30.0
		vertex 7.0 16.0 30.0
		vertex 6.0 16.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 7.0 15.0 30.0
		vertex 8.0 15.0 30.0
		vertex 8.0 16.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 7.0 15.0 30.0
		vertex 8.0 16.0 30.0
		vertex 7.0 16.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 8.0 15.0 30.0
		vertex 9.0 15.0 30.0
		vertex 9.0 16.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 8.0 15.0 30.0
		vertex 9.0 16.0 30.0
		vertex 8.0 16.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 9.0 15.0 30.0
		vertex 10.0 15.0 30.0
		vertex 10.0 16.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 9.0 15.0 30.0
		vertex 10.0 16.0 30.0
		vertex 9.0 16.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 0.0 16.0 30.0
		vertex 1.0 16.0 30.0
		vertex 1.0 17.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 0.0 16.0 30.0
		vertex 1.0 17.0 30.0
		vertex 0.0 17.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 1.0 16.0 30.0
		vertex 2.0 16.0 30.0
		vertex 2.0 17.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 1.0 16.0 30.0
		vertex 2.0 17.0 30.0
		vertex 1.0 17.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 2.0 16.0 30.0
		vertex 3.0 16.0 30.0
		vertex 3.0 17.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 2.0 16.0 30.0
		vertex 3.0 17.0 30.0
		vertex 2.0 17.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 3.0 16.0 30.0
		vertex 4.0 16.0 30.0
		vertex 4.0 17.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 3.0 16.0 30.0
		vertex 4.0 17.0 30.0
		vertex 3.0 17.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 4.0 16.0 30.0
		vertex 5.0 16.0 30.0
		vertex 5.0 17.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 4.0 16.0 30.0
		vertex 5.0 17.0 30.0
		vertex 4.0 17.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 5.0 16.0 30.0
		vertex 6.0 16.0 30.0
		vertex 6.0 17.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 5.0 16.0 30.0
		vertex 6.0 17.0 30.0
		vertex 5.0 17.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 6.0 16.0 30.0
		vertex 7.0 16.0 30.0
		vertex 7.0 17.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 6.0 16.0 30.0
		vertex 7.0 17.0 30.0
		vertex 6.0 17.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 7.0 16.0 30.0
		vertex 8.0 16.0 30.0
		vertex 8.0 17.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 7.0 16.0 30.0
		vertex 8.0 17.0 30.0
		vertex 7.0 17.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 8.0 16.0 30.0
		vertex 9.0 16.0 30.0
		vertex 9.0 17.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 8.0 16.0 30.0
		vertex 9.0 17.0 30.0
		vertex 8.0 17.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 9.0 16.0 30.0
		vertex 10.0 16.0 30.0
		vertex 10.0 17.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 9.0 16.0 30.0
		vertex 10.0 17.0 30.0
		vertex 9.0 17.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 0.0 17.0 30.0
		vertex 1.0 17.0 30.0
		vertex 1.0 18.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 0.0 17.0 30.0
		vertex 1.0 18.0 30.0
		vertex 0.0 18.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 1.0 17.0 30.0
		vertex 2.0 17.0 30.0
		vertex 2.0 18.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 1.0 17.0 30.0
		vertex 2.0 18.0 30.0
		vertex 1.0 18.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 2.0 17.0 30.0
		vertex 3.0 17.0 30.0
		vertex 3.0 18.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 2.0 17.0 30.0
		vertex 3.0 18.0 30.0
		vertex 2.0 18.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 3.0 17.0 30.0
		vertex 4.0 17.0 30.0
		vertex 4.0 18.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 3.0 17.0 30.0
		vertex 4.0 18.0 30.0
		vertex 3.0 18.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 4.0 17.0 30.0
		vertex 5.0 17.0 30.0
		vertex 5.0 18.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 4.0 17.0 30.0
		vertex 5.0 18.0 30.0
		vertex 4.0 18.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 5.0 17.0 30.0
		vertex 6.0 17.0 30.0
		vertex 6.0 18.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 5.0 17.0 30.0
		vertex 6.0 18.0 30.0
		vertex 5.0 18.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 6.0 17.0 30.0
		vertex 7.0 17.0 30.0
		vertex 7.0 18.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 6.0 17.0 30.0
		vertex 7.0 18.0 30.0
		vertex 6.0 18.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 7.0 17.0 30.0
		vertex 8.0 17.0 30.0
		vertex 8.0 18.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 7.0 17.0 30.0
		vertex 8.0 18.0 30.0
		vertex 7.0 18.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 8.0 17.0 30.0
		vertex 9.0 17.0 30.0
		vertex 9.0 18.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 8.0 17.0 30.0
		vertex 9.0 18.0 30.0
		vertex 8.0 18.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 9.0 17.0 30.0
		vertex 10.0 17.0 30.0
		vertex 10.0 18.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 9.0 17.0 30.0
		vertex 10.0 18.0 30.0
		vertex 9.0 18.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 0.0 18.0 30.0
		vertex 1.0 18.0 30.0
		vertex 1.0 19.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 0.0 18.0 30.0
		vertex 1.0 19.0 30.0
		vertex 0.0 19.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 1.0 18.0 30.0
		vertex 2.0 18.0 30.0
		vertex 2.0 19.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 1.0 18.0 30.0
		vertex 2.0 19.0 30.0
		vertex 1.0 19.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 2.0 18.0 30.0
		vertex 3.0 18.0 30.0
		vertex 3.0 19.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 2.0 18.0 30.0
		vertex 3.0 19.0 30.0
		vertex 2.0 19.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 3.0 18.0 30.0
		vertex 4.0 18.0 30.0
		vertex 4.0 19.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 3.0 18.0 30.0
		vertex 4.0 19.0 30.0
		vertex 3.0 19.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 4.0 18.0 30.0
		vertex 5.0 18.0 30.0
		vertex 5.0 19.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 4.0 18.0 30.0
		vertex 5.0 19.0 30.0
		vertex 4.0 19.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 5.0 18.0 30.0
		vertex 6.0 18.0 30.0
		vertex 6.0 19.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 5.0 18.0 30.0
		vertex 6.0 19.0 30.0
		vertex 5.0 19.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 6.0 18.0 30.0
		vertex 7.0 18.0 30.0
		vertex 7.0 19.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 6.0 18.0 30.0
		vertex 7.0 19.0 30.0
		vertex 6.0 19.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 7.0 18.0 30.0
		vertex 8.0 18.0 30.0
		vertex 8.0 19.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 7.0 18.0 30.0
		vertex 8.0 19.0 30.0
		vertex 7.0 19.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 8.0 18.0 30.0
		vertex 9.0 18.0 30.0
		vertex 9.0 19.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 8.0 18.0 30.0
		vertex 9.0 19.0 30.0
		vertex 8.0 19.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 9.0 18.0 30.0
		vertex 10.0 18.0 30.0
		vertex 10.0 19.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 9.0 18.0 30.0
		vertex 10.0 19.0 30.0
		vertex 9.0 19.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 0.0 19.0 30.0
		vertex 1.0 19.0 30.0
		vertex 1.0 20.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 0.0 19.0 30.0
		vertex 1.0 20.0 30.0
		vertex 0.0 20.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 1.0 19.0 30.0
		vertex 2.0 19.0 30.0
		vertex 2.0 20.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 1.0 19.0 30.0
		vertex 2.0 20.0 30.0
		vertex 1.0 20.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 2.0 19.0 30.0
		vertex 3.0 19.0 30.0
		vertex 3.0 20.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 2.0 19.0 30.0
		vertex 3.0 20.0 30.0
		vertex 2.0 20.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 3.0 19.0 30.0
		vertex 4.0 19.0 30.0
		vertex 4.0 20.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 3.0 19.0 30.0
		vertex 4.0 20.0 30.0
		vertex 3.0 20.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 4.0 19.0 30.0
		vertex 5.0 19.0 30.0
		vertex 5.0 20.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 4.0 19.0 30.0
		vertex 5.0 20.0 30.0
		vertex 4.0 20.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 5.0 19.0 30.0
		vertex 6.0 19.0 30.0
		vertex 6.0 20.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 5.0 19.0 30.0
		vertex 6.0 20.0 30.0
		vertex 5.0 20.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 6.0 19.0 30.0
		vertex 7.0 19.0 30.0
		vertex 7.0 20.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 6.0 19.0 30.0
		vertex 7.0 20.0 30.0
		vertex 6.0 20.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 7.0 19.0 30.0
		vertex 8.0 19.0 30.0
		vertex 8.0 20.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 7.0 19.0 30.0
		vertex 8.0 20.0 30.0
		vertex 7.0 20.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 8.0 19.0 30.0
		vertex 9.0 19.0 30.0
		vertex 9.0 20.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 8.0 19.0 30.0
		vertex 9.0 20.0 30.0
		vertex 8.0 20.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 9.0 19.0 30.0
		vertex 10.0 19.0 30.0
		vertex 10.0 20.0 30.0
	endloop
endfacet

facet normal 0.0 0.0 1.0
	outer loop
		vertex 9.0 19.0 30.0
		vertex 10.0 20.0 30.0
		vertex 9.0 20.0 30.0
	endloop
endfacet

endsolid a_box
"""

module undirected

import rand

fn test_graph6() {
	for i in 0 .. 100 {
		str := random_graph6(rand.i64_in_range(1, 1000) or { 100 }, i / 100)
		assert UndirectedGraph.from_graph6(str).to_graph6() == str
	}
}

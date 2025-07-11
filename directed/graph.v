module directed

import common { Edge, Node }

// A directed graph is a list of references to nodes and a list of references to (directed) edges made up of these nodes.
@[noinit]
pub struct DirectedGraph[T] {
	common.Graph[T]
}

// Factory function to create an DirectedGraph from a list of nodes
// and a list of directed edges containing these nodes.
pub fn DirectedGraph.create[T](nodes []&Node[T], edges []&Edge[T]) DirectedGraph[T] {
	return DirectedGraph[T]{common.Graph[T]{nodes, edges}}
}

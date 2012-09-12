# constructors for two subclasses of graph: graphNEL, graphAM
#
graphNEL <- function (nodes=character(), edgeL=list(), edgemode='undirected') {
  g <- new ('graphNEL', nodes=nodes, edgeL=edgeL, edgemode=edgemode)
  }
  

graph
=====

The bioc graph class, an experiment for github

# Tasks

The essential tasks are to develop simple constructors `graphNEL()`
and `graphAM()`, to be used in place of `new("graphNEL", <...>)` or
`new("graphAM", <...>)` for creating graphNEL or graphAM instances.

## Unit tests

There are new unit tests that currently fail; `graphNEL()` and
`graphAM()` should be implemented so these, and other existing and
reasonable tests, pass.

    inst/unitTests/graphNEL.R:testConstructorFunction()
    inst/unitTests/graphAM.R:testConstructorFunction()

In addition, existing tests use new("graphNEL", ...), etc; these
should be updated to use the new constructors, and should pass without
further change.

## Documentation

The `graphNEL()` and `graphAM()` constructors should be documented, on
the graphNEL-class and graphAM-class man/ pages. Aliases should be
added so that

    ?graphNEL

takes the user to the appropriate location.

# Deliverables

On completion, the package will pass

    R CMD build graph
    R CMD check graph_*gz
   
without warning or errors.

In addition,

    grep -r graphNEL graph/* | grep new
  
will return only entries from the constructor functions themselves;
all direct uses of 'new' for constructing graphNEL (and graphAM)

The version number should be bumped so the most-minor digit is 1 more
than the most-minor digit in the devel branch at the time of project
completion.

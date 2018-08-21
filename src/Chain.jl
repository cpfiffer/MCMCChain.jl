module Chain

import Showoff: showoff
import StatsBase: autocor, autocov, countmap, counts, describe, predict,
       quantile, sample, sem, summarystats
using RecipesBase
using StatPlots
import Plots.plot

export Chains
export plot, traceplot, meanplot, densityplot, histogramplot, mixeddensityplot, autcorplot

abstract type AbstractChains end

struct Chains <: AbstractChains
	value::Array{Float64, 3}
	range::AbstractRange{Int}
	names::Vector{AbstractString}
	chains::Vector{Int}
end

# imports
include("utils.jl")

include("chains.jl")
include("chainsummary.jl")
include("discretediag.jl")
include("fileio.jl")
include("gelmandiag.jl")
include("gewekediag.jl")
include("heideldiag.jl")
include("mcse.jl")
#include("modelchains.jl")
#include("modelstats.jl")
include("rafterydiag.jl")
include("stats.jl")
include("plot.jl")
#include("plot2.jl")

end # module

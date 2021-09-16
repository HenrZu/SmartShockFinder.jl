module SmartShockFinder


using BSON: @save
using Distributions: Uniform
using Downloads: download
using Flux
using Flux: onecold, crossentropy, @epochs, Data.DataLoader, params
using HDF5: h5open
using OffsetArrays: OffsetArray, OffsetVector
using StaticArrays: SVector
using Statistics: mean
using Random: shuffle!
using Trixi: TreeMesh, leaf_cells, length_at_cell, vandermonde_legendre, multiply_dimensionwise!, legendre_polynomial_and_derivative, n_directions
using Trixi: has_neighbor, has_children, polynomial_interpolation_matrix, has_any_neighbor, gauss_lobatto_nodes_weights


include("inputdata/inputdata1d.jl")
include("inputdata/inputdata2d.jl")
include("functions/function1d.jl")
include("functions/function2d.jl")
include("meshes/1d/mesh1d.jl")
include("meshes/2d/mesh2d.jl")
include("traindata1d.jl")
include("traindata2d.jl")
include("validdata1d.jl")
include("validdata2d.jl")
include("network1d.jl")
include("network2d.jl")


export generate_inputdata1d, generate_inputXi1d
export generate_inputdata2d, generate_inputXi2d
export train_network1d, train_network2d, train_network2dcnn,  generate_traindataset1d, generate_traindataset2d
export generate_validdataset1d, generate_validdataset2d

end # module


## TODO
# Regularisierung in network.jl
# h5 statt bson
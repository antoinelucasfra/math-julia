
# ## Data structures

phonebook = Dict("Pierre" => 34308, "Marie-Aude" => 36040)
#----------------------------------------------------------------------------

phonebook["Chantal"] = 35041
#----------------------------------------------------------------------------

phonebook
#----------------------------------------------------------------------------

# values type must be the same for all items.

# ### Access to `Dict` values

phonebook["Pierre"]
#----------------------------------------------------------------------------

pop!(phonebook,"Chantal")
#----------------------------------------------------------------------------

phonebook
#----------------------------------------------------------------------------

# ### Tuples

teams = ("ANANUM","EDP","G&S","GA","GAE","GAN","MECA","PROC-STOC",
 "STAT","THEO-ERG")
#----------------------------------------------------------------------------

teams[1]
#----------------------------------------------------------------------------

teams[1:3]
#----------------------------------------------------------------------------

teams[:2]
#----------------------------------------------------------------------------

# ### Arrays

orgs = ["AGRO", "INSA", "RENNES1", "RENNES2", "INRIA", "EXT", "ENS", "CNRS"]
#----------------------------------------------------------------------------

@show cubes = [0, 1, 8, 27, 64, 125, 216]
length(cubes), ndims(cubes)
#----------------------------------------------------------------------------

mix = [ 1, 2, 3.0, "four"]
#----------------------------------------------------------------------------

orgs[3]
#----------------------------------------------------------------------------

orgs[3] = "UNIV-RENNES1"
orgs
#----------------------------------------------------------------------------

push!(cubes,7^3)
#----------------------------------------------------------------------------

pop!(cubes)
#----------------------------------------------------------------------------

cubes
#----------------------------------------------------------------------------

numbers = [[1,2,3], [4,5], [6,7,8,9]]
#----------------------------------------------------------------------------

rand(4,3,2)
#----------------------------------------------------------------------------

# # Iterators

@show seq = 1:10
typeof(seq)
#----------------------------------------------------------------------------

@show linseq = 0:0.1:1.0
typeof(linseq)
#----------------------------------------------------------------------------

@show x = collect(linseq)
typeof(x)
#----------------------------------------------------------------------------

x[1],  x[end-1], x[end]
#----------------------------------------------------------------------------

A=[1 2 ; 3 4] 
#----------------------------------------------------------------------------

[A A]
#----------------------------------------------------------------------------

@show [ A A] == hcat( A, A)
#----------------------------------------------------------------------------

vcat(A, A)
#----------------------------------------------------------------------------

A[2,:]
#----------------------------------------------------------------------------

A[end,end]
#----------------------------------------------------------------------------

B=[1,2,3,4]
#----------------------------------------------------------------------------

B=[1;2;3;4]
#----------------------------------------------------------------------------

# # Array comprehension

x=0:0.2:1;
V=[ x[i]^(j-1) for i=1:6, j=1:6] 
#----------------------------------------------------------------------------

V=[ x^(j-1) for x=0:0.2:1, j=1:6] 
#----------------------------------------------------------------------------

# # convert

x = 42
@show typeof(x)
x = convert(Float32, x)
@show typeof(x)
#----------------------------------------------------------------------------

x = Float64(x)
#----------------------------------------------------------------------------

a = 1:5
#----------------------------------------------------------------------------

Float64.(a)
#----------------------------------------------------------------------------

convert(Array{Complex,1}, a)
#----------------------------------------------------------------------------

# # Defining New Conversions
# 
# ```julia
# convert(::Type{MyType}, x) = MyType(x)
# ```
# 
# Function argument type is specified but value does not need to be referenced by name. 
# 
# ```julia
# convert(::Type{T}, x::Number) where {T<:Number} = T(x)
# ```
# 
# ```julia
# convert(::Type{T}, x::T) where {T<:Number} = x
# ```
# 

# # Promotion

promote(1, 2.5)
#----------------------------------------------------------------------------

promote(1, 2.5, 3)
#----------------------------------------------------------------------------

 promote(2, 3//4)
#----------------------------------------------------------------------------

 promote(1, 2.5, 3, 3//4)
#----------------------------------------------------------------------------

 promote(1.5, im)
#----------------------------------------------------------------------------

 promote(1 + 2im, 3//4)
#----------------------------------------------------------------------------
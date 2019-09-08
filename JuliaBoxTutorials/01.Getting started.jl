# -*- coding: utf-8 -*-
# ---
# jupyter:
#   jupytext:
#     text_representation:
#       extension: .jl
#       format_name: light
#       format_version: '1.4'
#       jupytext_version: 1.2.2
#   kernelspec:
#     display_name: Julia 1.2.0
#     language: julia
#     name: julia-1.2
# ---

# # Getting started
#
# Topics:
# 1.  How to print
# 2. How to assign variables
# 3. How to comment
# 4. Syntax for basic math

# ## How to print
#
# In Julia we usually use `println()` to print

println("I'm excited to learn Julia!")

# ## How to assign variables
#
# All we need is a variable name, value, and an equal's sign!<br>
# Julia will figure out types for us.

my_answer = 42
typeof(my_answer)

my_pi = 3.14159
typeof(my_pi)

😺 = "smiley cat!"
typeof(😺)

# +
# \:smi + <tab> --> select with down arrow + <enter> ---> <tab> + <enter> to complete
# -

# To type a smiley cat, use tab completion to select the emoji name and then tab again
#
# After assigning a value to a variable, we can reassign a value of a different type to that variable without any issue.

😺 = 1

# [Unicode Input in Julia documentation](https://docs.julialang.org/en/v1/manual/unicode-input/)

typeof(😺)

# Note: Julia allows us to write super generic code, and 😺 is an example of this. 
#
# This allows us to write code like

😀 = 0
😞 = -1

😺 + 😞 == 😀

r = 'r' # quotes
typeof(r)

hello = `ls` # backtics
typeof(hello)

run(hello)

# ## How to comment

# +
# You can leave comments on a single line using the pound/hash key

# +
#=

For multi-line comments, 
use the '#= =#' sequence.

=#
# -

# ## Syntax for basic math

sum = 3 + 7

difference = 10 - 3

product = 20 * 5

quotient = 100 / 10

power = 10 ^ 2

modulus = 101 % 2

# ### Exercises
#
# #### 1.1 
# Look up docs for the `convert` function. https://docs.julialang.org/en/v1/base/base/#Base.convert



# #### 1.2 
# Assign `365` to a variable named `days`. Convert `days` to a float and assign it to variable `days_float`

days = 365
days_float = convert(Float64, days)

# + {"deletable": false, "editable": false, "hide_input": true, "nbgrader": {"checksum": "a2dc243275e0310c3b29a745b952f321", "grade": true, "grade_id": "cell-715f78016beb0489", "locked": true, "points": 1, "schema_version": 1, "solution": false}}
@assert days == 365
@assert days_float == 365.0

# -

Float64(days)

# #### 1.3 
# See what happens when you execute
#
# ```julia
# convert(Int64, "1")
# ```
# and
#
# ```julia
# parse(Int64, "1")
# ```

convert(Int64, "1")

parse(Int64, "1")



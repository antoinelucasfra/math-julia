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

# # Conditionals
#
# #### with the `if` keyword
# In Julia, the syntax
#
# ```julia
# if *condition 1*
#     *option 1*
# elseif *condition 2*
#     *option 2*
# else
#     *option 3*
# end
# ```
#
# allows us to conditionally evaluate one of our options.
# <br><br>
# For example, we might want to implement the FizzBuzz test: given a number, N, print "Fizz" if N is divisible by 3, "Buzz" if N is divisible by 5, and "FizzBuzz" if N is divisible by 3 and 5. Otherwise just print the number itself! Enter your choice for `N` here:

N = 11445

if (N % 3 == 0) && (N % 5 == 0) # `&&` means "AND"; % computes the remainder after division
    println("FizzBuzz")
elseif N % 3 == 0
    println("Fizz")
elseif N % 5 == 0
    println("Buzz")
else
    println(N)
end

# #### with ternary operators
#
# For this last block, we could instead use the ternary operator with the syntax
#
# ```julia
# a ? b : c
# ```
#
# which equates to 
#
# ```julia
# if a
#     b
# else
#     c
# end
# ```

# Now let's say we want to return the larger of two numbers. Give `x` and `y` values here:

x = 3
y = 4

# Using the `if` and `else` keywords, we might write:

if x > y
    x
else
    y
end

# and as a ternary operator, the conditional looks like this:

(x > y) ? x : y

# #### with short-circuit evaluation
#
# We've already seen expressions with the syntax
# ```julia
# a && b
# ```
# to return true if both `a` and `b` are true. Of course, if `a` is false, Julia doesn't even need to know the value of `b` in order to determine that the overall result will be false. So Julia doesn't even need to check what `b` is; it can just "short-circuit" and immediately return `false`.  The second argument `b` might be a more complicated expression like a function call with a side-effect, in which case it won't even be called:

false && (println("hi"); true)

true && (println("hi"); true)

# On the other hand, if `a` is true, Julia knows it can just return the value of `b` as the overall expression. This means that `b` doesn't necessarily need evaluate to `true` or `false`!  `b` could even be an error:

(x > 0) && error("x cannot be greater than 0")

# Similarly, check out the `||` operator, which also uses short-circuit evaluation to perform the "or" operation.

true || println("hi")

# and

false || println("hi")

# ### Exercises
#
# #### 5.1 
# Write a conditional statement that prints a number if the number is even and the string "odd" if the number is odd.

x = 3
if Bool(x & 1)
    println("odd")
else
    println(x)
end

# #### 5.2 
# Rewrite the code from 5.1 using a ternary operator.

Bool(x & 1) ? println("odd") :  println(x)


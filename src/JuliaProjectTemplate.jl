module JuliaProjectTemplate

"""
    add(x, y)

Computes the sum between `x` and `y`.

# Arguments
* `x`: First number to add.
* `y`: Second number to add.

# Examples
```julia
julia> z = add(1, 2)
3
```
"""
add(x::T, y::T) where {T <: Number} = x + y
add(x, y) = add(promote(x, y)...)

"""
    subtract(x, y)

Computes the difference between `x` and `y`.

# Arguments
* `x`: First number to subtract.
* `y`: Second number to subtract.

# Examples
```julia
julia> z = subtract(1, 2)
-1
```
"""
subtract(x::T, y::T) where {T <: Number} = x - y
subtract(x, y) = subtract(promote(x, y)...)

"""
    multiply(x, y)

Computes the product between `x` and `y`.

# Arguments
* `x`: First number to multiply.
* `y`: Second number to multiply.

# Examples
```julia
julia> z = multiply(1, 2)
2
```
"""
multiply(x::T, y::T) where {T <: Number} = x * y
multiply(x, y) = multiply(promote(x, y)...)

"""
    divide(x, y)

Computes the quotient between `x` and `y`.

# Arguments
* `x`: First number to divide.
* `y`: Second number to divide.

# Examples
```julia
julia> z = divide(1, 2)
0.5
```
"""
divide(x::T, y::T) where {T <: Number} = x / y
divide(x, y) = divide(promote(x, y)...)

"""
    factorial(n)

Computes the factorial of `n`.

`` n! = n \\cdot (n - 1) \\cdot (n - 2) \\cdot ... \\cdot 1. ``

# Arguments
* `n`: Number to compute the factorial of.

# Examples
```julia
julia> z = factorial(5)
120
```
"""
myfactorial(n::T) where {T <: Integer} = n <= 1 ? 1 : n * myfactorial(n - 1)

"""
    fibonacci(n)

Computes the `n`th Fibonacci number.

`` F_0 = 0, ``
`` F_1 = 1, ``
`` F_n = F_{n - 1} + F_{n - 2}. ``

# Arguments
* `n`: Number to compute the Fibonacci number of.

# Examples
```julia
julia> z = fibonacci(10)
55
```
"""
fibonacci(n::T) where {T <: Integer} = n <= 1 ? n : fibonacci(n - 1) + fibonacci(n - 2)

export add, subtract, multiply, divide, myfactorial, fibonacci

end # module

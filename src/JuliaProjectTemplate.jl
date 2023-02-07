module JuliaProjectTemplate

"""
    add(x, y)

Computes the sum between `x` and `y`.
"""
add(x::T, y::T) where {T<:Number} = x + y
add(x, y) = add(promote(x, y)...)

"""
    subtract(x, y)

Computes the difference between `x` and `y`.
"""
subtract(x::T, y::T) where {T<:Number} = x - y
subtract(x, y) = subtract(promote(x, y)...)

"""
    multiply(x, y)

Computes the product between `x` and `y`.
"""
multiply(x::T, y::T) where {T<:Number} = x * y
multiply(x, y) = multiply(promote(x, y)...)

"""
    divide(x, y)

Computes the quotient between `x` and `y`.
"""
divide(x::T, y::T) where {T<:Number} = x / y
divide(x, y) = divide(promote(x, y)...)

"""
    factorial(n)

Computes the factorial of `n`.
`` n! = n \\cdot (n - 1) \\cdot (n - 2) \\cdot ... \\cdot 1 ``
"""
myfactorial(n::T) where {T<:Integer} = n <= 1 ? 1 : n * factorial(n - 1)

"""
    fibonacci(n)

Computes the `n`th Fibonacci number.
`` F_n = F_{n - 1} + F_{n - 2} ``
"""
fibonacci(n::T) where {T<:Integer} = n <= 1 ? n : fibonacci(n - 1) + fibonacci(n - 2)


export add, subtract, multiply, divide, myfactorial, fibonacci

end # module

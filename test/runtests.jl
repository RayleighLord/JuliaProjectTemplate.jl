using JuliaProjectTemplate
using Test

@testset "Basic operations" begin
    @test add(1, 2) == 3
    @test add(2.0, 7) == 9.0
    @test subtract(1, 2) == -1
    @test subtract(2.0, 7) == -5.0
    @test multiply(1, 2) == 2
    @test multiply(2.0, 7) == 14.0
    @test divide(1, 2) == 0.5
    @test divide(2.0, 7) ≈ 0.2857142857142857
end

@testset "Factorial" begin
    @test factorial(0) == 1
    @test factorial(1) == 1
    @test factorial(2) == 2
    @test factorial(3) == 6
    @test factorial(4) == 24
    @test factorial(5) == 120
    @test factorial(6) == 720
    @test factorial(7) == 5040
    @test factorial(8) == 40320
    @test factorial(9) == 362880
    @test factorial(10) == 3628800
end

@testset "Fibonacci" begin
    @test fibonacci(0) == 0
    @test fibonacci(1) == 1
    @test fibonacci(2) == 1
    @test fibonacci(3) == 2
    @test fibonacci(4) == 3
    @test fibonacci(5) == 5
    @test fibonacci(6) == 8
    @test fibonacci(7) == 13
    @test fibonacci(8) == 21
    @test fibonacci(9) == 34
    @test fibonacci(10) == 55
end

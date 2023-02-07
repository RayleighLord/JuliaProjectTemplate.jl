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
    @test myfactorial(0) == 1
    @test myfactorial(1) == 1
    @test myfactorial(2) == 2
    @test myfactorial(3) == 6
    @test myfactorial(4) == 24
    @test myfactorial(5) == 120
    @test myfactorial(6) == 720
    @test myfactorial(7) == 5040
    @test myfactorial(8) == 40320
    @test myfactorial(9) == 362880
    @test myfactorial(10) == 3628800
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

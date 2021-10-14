2 + 2 

3 + 5

five = 5

@code_llvm 2 + 1

@time[1 + 2 for i in 1:1000]

(1 + 2)::Int64

typeof(2.6) <: Number

typeof(3) <: Any

typeof(cos) <: Function

function monte_carlo_integration(f::Function, a::Real, b::Real, n::Int)
    Δx = (b-a) / n

    Σ = 0.0
    for _  in 1:n
        Xi = a + (b - a)*rand()
        Σ += f(Xi)
    end
    
    return println("The result is: ", Δx * Σ)
end    

function f(x::Real)
    return exp(x^2 + 1)    
end

monte_carlo_integration(f, 0, 1, 1000)


using Pkg
# to list all installed packages
Pkg.installed()

Pkg.add("Calculus")

# to use a package:
using Calculus

derivative(x -> sin(x), 1.0)

Pkg.add("Plots");
Pkg.add("GR");

using Plots

plot([cumsum(rand(500) .- 0.5), cumsum(rand(500) .- 0.5)])

x = 1:10
y = rand(10)
plot(x, y)

plot(f, -3, 3)

plot(cos, -2*pi, 2*pi, title= "Cos(x)", xlabel="x", ylabel="Cos(x)")

Plots.PlotlyBackend()

# Same Plot
plot(f, -3, 3)
plot!(sin, -pi,pi)
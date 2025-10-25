using MLJ, MLJLinearModels, RDatasets, DataFrames, Plots, StatsBase, PrettyPrinting 
import DataFrames:describe, select, Not, rename! 
import RDatasets: dataset

LinearRegressor = @load LinearRegressor pkg=MLJLinearModels
boston = dataset("MASS", "Boston") 
first(boston, 10)
last(boston, 20) 

describe(boston, :mean, :std, :eltype) 
data = coerce(boston, autotype(boston, :discrete_to_continuous)) 

X = select(data, Not(:MedV))
y = data.MedV 

linreg = LinearRegressor()

X_uni = select(X, :LStat)
mach_uni = MLJ.machine(linreg, X_uni, y) 
MLJ.fit!(mach_uni)

fp = fitted_params(mach_uni)
@show fp.coefs
@show fp.intercept

plot(X.LStat, y ,seriestype=:scatter, markershape=:circle, legend=true, size=(400,500))
Xnew = (LStat = collect(range(extrema(X.LStat)...,length=150)),)
plot!(Xnew.LStat, MLJ.predict(mach_uni, Xnew), linewidth=5, color=:red)

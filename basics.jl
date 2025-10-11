# using Pkg
# Pkg.add("Decimals")
using Statistics
using Decimals
println(typeof(5.6)) 
# 0x123
println(0x47a)
bitstring(0x45a)

typeof(pi)
x = 1//4 + 3//5
println(numerator(x))
println(denominator(x)) 


round(pi, digits=100)
#3 > 2
iseven(4)
isodd(23)

sin(3.4)
sinh(12)
asin(0.56)
println(div(555, 17))
mod(77,12)


#String Manipulation
"A dog is mans bets friend"[1:3] #Slicing
"A dog is mans bets friend"[start:2:end] #[start:step:end] -> Start and end are keywords

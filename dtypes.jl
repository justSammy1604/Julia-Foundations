 # Dictionaries
new_dict = Dict("one"=>1, "two"=> 2, "three"=>3)
array_dict = Dict(["nine"=>9, "ten"=>10])
tuplist = Dict([("four",4), ("five",5), ("six",6)])
println(new_dict)
println(array_dict)
println(tuplist)
haskey(new_dict, "two")

values(array_dict)
keys(tuplist)

for (a,b) in array_dict
println("The key is $a and the key is $b")
end

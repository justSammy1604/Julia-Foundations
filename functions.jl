#Funtions
f(x) = 2x + 1
f(4.3)

area_circle(r) = 2 * pi * r^2

#Anonymous Functions
map(x->2x+3, 3:9)

a="aabb" 
b="acbc"

function hamm_dist(s, t)
Base.@assert length(s) == length(t)
num_errors=0
for (aa, bb) in zip(s,t)
num_errors += aa != bb ? 1 : 0 
end
num_errors 
end

hamm_dist(a, b)


s = "GTCA"
t = "TGAC"

complement = Dict("A"=>"T", "C"=>"G", "T"=>"A", "G"=>"C")

[ch for ch in reverse(s)]

rev_complement(s) = [complement[string(dch)] for dch in reverse(s)] |> join
#Pipe operator |>, similar to that of R
rev_complement("ATGCTAG")

cgcontent(dna::String) = count(i -> i in "CG", dna) / length(dna)
cgcontent("ATGACCTAGATCG")

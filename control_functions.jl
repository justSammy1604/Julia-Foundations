x = 5
# If Statements / Elseif
if x > 3 "yes" else "no" end
height = 180
if height < 160
"Short"
elseif height < 190 
"Average"
else
"Tall"
end 

#While Loop
i=10
while i>0
println(i)
i-=1
end

#For Loop
for i in 1:2:26
println("Integer division: ", div(i, 3))
println(i / 3.5)
end

for word in "θΣ"
println(word)
end

# List comprehension like Python
[string(x+1,x^2) for x in 1:1:10]

#Enumerate function / Zip works similarly
for (a,b) in enumerate(3:3:20)
println(a, " ", b)
end

collect(enumerate(1:1:10))

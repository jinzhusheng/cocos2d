a = {p =print}
a.p("Hello world")

print = math.sin
a.p(print(1))



sin = a.p
sin(10,20)

function foo( x )  return 2*x end

foo = function ( x ) return 2*x end

network ={
	{  name ="grauna", IP = "210.26.30.34" },
	{  name ="arraial" , IP ="210,26,30,23"},
	{name ="lua" ,IP ="210,26,23,12"},
	{name ="derain" , IP = "210.36,23,20"},

}

table.sort (network,function ( a,b )
	return (a.name>b.name)
end )



function eraseTerminal()
	io.write("\27[2j")
end

function mark( x,y )
	io.write(string.format("\27[%d;%dH",y,x))
end

TermSize ={w = 80,h =24}

function plot (f)
   eraseTerminal()
   for i=1,TermSize.w do
       local x = (i/TermSize.w)*2 - 1
       local y = (f(x) + 1)/2 * TermSize.h
       mark(i, y)
end

io.read()  

end


plot(function (x) return math.sin(x*2*math.pi) end)


names ={"pater","paual","mary"}
grades ={mary =10,paual = 7 ,pater = 8}
table.sort (names, function (n1 ,n2 )
	return grades[n1] >grades[n2]
end )





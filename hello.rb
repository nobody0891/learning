require_relative 't'

#include T

l = {one: 1, two: 2, three: 3, four: 4, five: 5}

for key,value in l do
	puts key,value
end


#puts (T.area(10))

#puts (T::CON)

#puts (T::Pi)

response = get("http://www.google.com")

puts (response)

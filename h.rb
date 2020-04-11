require_relative 'request'

con = Connection.new("www.google.com")

con.get

data = con.response

puts con.resp

input = gets.chomp

if inputs == "yes"
	puts data
end


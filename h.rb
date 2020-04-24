require_relative 'request'

con = Connection.new("www.google.com")

con.get

data = con.response

puts con.resp

input = gets.chomp

if input == "yes"
	puts data
else
	puts "exiting"
end


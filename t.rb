require "net/http"


=begin
module T

	CON = 100
	Pi = 3.141
	def area radius
		return Pi*(radius**2)
	end
end
=end
proxy = "127.0.0.1"
port = 9050

def get(url)
	uri = URI(url)
	Net::HTTP.get(uri)
end


require 'socket'

HTTP_PORT = 80
HTTPS_PORT = 443


$r = {get: "GET",put:"PUT",post: "POST"}
$res = {index: "/"}

class Connection

	def initialize(host)
		@host = host
		@s = TCPSocket.new @host,HTTP_PORT
	end

	def get(location = nil)
		if location
			@@location = location
		else
			@@location = $res[:index]
		end
		@@requ_type = $r[:get]
		@@req = @@requ_type << " " << @@location
		puts @@req
		@s.puts(@@req)
		return nil
	end

	def response
		@l = []
		while true do
			#l = []
			@l << @s.gets
			break if @s.gets == nil		
		end
		@l
	end

	def resp
		@l[0]

	end

end


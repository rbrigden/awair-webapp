class MesssageAPI

	SERVER = ""

	def get_new_message
		if result = HTTParty.get(SERVER)
			return JSON.parse(result)["message"]
		else
			return "could not fetch from server :("
		end
	end

	def self.update
		if get_new_message.class == Hash
			Message.create(body:message["body"], )

	end

end
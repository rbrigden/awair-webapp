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
		20.times do |t|
			Message.create(body:"uhdueufuheufhue", transcribed_at: Time.zone.now, message_type: 'fire', locale: Locale.where({city:'San Francisco'}).first)
			sleep(30)
		end
		# if get_new_message.class == Hash
		# 	Message.create(body:message["body"], )
	end

end
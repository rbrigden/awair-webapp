module MessagesHelper


	SERVER = "http://23.102.177.0:7080/"

	def get_new_message
		if result = HTTParty.get(SERVER)
			return JSON.parse(result)
		else
			return "could not fetch from server :("
		end
	end

	def message_update
		40.times do |t|
			result = get_new_message
			result.each do |block|
				message = block["message"]
				Message.create({body: message["body"], 
								transcribed_at: message["transcribed_at"], 
								locale: Locale.where({city:message["locale"]}).first, 
								message_type: message["message_type"], 
								confidence: message["confidence_%"]})
			end

			sleep(15)
		end

	end
end

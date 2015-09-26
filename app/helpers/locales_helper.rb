
module LocalesHelper


	def get_locale(zipcode)
		ZipCodes.identify(zipcode)
	end
		

end

class Message < ActiveRecord::Base

	belongs_to :locale, dependent: :destroy

	validate


	
end

class Locale < ActiveRecord::Base

	has_many :messages

	validates :city, presence: true, uniqueness: true


end

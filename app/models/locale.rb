class Locale < ActiveRecord::Base

	has_many :messages

	validates :body, presence: true, uniqueness: true


end

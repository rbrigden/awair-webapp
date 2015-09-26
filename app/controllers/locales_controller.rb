class String
	def is_number?
  		self.count("0-9") > 0
	end
end


class ZipForm
	include ActiveModel::Validations

	validates_presence_of :zip, :unless => :city?
	validates_format_of :zip, :with => /^\d{5}(-\d{4})?$/, :multiline => true, :message => "zip code should be in the form 12345 or 12345-1234", :unless => :city?
	validates_presence_of :city, :unless => :zip?

	attr_accessor :zip
	attr_accessor :city

	def initialize(result)
		@result = result
		@zip 
		@city
		zip_or_city
	end

	def city?
		!@city.nil?
	end

	def zip?
		!@zip.nil?
	end

	def zip_or_city
		if @result.is_number?
			@zip = @result
		else
			@city = @result
		end
	end


end

class LocalesController < ApplicationController

	include LocalesHelper

	def welcome
	end

	def find_locale
		@result = ZipForm.new(params[:zip])
		if @result.validate
			puts "valid"
			city = ""
			if @result.zip.nil?
				city = @result.city.split(" ").map {|word| word.capitalize}.join(' ')
				puts 'tried city'
			elsif geo = ZipCodes.identify(@result.zip)
				city = geo[:city]
				puts 'tried zip'

			else
				redirect_to locales_path
			end

			if @locale = Locale.where({city: city}).first
				redirect_to @locale
			else
				redirect_to locales_path
			end
		else
			redirect_to locales_path
		end
		@result.errors
		
	end

	def new
		@locale = Locale.new
	end

	def show
		@locale = Locale.find(params[:id])
	end

	def index
		@locales = Locale.all
	end


	def create
		@locale = Locale.new(locale_params)
		@locale.save
	end

	def edit
		@locale = Locale.find(params[:id])
	end

  private

  def locale_params
    params[:locale].permit(:city, :state)
  end
end

class LocalesController < ApplicationController


	def new
		@locale = Locale.new
	end

	def show
	end

	def index
		@locales = Locale.all
	end


	def create
		@locale = Locale.new(params[:id])

	end

	def edit
	end

end

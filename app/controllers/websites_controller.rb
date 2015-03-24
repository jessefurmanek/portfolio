class WebsitesController < ApplicationController
	def new
		@website = Website.new
	end

	def create
		@website = Website.new(website_params)
	end

	def index
		@websites = Website.all
		@categories = Category.all
	end

private
	def website_params
		params.require(:website).permit(:title, :description, :url, :screenshot)
	end	

end

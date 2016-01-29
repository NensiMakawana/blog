class BooksController < ApplicationController
	def index
		@books=Book.all
		#render inline: "<h1>Hello</h1>"
		#render plain: "OK"

		
		#render html: "<b>Helloo....Neno</b>".html_safe
		#render json: @books
		#render xml: @books
		##render js: "alert('Hello....rails');"

		#render body: "raw"

		
	end

end

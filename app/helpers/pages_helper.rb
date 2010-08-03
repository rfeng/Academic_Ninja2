module PagesHelper

	def index
		@page.documents = Document.find(params[:all])
	end
end

class DocumentsController < ApplicationController

	def index
		@documents = Document.find(params[:all])
	end

	def create
		@page = Page.find(params[:page_id]
		@document = @page.documents.create!(params[:document])
		redirect_to @page
	end

end

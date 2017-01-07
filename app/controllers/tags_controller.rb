class TagsController < ApplicationController

	before_filter :require_login, except: [:create]

	def index
		@tags = Tag.all
	end

	def show
			@tag = Tag.find(params[:id])
	end

	def destroy
			@tag = Tag.find(params[:id])
			@tag.destroy

			redirect_to tags_path()
	end

end

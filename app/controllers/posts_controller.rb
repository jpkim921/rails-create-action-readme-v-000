class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
		# redirect_back(fallback_location: new_post_path)
	end

	def create

		if @post = Post.create(title: params[:title], description: params[:description])
			redirect_to post_path(@post)
		else
			redirect_back(fallback_location: new_post_path)
		end
	end


end

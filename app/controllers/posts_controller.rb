class PostsController < ApplicationController
	#Get /
	def index
		@posts =Post.all.order created_at: :DESC 
	end

	#GET /posts/:id
	def show
		begin
			@post = Post.find params[:id]
		rescue ActiveRecord::RecordNotFound => e
			redirect_to '/404'
		end
	end

	#GET /posts/new
	def new
		@post = Post.new
	end

	#Post /posts
	def create
		@post = Post.new(post_params)

		if @post.save
			redirect_to @post
		else
			redirect_to root_path
		end
	end

	private
		def post_params
			params.require(:post).permit(:title, :body)
		end


end

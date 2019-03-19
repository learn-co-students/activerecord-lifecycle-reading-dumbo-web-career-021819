class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def show
		set_post
	end

	def new
		@post = Post.new
	end

	def create
	  @post = Post.create(post_params)
	  redirect_to @post
	end

	def edit
	  set_post
	end

	def update
	  set_post
	  @post.update(post_params)
	  redirect_to @post
	end

	private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :description)
  end

end

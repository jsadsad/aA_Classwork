class PostsController < ApplicationController

  before_action :require_logged_in, only: [:create, :edit, :destroy]

  def new
    @post = Post.new
    @current_id = current_user.id
    render :new
  end

  def create
    # debugger
    @post = current_user.posts.create(post_params)
    # @post.sub_id = current_user.sub_id
    # @post.author_id = current_user.id
    if @post.save
      redirect_to post_url(@post)
    else
      flash[:errors]
      render :new
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :url, :content, :author_id, sub_ids: [])
  end
end

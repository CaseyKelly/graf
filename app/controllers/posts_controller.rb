class PostsController < ApplicationController

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(post_params)
      if @post.save
        redirect_to post_path(@post), notice: 'Post was successfully created.'
      else
        render :index
      end
  end

  def post_params
    params.require(:post).permit(:headline, :subhead, :byline, :text_body)
  end

end

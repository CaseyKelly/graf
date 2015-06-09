class PostsController < ApplicationController

  def show
    @post = Post.find(params[:id])
    render layout: 'presentation'
  end

  def create
    @post = Post.new(post_params)
      if @post.save
        redirect_to post_path(@post), notice: 'Post was successfully created.'
      else
        redirect_to root_path
      end
  end

  def post_params
    params.require(:post).permit(:headline, :subhead, :byline, :main_body, :photo_url)
  end

end

class WelcomeController < ApplicationController

  def index
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
      if @post.save
        redirect_to post_path(@post), notice: 'Post was successfully created.'
      else
        render :new
      end
  end

end

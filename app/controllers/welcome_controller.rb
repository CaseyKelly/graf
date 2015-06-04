class WelcomeController < ApplicationController

  def index
    @post = Post.new
  end

end

class HomeController < ApplicationController
  def index
    if logged_in?
      @post  = current_user.posts.build
      @feed_items = current_user.feed.page(params[:page])
    end
  end
end

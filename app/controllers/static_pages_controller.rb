class StaticPagesController < ApplicationController
  def home
  end

  def about
    @micropost = current_user.microposts.build if logged_in?
    @feed_items = current_user.feed.paginate(page: params[:page])
  end

  def contact
  end

  def setting
  end

  def product
  end

  def products
  end
end

class StaticPagesController < ApplicationController
  def home
  end

  def about
    @micropost = current_user.microposts.build if logged_in?
  end

  def contact
  end

  def setting
  end

  def product
  end
end

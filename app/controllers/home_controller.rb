class HomeController < ApplicationController
  skip_before_action :login_required, only: [:index]
  
  def index
    @blogs = Blog.order(id: :desc).limit(6)
  end

  def ruby
    @blogs = current_user.favorite_blogs.where(ruby_rails: "Ruby")
  end
  
  def rails
    @rails = current_user.favorite_blogs.where(ruby_rails: "Rails")
  end
end

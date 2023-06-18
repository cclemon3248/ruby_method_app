class HomeController < ApplicationController
  skip_before_action :login_required, only: [:index]
  
  def index
    @blogs = Blog.where(user_id: current_user).order(id: :desc).limit(6)
  end

  def ruby
    @blogs = current_user.blogs.where(ruby_rails: "Ruby")
  end
  
  def rails
    @rails = current_user.blogs.where(ruby_rails: "Rails")
  end
end

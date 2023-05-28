class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  before_action :login_required
  before_action :set_q

  private

    def set_q
      @q = Blog.ransack(params[:q])
    end

    def login_required
      redirect_to new_session_path unless current_user
    end
end

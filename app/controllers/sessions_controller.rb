class SessionsController < ApplicationController
  skip_before_action :login_required, only: [:new, :create, :guest_login]
  
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:notice] = 'ログインしました'
      redirect_to user_path(user.id)
    else
      flash.now[:danger] = 'ログインに失敗しました'
      render :new
    end
  end

  def guest_login
    user = User.find_or_create_by(email: "guest@example.com") do |user|
      user.name = "guest"
      user.password = SecureRandom.hex(8)
    end
    session[:user_id] = user.id
    redirect_to user, notice: "ゲストユーザーとしてログインしました。"
  end

  def destroy
    session.delete(:user_id)
    flash[:notice] = 'ログアウトしました'
    redirect_to new_session_path
  end
end

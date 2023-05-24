class FavoritesController < ApplicationController
  def create
    blog = Blog.find(params[:blog_id])
    favorite = current_user.favorites.create(blog_id: params[:blog_id])
    redirect_to blog, notice: "お気に入り登録しました"
  end

  def destroy
    blog_id = current_user.favorites.find_by(id: params[:id]).blog_id
    blog = Blog.find(blog_id)
    favorite = current_user.favorites.find_by(id: params[:id]).destroy
    redirect_to blog, notice: "お気に入り解除しました"
  end
end

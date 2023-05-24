class FavoritesController < ApplicationController
  def index
    @blogs = current_user.favorite_blogs.where(ruby_rails: "Ruby")
    @rails = current_user.favorite_blogs.where(ruby_rails: "Rails")
  end
  
  def create
    blog = Blog.find(params[:blog_id])
    favorite = current_user.favorites.create(blog_id: params[:blog_id])
    redirect_to blog, notice: "お気に入り登録しました"
  end

  def destroy
    favorite = current_user.favorites.find_by(id: params[:id])
    blog = favorite.blog
    favorite.destroy
    redirect_to blog, notice: "お気に入り解除しました"
  end
end

class ComprehensionsController < ApplicationController
  def create
    blog = Blog.find(params[:blog_id])
    current_user.comprehensions.create(blog_id: params[:blog_id])
    redirect_to blog, notice: "チェックを入れました"
  end

  def destroy
    comprehension = current_user.comprehensions.find_by(id: params[:id])
    blog = comprehension.blog
    comprehension.destroy
    redirect_to blog, notice: "チェックを外しました"
  end
end

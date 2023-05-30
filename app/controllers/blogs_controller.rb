class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]

  def index
    @blogs = Blog.where(ruby_rails: 'Ruby')
    @rails = Blog.where(ruby_rails: 'Rails')
  end
  
  def new
    @blog = Blog.new
  end

  def create
    @blog = current_user.blogs.build(blog_params)
    if params[:back]
      render :new
    else
      if @blog.save
        redirect_to blogs_path, notice: "記事作成をしました！"
      else
        render :new
      end
    end
  end

  def show
    @favorite = current_user.favorites.find_by(blog_id: @blog.id)
    @comprehension = current_user.comprehensions.find_by(blog_id: @blog.id)
  end

  def edit
  end

  def update
    if @blog.update(blog_params)
      redirect_to @blog, notice: "記事を編集しました！"
    else
      render :edit
    end
  end

  def destroy
    @blog.delete
    redirect_to blogs_path, notice: "記事を削除しました！"
  end

  def confirm
    @blog = Blog.new(blog_params)
  end

  def search
    search = @q.result.where(name: params[:q][:name])
    @blogs = search.where(ruby_rails: 'Ruby')
    @rails = search.where(ruby_rails: 'Rails')
  end

  private

    def set_blog
      @blog = Blog.find(params[:id])
    end
    
    def blog_params
      params.require(:blog).permit(:name, :content, :code1, :code2, :code3, :ruby_rails)
    end
end

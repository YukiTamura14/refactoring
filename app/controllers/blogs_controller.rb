class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]

  def index
    @blogs = Blog.latest
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.create(blog_params)
    if @blog.save
       # @blog.title_change
       redirect_to blogs_path, notice: "ブログを作成しました！"
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @blog.save
      redirect_to blogs_path, notice: "ブログを編集しました！"
    else
      render :edit
    end
  end

  def destroy
    @blog.destroy
    redirect_to blogs_path, notice:"ブログを削除しました！"
  end

  def confirm
    @blog = Blog.new(blog_params)
  end

  private
  def blog_params
    params.require(:blog).permit(:title, :content)
  end

  def set_blog
    @blog = Blog.find(params[:id])
  end

end

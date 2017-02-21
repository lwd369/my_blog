class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def new
    @blog = Blog.new
  end

  def create
    blog = Blog.new(blog_paramas)
    blog.save
    redirect_to root_path
  end

  private
  def blog_paramas 
    params.require(:blog).permit(:title, :content)
  end
end

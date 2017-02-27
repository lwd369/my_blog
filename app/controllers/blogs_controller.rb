class BlogsController < ApplicationController
  def index
    @blogs = Blog.all.paginate(page: params[:page] || 1).order(created_at: :desc)
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
    params.require(:blog).permit(:title, :content, :banner_image)
  end
end

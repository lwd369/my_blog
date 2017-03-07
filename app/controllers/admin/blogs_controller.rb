class Admin::BlogsController < ApplicationController
  
  before_action :require_login, only:[:new, :create]

  def new
    @blog = Blog.new
  end

  def create
    blog = Blog.new(blog_paramas)
    blog.save
    redirect_to root_path
  end

  def uptoken
      render json: {uptoken: get_qiniu_token}
  end

  private
  def blog_paramas 
    params.require(:blog).permit(:title, :content, :banner_image)
  end
end
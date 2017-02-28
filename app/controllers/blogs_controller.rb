class BlogsController < ApplicationController

  def index
    @blogs = Blog.all.paginate(page: params[:page] || 1).order(created_at: :desc)
  end

  def show
    @blog = Blog.find(params[:id])
  end
end

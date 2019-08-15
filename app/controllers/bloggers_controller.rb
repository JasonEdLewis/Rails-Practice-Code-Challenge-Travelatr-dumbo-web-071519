class BloggersController < ApplicationController
  before_action :find_blogger, only: [:show, :edit,:update, :destroy]
  
  def index
    @bloggers = Blogger.all
  end

  def show

  end

  def new
    @blogger = Blogger.new
  end

  def create
    @blogger = Blogger.create(blogger_params)
    redirect_to @blogger
  end

  def edit

  end

  def update
    @blogger.update(blogger_params)
    redirect_to @blogger
  end

  def destroy
    @blogger.destroy
    redirect_to posts_path
  end

  def find_blogger
    @blogger = Blogger.find(params[:id])
  end

  def blogger_params
    params.require(:blogger).permit(:name,:bio,:age)
  end
end

class PostsController < ApplicationController
before_action :find_post, only: [:edit,:update, :destroy]


def index
    @posts = Post.all
    @blogger = Blogger.new
end

def show
   if @post
      find_post
   else
      redirect_to post_path
   end
   @blogger = Blogger.find(params[:id])
end

def new
    @post = Post.new
end

def create
    @post = Post.create(post_params)
    redirect_to @post
end

def edit
    if Post.find(params[:id]) != nil &&  Blogger.find(params[:id]) != nil
      @post = Post.find(params[:id]) @blogger
      @blogger = Blogger.find(params[:id])
    else
      redirect_to posts_path
    end

end

def update
    @post.update(post_params)
    redirect_to @post
end

def destroy
   if @post
   @post.destroy
   else
   redirect_to posts_path
   end
end

private


def find_post
    @post = Post.find(params[:id])
end
def post_params
    params.require(:post).permit(:title, :content, :likes, :blogger_id, :destination_id)
    
end

end

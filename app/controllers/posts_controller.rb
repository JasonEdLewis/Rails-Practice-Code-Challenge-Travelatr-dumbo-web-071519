class PostsController < ApplicationController
before_action :find_post, only: [:show,:edit,:update, :destroy]


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
    @post = Post.new(post_params)
    if @post.valid?
      @post.save
    redirect_to @post
    else
      flash[:errors] = @post.errors.full_messages
      redirect_to new_post_path
    end
end

def edit
      @blogger = Blogger.find(params[:id])
end

def update
    @post.update(post_params)
    if @post.valid?
    redirect_to @post
    else
      flash[:errors] = @post.errors.full_messages
      redirect_to edit_post_path(@post)
    end

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

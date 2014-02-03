
class PostsController < ApplicationController
{"title"=>"First post!", "text"=>"This is my first post."}
def new 
end
  def create
    render text: params[:post].inspect
  end
end
def create
  @post = Post.new(params[:post])
  @post.save
  redirect_to @post
end
def show
  @post = Post.find(params[:id])
end
def index
  @posts = Post.all
end
def new
  @post = Post.new
end
 
def create
  @post = Post.new(params[:post].permit(:title, :text))
 
  if @post.save
    redirect_to @post
  else
    render 'new'
  end
end
def edit
  @post = Post.find(params[:id])
end
def update
  @post = Post.find(params[:id])
 
  if @post.update(params[:post].permit(:title, :text))
    redirect_to @post
  else
    render 'edit'
  end
end

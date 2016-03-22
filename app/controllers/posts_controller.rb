class PostsController < ApplicationController
  def index
    @posts = Post.all

  end

  def show
    @post = Post.find(params[:id])
  end

  def new #new is an action for the controller and method
  end

  def edit
    @post = Post.find(params[:id])
  end

  def create #need this to create new posts
    #@post = Post.new(params[:post]) #params gets attributes and maps them to the database, but this will give error because we need "strong parameters", so use the line inside private. Then use line below
    @post = Post.new(post_params)
    @post.user = @current_user #NEED THIS TO SAVE CURRENT_USER to print out current user on posts and comments

    if @post.save #saves model to database, returns boolean to show if post is saved or not.
      redirect_to posts_path
    else
      render 'new'#if all sections are filled out, redirect to all posts page, else, show a new form
    end
    #render plain: params[:post].inspect
    #the above line will print out the bottom line in the browser
    # {"color"=>"red", "title"=>"red line", "text"=>"it's terrible"}
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(post_params)
      #if I use post_params it will update everything, but I can also do @post.update(title: 'new title')
      redirect_to posts_path
    else
      render 'edit'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to posts_path

  end

  private
    def post_params
        params.require(:post).permit(:color, :title, :text)
    end
end

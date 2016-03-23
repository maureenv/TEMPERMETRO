class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    @comment.user = @current_user #NEED THIS TO SAVE CURRENT_USER to print out current user on posts and comments

    if @comment.save #saves model to database, returns boolean to show if post is saved or not.
      redirect_to posts_path + "##{@comment.id}" #links to the new comment that was made
    else
      render 'new'#if all sections are filled out, redirect to all posts page, else, show a new form
    end


  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end

  private
    def comment_params
      params.require(:comment).permit(:text)
    end
end

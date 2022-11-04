class CommentsController < ApplicationController
  def user_comments
    posts = Post.all
    comments = posts.map(&:comments).flatten
    @user_comments = comments.select do |comment|
      comment.author.name == params[:username]
    end
  end
end

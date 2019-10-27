class CommentsController < ApplicationController
    
    def create
        @comment = Comment.new
        @comment.user =params[:comment][:user]
        @comment.memO =params[:comment][:memo]
        @comment.post_id = params[:post_id]
        @comment.save
        redirect_to request.referrer
        
    end
end

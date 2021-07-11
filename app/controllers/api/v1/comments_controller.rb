class Api::V1::CommentsController < ApplicationController
    
    skip_before_action :logged_in?, only: [:index, :read, :create]

    def index
        comments = Comment.all
        render json: comments
    end

    def show
        comment = Comment.find(params[:id])
        render json: comment
    end

    def create
        comment = Comment.new(comments_params)
        if comment.valid?
            comment.save
            render json: comment
        else 
            render json: {errors: comment.errors.full_messages}, status: 422
        end
        
    end

    def destroy
        comment = Comment.find(params[:id])
        comment.destroy
        render json: {message: "Comment deleted"}
    end

    def update
        comment = Comment.find(params[:id])
        comment.update(comments_params)
        render json: comment
    end

    private

    def comments_params
        params.permit(:id, :user_id, :post_id, :text, :image)
    end


end

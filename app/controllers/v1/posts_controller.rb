# frozen_string_literal: true

module V1
  class PostsController < ApiController
    before_action :set_post, only: [:show, :edit, :update, :destroy]
    def index
      @posts = Post.all
      render json: @posts
    end

    def show
      render json: @post
    end

    def create
      @post = Post.new(post_params)

      if @post.save
        render json: @post
      else
        render json: { error: 'Error creating post' }, status: :unprocessable_entity
      end
    end

    def update
      if @post.update(post_params)
        render json: @post
      else
        render json: { error: 'Error updating post' }, status: :unprocessable_entity
      end
    end

    def destroy
      @post.destroy
      render json: { error: 'Destroyed post' }, status: :ok
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :description)
    end
  end
end
class CommentsController < ApplicationController

	def index 
		@comments = Comment.order('posted_time DESC')
	end

	def new
		@comment = Comment.new
	end

	def edit
		@comment = Comment.find(params[:id])
	end

	def update
		@comment = Comment.find(params[:id])
		@comment.message = params[:message]
		@comment.save
		redirect_to :action => 'index'
	end

	def show
		@comment = Comment.find(params[:id])
	end

	def destroy
		@comment = Comment.find(params[:id])
		@comment.destroy
		redirect_to :action => 'index'
	end

	def create
		@comment = Comment.new(comment_params)
		if @comment.save
			redirect_to :action => 'index'
		else
			redirect_to :action => 'new'
		end
	end

	private
		def comment_params
			params.require(:comment).permit(:name, :message)
		end
end
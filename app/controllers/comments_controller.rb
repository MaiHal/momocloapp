class CommentsController < ApplicationController

	def index 
		@comments = Comment.order('posted_time DESC')
	end

	def new
		@comment = Comment.new
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
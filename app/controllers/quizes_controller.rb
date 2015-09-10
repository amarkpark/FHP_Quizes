class QuizesController < ApplicationController
	def index
	end

	def quiz1
	end

	def quiz2
		@comments = Comment.all
	end

	#def new
	#	@comment = Comment.new
	#end

	def create
		Comment.create(comment_params)
		redirect_to root_path
	end

	private

	def comment_params
		params.require(:comment).permit(:data, :author, :email)
	end
end

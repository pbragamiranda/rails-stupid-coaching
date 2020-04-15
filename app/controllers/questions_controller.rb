class QuestionsController < ApplicationController
	def home
	end

	def ask
	end

	def answer
		@answer = ''
		if params[:question].nil?
			 @answer = ''
		elsif params[:question] == 'I am going to work'
			 @answer = 'Great!'
		elsif params[:question].include? '?'
			 @answer = 'Silly question, get dressed and go to work!'
		else
			 @answer = "I don't care, get dressed and go to work!"
		end
	end
end

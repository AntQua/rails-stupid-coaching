class QuestionsController < ApplicationController
  def ask
  end

  def answer
    stop_message = "I am going to work!"

    if params[:question] == stop_message || params[:question] == stop_message.upcase
      @answer = "Good Boy!"
    elsif params[:question].end_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end

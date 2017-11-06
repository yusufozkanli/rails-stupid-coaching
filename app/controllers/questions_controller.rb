class QuestionsController < ApplicationController

ANSWER = ["Great!", "Silly question, get dressed and go to work!", "I don't care, get dressed and go to work!"]

  def ask
  end

  def answer
    @question_type = params[:question_type]
    if @question_type == "I am going to work"
      @answer = ANSWER[0]
    elsif @question_type.include? "?"
      @answer = ANSWER[1]
    else
      @answer = ANSWER[2]
    end
  end
end

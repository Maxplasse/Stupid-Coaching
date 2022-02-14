class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @answers = ['Silly question, get dressed and go to work!', 'Great!', "I don't care, get dressed and go to work!"]
    @question = params[:question]
    if @question.include?("?")
      @response = @answers[0]
    elsif @question == "I am going to work"
      @response = @answers[1]
    else
      @response = @answers[2]
  end
end
end

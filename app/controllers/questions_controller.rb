class QuestionsController < ApplicationController
  def ask
    @question = params[:question]
  end

  def answer
    @question = params[:question]
    answers = ["Great!", "Silly question, get dressed and go to work!", "I don't care, get dressed and go to work!"]

    if @question == "I am going to work"
      @answer = answers[0]

    elsif @question[-1] == "?"
      @answer = answers[1]

    else
      @answer = answers[2]
    end
  end

end

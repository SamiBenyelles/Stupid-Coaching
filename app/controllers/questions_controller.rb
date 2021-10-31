class QuestionsController < ApplicationController
  def ask
    @question
  end

  def answer
    @answer = []
    if params[:question] == 'I am going to work'
      @answer = 'Great!'
    elsif params[:question].include? '?'
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = 'I dont care, get dressed and go to work!'
    end
  end
end

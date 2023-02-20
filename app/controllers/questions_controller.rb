class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = params[:answer]
    if @answer == 'I am going to work'
      @search = 'Great!'
    elsif @answer.end_with?('?')
      @search = 'Silly question, get dressed and go to work!'
    else
      @search = 'I dont care, get dressed and go to work!'
    end
  end
end

class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @response = []
    if params[:ask] == "I am going to work"
      @response = "Great!"
      return @response
    elsif params[:ask].include? "?"
      @response = "Silly question, get dressed and go to work!."
      return @response
    else
      @response = "I don't care, get dressed and go to work!"
      return @response
    end
  end
end

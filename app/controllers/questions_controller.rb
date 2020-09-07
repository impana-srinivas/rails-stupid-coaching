class QuestionsController < ApplicationController
  def ask
  end

  def coach_answer(question)
    if @question.downcase == "i am going to work right now!"
      @answer = "Great!"
    elsif @question.end_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
    return @answer
  end  
    
  def answer
    @question =  params[:question]
    @answer = coach_answer(@question)
  end 
end

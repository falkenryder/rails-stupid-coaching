class AnswersController < ApplicationController
  def show
    @question = params[:question]
    @answer = case @question
              when /i am going to work/i
                'Great!'
              when /\w+\?/
                'Silly question, get dressed and go to work!'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end

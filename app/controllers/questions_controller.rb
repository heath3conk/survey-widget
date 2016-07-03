class QuestionsController < ApplicationController

  before_action :authenticate!
  before_action :authorize!, only: [:new, :create, :edit, :patch, :delete]

  def new
    @survey = Survey.find(params[:format])
  end
  
  def show
    @question = Question.find(params[:id])
    @surveys_questions = @question.survey.questions
    this_question_position = @surveys_questions.index(@question)
    unless this_question_position == 0
      @previous_question = @surveys_questions[this_question_position-1]
    end
    unless this_question_position == @surveys_questions.length-1
      @next_question = @surveys_questions[this_question_position+1]
    end
  end

  def create
    @question = Question.new(question_params)
    @survey = Survey.find(@question.survey_id)
    if @question.save
      redirect_to show_survey_path(@survey)
    else
      redirect_to new_question_path(@survey), flash: { error: @question.errors.messages }
    end
  end

  def edit
    @question = Question.find(params[:id])
  end

  def patch
    @question = Question.find(params[:id])
    @question.update(question_params)
    redirect_to show_question_path(@question)
  end

  def delete
    question = Question.find(params[:id])
    @survey = Survey.find(question.survey_id)
    question.destroy
    redirect_to show_survey_path(@survey)
  end

  private

    def question_params
      params.require(:question).permit(:survey_id, :question_text, :choice_one, :choice_two, :choice_three, :choice_four)
    end

end
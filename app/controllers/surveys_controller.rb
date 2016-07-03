class SurveysController < ApplicationController

  def index
    @surveys = Survey.all
  end

  def new
    # @survey = Survey.new
  end

  def create
    @survey = Survey.new(survey_params)
    @survey.update(creator_id: current_user.id)
    if @survey.save
      respond_to do |format|
        # format.json { render partial: 'survey_title_row', locals: { survey: @survey } }
        format.html { redirect_to surveys_path }
      end
    # else
    #   p "survey not saved :("
    #   puts @survey.errors.messages
    #   p "~~~~~~~~~~~~~~~~~~~~~"
    #   if request.xhr?
    #     render json: { error: @survey.errors.messages }
    #   else
    #     redirect_to new_survey_path(@survey), flash: { error: @survey.errors.messages }
    #   end
    end
  end

  def show
    @survey = Survey.find(params[:id])
  end

  def patch
    @survey = Survey.find(params[:id])
    @survey.update(finalized?: true)
    if request.xhr?
      render json: { survey: @survey, questions: @survey.questions }
    else 
      redirect_to surveys_path
    end
  end

  private

    def survey_params
      params.require(:survey).permit(:title)
    end

end
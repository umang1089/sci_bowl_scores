class QuestionsController < ApplicationController
  def index
    @questions = Question.all

    render("questions/index.html.erb")
  end

  def show
    @question = Question.find(params[:id])

    render("questions/show.html.erb")
  end

  def new
    @question = Question.new

    render("questions/new.html.erb")
  end

  def create
    @question = Question.new

    @question.game_id = params[:game_id]
    @question.team_a_tossup = params[:team_a_tossup]
    @question.team_a_penalty = params[:team_a_penalty]
    @question.team_a_bonus = params[:team_a_bonus]
    @question.team_b_tossup = params[:team_b_tossup]
    @question.team_b_penalty = params[:team_b_penalty]
    @question.team_b_bonus = params[:team_b_bonus]

    save_status = @question.save

    if save_status == true
      redirect_to("/questions/#{@question.id}", :notice => "Question created successfully.")
    else
      render("questions/new.html.erb")
    end
  end

  def edit
    @question = Question.find(params[:id])

    render("questions/edit.html.erb")
  end

  def update
    @question = Question.find(params[:id])

    @question.game_id = params[:game_id]
    @question.team_a_tossup = params[:team_a_tossup]
    @question.team_a_penalty = params[:team_a_penalty]
    @question.team_a_bonus = params[:team_a_bonus]
    @question.team_b_tossup = params[:team_b_tossup]
    @question.team_b_penalty = params[:team_b_penalty]
    @question.team_b_bonus = params[:team_b_bonus]

    save_status = @question.save

    if save_status == true
      redirect_to("/questions/#{@question.id}", :notice => "Question updated successfully.")
    else
      render("questions/edit.html.erb")
    end
  end

  def destroy
    @question = Question.find(params[:id])

    @question.destroy

    if URI(request.referer).path == "/questions/#{@question.id}"
      redirect_to("/", :notice => "Question deleted.")
    else
      redirect_to(:back, :notice => "Question deleted.")
    end
  end
end

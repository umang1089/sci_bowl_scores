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

    if params[:team_a_tossup] == "on"
      @question.team_a_tossup = 4
    else
      @question.team_a_tossup = 0
    end

    if params[:team_a_bonus] == "on"
      @question.team_a_bonus = 10
    else
      @question.team_a_bonus = 0
    end

    if params[:team_b_tossup] == "on"
      @question.team_b_tossup = 4
    else
      @question.team_b_tossup = 0
    end

    if params[:team_b_bonus] == "on"
      @question.team_b_bonus = 10
    else
      @question.team_b_bonus = 0
    end

    if params[:team_a_penalty] == "on"
      @question.team_b_penalty = 4
    else
      @question.team_b_penalty = 0
    end

    if params[:team_b_penalty] == "on"
      @question.team_a_penalty = 4
    else
      @question.team_a_penalty = 0
    end

    save_status = @question.save

    if save_status == true
      redirect_to("/games/#{@question.game_id}", :notice => "Question created successfully.")
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

    if params[:team_a_tossup] == "on"
      @question.team_a_tossup = 4
    else
      @question.team_a_tossup = 0
    end

    if params[:team_a_bonus] == "on"
      @question.team_a_bonus = 10
    else
      @question.team_a_bonus = 0
    end

    if params[:team_b_tossup] == "on"
      @question.team_b_tossup = 4
    else
      @question.team_b_tossup = 0
    end

    if params[:team_b_bonus] == "on"
      @question.team_b_bonus = 10
    else
      @question.team_b_bonus = 0
    end

    if params[:team_a_penalty] == "on"
      @question.team_b_penalty = 4
    else
      @question.team_b_penalty = 0
    end

    if params[:team_b_penalty] == "on"
      @question.team_a_penalty = 4
    else
      @question.team_a_penalty = 0
    end

    save_status = @question.save

    if save_status == true
      redirect_to("/games/#{@question.game.id}", :notice => "Question updated successfully.")
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

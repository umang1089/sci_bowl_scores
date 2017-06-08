class GamesController < ApplicationController
  def index
    @games = Game.all

    render("games/index.html.erb")
  end

  def show
    @game = Game.find(params[:id])

    render("games/show.html.erb")
  end

  def new
    @game = Game.new
    @my_teams = Team.find_by_school_id(current_school.id)

    render("games/new.html.erb")
  end

  def create
    @team_a = Team.find(params[:team_a_id])
    @team_b = Team.find(params[:team_b_id])

    @game = Game.new

    @game.team_a_id = params[:team_a_id]
    @game.team_b_id = params[:team_b_id]
    @game.team_a_score = 0
    @game.team_b_score = 0

    save_status = @game.save

    if save_status == true
      redirect_to("/games/#{@game.id}", :notice => "Game created successfully.")
    else
      render("games/new.html.erb")
    end

  end

  def edit
    @game = Game.find(params[:id])

    render("games/edit.html.erb")
  end

  def update
    @game = Game.find(params[:id])

    @game.team_a_id = params[:team_a_id]
    @game.team_b_id = params[:team_b_id]
    @game.team_a_score = params[:team_a_score]
    @game.team_b_score = params[:team_b_score]

    save_status = @game.save

    if save_status == true
      redirect_to("/games/#{@game.id}", :notice => "Game updated successfully.")
    else
      render("games/edit.html.erb")
    end
  end

  def destroy
    @game = Game.find(params[:id])

    @game.destroy

    if URI(request.referer).path == "/games/#{@game.id}"
      redirect_to("/", :notice => "Game deleted.")
    else
      redirect_to(:back, :notice => "Game deleted.")
    end
  end
end

class TeamsController < ApplicationController
  def index

    @school_id = current_school.id
    @teams = Team.where(school_id: @school_id)

    render("teams/index.html.erb")
  end

  def show
    @team = Team.find(params[:id])

    render("teams/show.html.erb")
  end

  def new
    @team = Team.new

    render("teams/new.html.erb")
  end

  def create
    @team = Team.new

    @team.school_id = params[:school_id]
    @team.tournament_id = params[:tournament_id]
    @team.player_1_name = params[:player_1_name]
    @team.player_2_name = params[:player_2_name]
    @team.player_3_name = params[:player_3_name]
    @team.player_4_name = params[:player_4_name]
    @team.player_5_name = params[:player_5_name]

    save_status = @team.save

    if save_status == true
      redirect_to("/teams/#{@team.id}", :notice => "Team created successfully.")
    else
      render("teams/new.html.erb")
    end
  end

  def edit
    @team = Team.find(params[:id])

    render("teams/edit.html.erb")
  end

  def update
    @team = Team.find(params[:id])

    @team.school_id = params[:school_id]
    @team.tournament_id = params[:tournament_id]
    @team.player_1_name = params[:player_1_name]
    @team.player_2_name = params[:player_2_name]
    @team.player_3_name = params[:player_3_name]
    @team.player_4_name = params[:player_4_name]
    @team.player_5_name = params[:player_5_name]

    save_status = @team.save

    if save_status == true
      redirect_to("/teams/#{@team.id}", :notice => "Team updated successfully.")
    else
      render("teams/edit.html.erb")
    end
  end

  def destroy
    @team = Team.find(params[:id])

    @team.destroy

    if URI(request.referer).path == "/teams/#{@team.id}"
      redirect_to("/", :notice => "Team deleted.")
    else
      redirect_to(:back, :notice => "Team deleted.")
    end
  end
end

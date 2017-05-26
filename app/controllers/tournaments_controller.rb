class TournamentsController < ApplicationController
  def index
    @tournaments = Tournament.all

    render("tournaments/index.html.erb")
  end

  def show
    @tournament = Tournament.find(params[:id])

    render("tournaments/show.html.erb")
  end

  def new
    @tournament = Tournament.new

    render("tournaments/new.html.erb")
  end

  def create
    @tournament = Tournament.new

    @tournament.name = params[:name]
    @tournament.location = params[:location]
    @tournament.date = params[:date]

    save_status = @tournament.save

    if save_status == true
      redirect_to("/tournaments/#{@tournament.id}", :notice => "Tournament created successfully.")
    else
      render("tournaments/new.html.erb")
    end
  end

  def edit
    @tournament = Tournament.find(params[:id])

    render("tournaments/edit.html.erb")
  end

  def update
    @tournament = Tournament.find(params[:id])

    @tournament.name = params[:name]
    @tournament.location = params[:location]
    @tournament.date = params[:date]

    save_status = @tournament.save

    if save_status == true
      redirect_to("/tournaments/#{@tournament.id}", :notice => "Tournament updated successfully.")
    else
      render("tournaments/edit.html.erb")
    end
  end

  def destroy
    @tournament = Tournament.find(params[:id])

    @tournament.destroy

    if URI(request.referer).path == "/tournaments/#{@tournament.id}"
      redirect_to("/", :notice => "Tournament deleted.")
    else
      redirect_to(:back, :notice => "Tournament deleted.")
    end
  end
end

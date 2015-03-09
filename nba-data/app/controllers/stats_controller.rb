require 'open-uri'

class StatsController < ApplicationController

  def index

  end

  def find_results
    @team = TeamResult.new(params[:team_abbr])
    @results = @team.results
  end


end
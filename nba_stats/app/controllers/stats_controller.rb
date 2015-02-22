class StatsController < ApplicationController

  def index
    client = NbaStats::Client.new
    @my_resource = client.scoreboard
  end

end
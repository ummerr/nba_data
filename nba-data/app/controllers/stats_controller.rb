require 'open-uri'

class StatsController < ApplicationController

  def index
    # page = Nokogiri::HTML(open("http://www.basketball-reference.com/teams/TOR/2015_games.html"))
    # @results = []

    # rows = page.css("tr")
    # rows[1..-1].each do |row|
    #   if row.css("td")[7] != nil
    #     @results << row.css("td")[7].text #row[7] is the win loss of a team for a game
    #   end
    # end
    # @results
  end

  def find_results
    @team = TeamResult.new(params[:team_name])
    p @team.results
  end

  # def something_something
  #   @team = TeamResult.new('TOR')
  #   @team.results
  # end


end
require 'csv'
require 'pry'

class Player

  def initialize(args = {})
    @name = args[:name]
    @position = args[:position]
    @age = args[:age]
    @team = args[:team]
    @games = args[:games]
    @games_started = args[:games_started]
    @minutes_played = args[:minutes_played]
    @field_goals = args[:field_goals]
    @field_goal_attempts = args[:field_goal_attempts]
    @field_goal_percentage = args[:field_goal_percentage]
  end

end

module PlayerParser


  def self.player_parse(file)
    players = []
    CSV.foreach(file, :headers => true) do |row|
      player = Player.new(
      :name => row[0],
      :position => row[1],
      :age => row[2],
      :team => row[3],
      :games => row[4],
      :games_started => row[5],
      :minutes_played => row[6],
      :field_goals => row[7],
      :field_goal_attempts => row[8],
      :field_goal_percentage => row[9])
      players << player
    end
    players
  end

end

guys = PlayerParser.player_parse("nba_data.csv")
p guys[5000]
raptors = guys.select {|player| player.team == "TOR"}
p rapors


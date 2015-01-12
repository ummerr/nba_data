require 'csv'

class Player

  attr_reader :name, :position, :age, :team, :games, :games_started, :minutes_played, :field_goals, :field_goal_attempts, :field_goal_percentage, :season, :season_end

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
    @season = args[:season]
    @season_end = args[:season_end]
  end

  def to_s
    name + position + team + season_end + field_goal_attempts
  end

end

module PlayerParser


  def self.player_parse(file)
    players = []
    CSV.foreach(file, :headers => true) do |row|
      player = Player.new(
      :name => row[0],
      :position => row[1],
      :age => row[2].to_i,
      :team => row[3],
      :games => row[4],
      :games_started => row[5],
      :minutes_played => row[6],
      :field_goals => row[7],
      :field_goal_attempts => row[8],
      :field_goal_percentage => row[9],
      :season => row[29],
      :season_end => row[30])
      players << player
    end
    players
  end

end

class Nba

  def initialize
    @all_players = PlayerParser.player_parse("nba_data.csv")
  end

end

nba = Nba.new
p nba
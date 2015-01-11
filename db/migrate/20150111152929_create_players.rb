class CreatePlayers < ActiveRecord::Migration

  def change
    create_table :players do |t|
      t.string :player_name
      t.string :position
      t.integer :age
      t.string :team_id
      t.integer :games
      t.integer :games_started
      t.integer :minutes_played
      t.integer :field_goals
      t.integer :field_goal_attempts
      t.decimal :field_goal_percentage
      t.integer :three_pointers
      t.integer :three_point_attempts
      t.decimal :three_point_percentage
      t.integer :two_pointers
      t.integer :two_point_attempts
      t.decimal :two_point_percentage
      t.decimal :effective_field_goal
      t.integer :free_throws
      t.integer :free_throw_attempts
      t.decimal :free_throw_percentage
      t.integer :offensive_rebounds
      t.integer :defensive_rebounds
      t.integer :total_rebounds
      t.integer :assists
      t.integer :steals
      t.integer :blocks
      t.integer :turn_overs
      t.integer :person_fouls
      t.integer :points
      t.integer :season_year
      t.integer :season_end_year

      t.timestamps
    end
  end

end
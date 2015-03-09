class TeamResult < ActiveRecord::Base
  attr_accessor :page, :results, :team_name

  def initialize(team_abbr)
    @page = Nokogiri::HTML(open("http://www.basketball-reference.com/teams/#{team_abbr}/2015_games.html"))
    @results = []
    @team_abbr = team_abbr
    get_rows
  end

  def get_rows
    rows = page.css("tr")
    get_results(rows)
  end

  def get_results(rows)
    rows[1..-1].each do |row|
      if row.css("td")[7] != nil
        @results << row.css("td")[7].text #row[7] is the win loss of a team for a game
      end
    end
  end

  # HAWKS_URL = "http://www.basketball-reference.com/teams/ATL/2015_games.html"
  # page = Nokogiri::HTML(open(HAWKS_URL))

end

require 'rubygems'
require 'nokogiri'
require 'open-uri'

# HAWKS_URL = "http://www.basketball-reference.com/teams/ATL/2015_games.html"
# page = Nokogiri::HTML(open(HAWKS_URL))

class TeamResults
  attr_accessor :page, :results

  def initialize
    @page = Nokogiri::HTML(open('hawks.html'))
    @results = []
    get_rows
  end

  def get_rows
    rows = page.css("tr")
    get_results(rows)
  end

  def get_results(rows)
    rows[1..-1].each do |row|
      if row.css("td")[7] != nil
        @results << row.css("td")[7].text #row 7 is the win loss of a team
      end
    end
  end

end
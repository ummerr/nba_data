require 'rubygems'
require 'nokogiri'
require 'open-uri'

HAWKS_URL = "http://www.basketball-reference.com/teams/ATL/2015_games.html"

page = Nokogiri::HTML(open(HAWKS_URL))
rows = page.css("tr")
columns = rows[1].css("td")[7].text
puts columns
p columns.class


# <td align="right">1</td>
# <td align="left" csk="2014-10-29"><a href="/boxscores/index.cgi?month=10&amp;day=29&amp;year=2014">Wed, Oct 29, 2014</a></td>
# <td align="">7:30p <span style="font-size:7px;vertical-align:baseline;">EST</span>
# </td>
# <td align=""></td>
# <td align="center"><a href="/boxscores/201410290TOR.html">Box Score</a></td>
# <td align="center">@</td>
# <td align="left" csk="TOR2014-10-29"><a href="/teams/TOR/2015.html">Toronto Raptors</a></td>
# <td align="center">L</td>
# <td align="center"></td>
# <td align="right">102</td>
# <td align="right">109</td>
# <td align="right">0</td>
# <td align="right">1</td>
# <td align="left">L 1</td>
# <td align="left"></td>
# Nokogiri::XML::NodeSet
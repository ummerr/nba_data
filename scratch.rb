columns = ["player","pos","age","bref_team_id","g","gs","mp","fg","fga","fg.","x3p","x3pa","x3p.","x2p","x2pa","x2p.","efg.","ft","fta","ft.","orb","drb","trb","ast","stl","blk","tov","pf","pts","season","season_end"]

order = columns.each.with_index {|column, index| p "#{index}. #{column}" }
order
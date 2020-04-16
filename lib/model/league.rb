class League < ActiveRecord::Base
    has_many :teams
    attr_reader :league_name


=begin
1. logic to calculate the league table is missing
2. league table is populated from statistical data of players
3. A league cannot have 2 teams from 1 user
=end


end
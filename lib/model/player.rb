class Player < ActiveRecord::Base
    has_many :draftlists
    has_many :teams, through: :draftlists

    attr_reader :player_name, :price, :player_position
    


=begin
1. API implementation missing
2. Statistical data for calculating points
=end

end

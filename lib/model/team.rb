class Team < ActiveRecord::Base
    belongs_to :user
    belongs_to :league

    has_many :draftlists
    has_many :players, through: :draftlists

    attr_reader :team_name

    #method to display Players
    def display_players
        player_names = self.players.map do |player_instance|
            player_instance["player_name"]
        end
        if player_names.length > 0
            puts "Team line-up:"
            puts  player_names
        else
            puts "There are no players in your team!"
        end
    end    


    #method to display all Players
    def display_all_players
        player_name = Players.select do |player_name|
            if player_name.length > 0
            find_player = Player.find_by(player_id)
            find_player.player_name
            end
        end
    end


=begin
1. Need to add a condition for player positions
2. limit the ammount of player per team
3. limit the budget of the team
=end
end

class User < ActiveRecord::Base
    has_many :teams

    #method to sign into the application
    def self.signing_in
        prompt = TTY::Prompt.new
        username = prompt.ask("Please enter your username:")
        password = prompt.mask("Please enter your password:")
        find_user = User.find_by(username: username, password: password)
        if find_user
            return find_user
        else
            puts "Unidentified user!"
        end
    end

    #method to create new user
    def self.creating_new_user
        prompt = TTY::Prompt.new
        username = prompt.ask("Create a username:")
        password = prompt.mask("Create a password:")
        name = prompt.ask("Enter your name:")
        if User.find_by(username: username)
            puts "Please select another username"
        else
            User.create(username: username, password: password)
        end
    end

    #method to build a new team
    def build_team
        prompt = TTY::Prompt.new
        team_name = prompt.ask("Create a team name:")
        budget = prompt.ask("Please enter your budget:")
        league_names = League.all.map do |league_instance|
            league_instance["league_name"]
            end
            if league_names.length > 0
            league_name = TTY::Prompt.new.select("Select a league:", league_names)
            found_league = League.find_by(league_name: league_name)
            Team.create(team_name: team_name, budget: budget, user_id: self.id, league_id: found_league.id)
        end
    end

    #method to display a team

    def display_users_teams
        team_names = self.teams.map do |team_instance|
            team_instance["team_name"]
        end
        if team_names.length > 0
            team_name = TTY::Prompt.new.select("Select your team:", team_names)
            found_team = Team.find_by(team_name: team_name)
            found_team.display_players
        else
            puts "No valid teams to be displayed!"
        end
    end

    #method to add players to my Team:
    def add_players_to_team
        users_team_players = []
        self.teams.each do |team_instance|
            team_instance.players.each do |player_instance|  
                users_team_players.push(player_instance)    
            end  
        end
        player_names = Player.all.select do |player|
            !users_team_players.include?(player)
        end
        draft_players_available = player_names.map do |player|
            "#{player["player_name"]} + #{player["price"]} + #{player["player_position"]}"
        end
        selected_player = TTY::Prompt.new.select('Draft Players:', draft_players_available, filter: true)
        name = selected_player.split(" + ").first
        draft_pick = Player.find_by(player_name: name)
        
        team_names = self.teams.map do |team_instance|
            team_instance["team_name"]
        end
        if team_names.length > 0
            team_name = TTY::Prompt.new.select("Select a team:", team_names)
            found_team = Team.find_by(team_name: team_name)
            Draftlist.create(player_id: draft_pick.id, team_id: found_team.id)
        end
    end
    
    #method to create league

    def create_league
        prompt = TTY::Prompt.new
            league_name = prompt.ask("Create a league name:")
        if League.find_by(league_name: league_name)
            puts "Please select another league name!"
        else
            League.create(league_name: league_name)
        end
    end    



    #method to delete league
    def delete_league
=begin
The logic for this method has not been created.
Once the flow is properly initiated this method can initialized.
Since running this method might delete league which are not created by the same user.
=end       
    end

    
     #method to delete a Team
    def remove_team
        team_names = self.teams.map do |team_instance|
            team_instance["team_name"]
        end
        if team_names.length > 0
            team_name = TTY::Prompt.new.select("Delete your team:", team_names)
            found_team = Team.find_by(team_name: team_name)
            Team.destroy(found_team.id)
            puts "#{team_name} has been deleted!"
        end   
    end

end


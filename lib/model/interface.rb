class Interface
attr_accessor :prompt, :user

    def initialize
        @prompt = TTY::Prompt.new
    end


    #Initial Screen
    def welcome
        system "clear"
        puts"      WELCOME TO RUBY FPL  "
        puts"  ___________________________ "
        puts" |             |             |"
        puts" |___          |          ___|"
        puts" |_  |         |         |  _|"
        puts".| | |.       ,|.       .| | |."
        puts"|| | | )     ( | )     ( | | ||"
        puts"'|_| |'       `|'       `| |_|'"
        puts" |___|         |         |___|"
        puts" |             |             |"
        puts" |_____________|_____________|"
        puts" "
    end

    def signin_or_new
        answer = prompt.select("Select one of the following option:") do |menu|
        menu.choice "Sign in", -> { User.signing_in }
        menu.choice "New user", -> { User.creating_new_user }
        menu.choice "Exit", -> { puts "Come back soon!" }
        end
    end
        
    #Main Menu
    def main_menu
        system "clear"
        puts "Welcome #{user.username}"
        
        answer = prompt.select("Select one of the following option:") do |menu|
        menu.choice "Create league", -> {self.create_league}
        menu.choice "Build team", -> {self.create_team}
        menu.choice "Add players to team", -> {self.add_players}
        menu.choice "Display team", -> {self.view_teams}
        menu.choice "Delete team", -> {self.delete_team}
        menu.choice "Exit", -> { puts "See you soon!" }
        end
    end
    
    #build Team
    def create_team
        system "clear"
        sleep(1)
        user.build_team
        sleep(3)
        main_menu
    end

    #creating a league
    def create_league
        system "clear"
        sleep(1)   
        user.create_league
        sleep(3)
        main_menu 
    end

    #add Players to Team
    def add_players
        system "clear"
        sleep(1)   
        user.add_players_to_team
        sleep(3)
        main_menu
    end

    #display Team
    def view_teams
        system "clear"
        sleep(1)
        user.display_users_teams
        sleep(3)
        main_menu
    end

    #remove Team
    def delete_team
        system "clear"
        sleep(1)
        user.remove_team
        sleep(3)
        main_menu
    end

end 
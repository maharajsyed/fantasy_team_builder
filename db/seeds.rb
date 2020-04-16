Player.destroy_all
User.destroy_all
Draftlist.destroy_all
Team.destroy_all
League.destroy_all


#User_name

maharaj = User.create(username: "maharaj", password: "12345", name: "Maharaj")
tashawn= User.create(username: "tashawn", password: "12345", name: "Tashawn")
ian = User.create(username: "ian", password: "12345", name: "Ian")
matthew = User.create(username:"matthew", password: "12345", name: "Matthew")

#League

cyberleague = League.create(league_name: "Corona League")


#Team_name

blue = Team.create(team_name: "FC Blues", user_id: maharaj.id, league_id: cyberleague.id)
flamingo = Team.create(team_name: "Flamingo City", user_id: tashawn.id, league_id: cyberleague.id)
kobayashi = Team.create(team_name: "FC Kobayashi", user_id: ian.id, league_id: cyberleague.id)
galaxy = Team.create(team_name: "Galaxy United", user_id: matthew.id, league_id: cyberleague.id)

#Players

#Forwards
vardy = Player.create(player_name: "Jamie Vardy", player_position: "FWD", price: (12_000_000))
jimenez = Player.create(player_name: "Raul Jimenez", player_position: "FWD", price: (11_000_000))
kane = Player.create(player_name: "Harry Kane", player_position: "FWD", price: (14_000_000))
aubameyang = Player.create(player_name: "Pierre Aubamayang", player_position: "FWD", price: (12_000_000))
aguero = Player.create(player_name: "Sergio Aguero", player_position: "FWD", price: (16_000_000))
abraham = Player.create(player_name: "Tammy Abraham", player_position: "FWD", price: (9_000_000))
rashford = Player.create(player_name: "Marcus Rashford", player_position: "FWD", price: (10_000_000))
firmino = Player.create(player_name: "Roberto Firmino", player_position: "FWD", price: (11_000_000))

#Midfielders
mount = Player.create(player_name: "Mason Mount", player_position: "MID", price: (8_000_000))
madisson = Player.create(player_name: "James Madisson", player_position: "MID", price: (9_000_000))
richarlison = Player.create(player_name: "Richarlison", player_position: "MID", price: (10_000_000))
salah = Player.create(player_name: "Mo Salah", player_position: "MID", price: (16_000_000))
mane = Player.create(player_name: "Sadio Mane", player_position: "MID", price: (15_000_000))
pulisic = Player.create(player_name: "Christian Pulisic", player_position: "MID", price: (9_000_000))
grealish = Player.create(player_name: "Jack Grealish", player_position: "MID", price: (7_500_000))
son = Player.create(player_name: "Son Heung-min", player_position: "MID", price: (14_000_000))
sterling = Player.create(player_name: "Raheem Sterling", player_position: "MID", price: (15_000_000))
fernandez = Player.create(player_name: "Bruno Fernandez", player_position: "MID", price: (11_000_000))

#Defenders
mcguire = Player.create(player_name: "Harry Mcguire", player_position: "DEF", price: (10_000_000))
ake = Player.create(player_name: "Nathan Ake", player_position: "DEF", price: (7_500_000))
bellerin = Player.create(player_name: "Hector Bellerin", player_position: "DEF", price: (9_000_000))
walker = Player.create(player_name: "Kyle Walker", player_position: "DEF", price: (9_500_000))
digne = Player.create(player_name: "Lucas Digne", player_position: "DEF", price: (8_000_000))
laporte = Player.create(player_name: "Aymeric Laporte", player_position: "DEF", price: (11_000_000))
virgil = Player.create(player_name: "Virgil Van Dijk", player_position: "DEF", price: (14_000_000))
dunk = Player.create(player_name: "Lewis Dunk", player_position: "DEF", price: (7_000_000))
chilwell = Player.create(player_name: "Ben Chilwell", player_position: "DEF", price: (10_000_000))
arnold = Player.create(player_name: "Alexander Arnold", player_position: "DEF", price: (13_000_000))

#Goalkeepers
loris = Player.create(player_name: "Hugo Lorris", player_position: "GK", price: (12_000_000))
kepa = Player.create(player_name: "Kepa", player_position: "GK", price: (11_000_000))
alison = Player.create(player_name: "Alison", player_position: "GK", price: (14_000_000))
ederson = Player.create(player_name: "Ederson", player_position: "GK", price: (14_000_000))
degea = Player.create(player_name: "David DeGea", player_position: "GK", price: (11_000_000))

#Draftlist

Draftlist.create(player_id: pulisic.id, team_id: blue.id)
Draftlist.create(player_id: mane.id, team_id: flamingo.id)
Draftlist.create(player_id: aguero.id, team_id: kobayashi.id)
Draftlist.create(player_id: dunk.id, team_id: galaxy.id)
Draftlist.create(player_id: ederson.id, team_id: kobayashi.id)
Draftlist.create(player_id: arnold.id, team_id: blue.id)
Draftlist.create(player_id: son.id, team_id: galaxy.id)
Draftlist.create(player_id: chilwell.id, team_id: flamingo.id)
puts "Seed Completed"
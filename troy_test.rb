# Write your code here!
require 'pry'

def game_hash
{
  home: {
    team_name: "Brooklyn Nets",
    colors: ["Black", "White"],
    players: {
      "Alan Anderson" => {
        number: 0,
        shoe: 16,
        points: 22,
        rebounds: 12,
        assists: 12,
        steals: 3,
        blocks: 1,
        slam_dunks: 1,
      },
      "Reggie Evans"=>{
        number: 30,
        shoe: 14,
        points: 12,
        rebounds: 12,
        assists: 12,
        steals: 12,
        blocks: 12,
        slam_dunks: 7,
      },
      "Brook Lopez"=>{
        number: 11,
        shoe: 17,
        points: 17,
        rebounds: 19,
        assists: 10,
        steals: 3,
        blocks: 1,
        slam_dunks: 15,
      },
      "Mason Plumlee"=>{
        number: 1,
        shoe: 19,
        points: 26,
        rebounds: 12,
        assists: 6,
        steals: 3,
        blocks: 8,
        slam_dunks: 5,
      },
      "Jason Terry"=>{
        number: 31,
        shoe: 15,
        points: 19,
        rebounds: 2,
        assists: 2,
        steals: 4,
        blocks: 11,
        slam_dunks: 1,
      },
    },
  },

  away: {
    team_name: "Charlotte Hornets",
    colors: ["Turquoise", "Purple"],
    players: {
      "Jeff Adrien"=>{
        number: 4,
        shoe: 18,
        points: 10,
        rebounds: 1,
        assists: 1,
        steals: 2,
        blocks: 7,
        slam_dunks: 2,
      },
      "Bismak Biyombo"=>{
        number: 0,
        shoe: 16,
        points: 12,
        rebounds: 4,
        assists: 7,
        steals: 7,
        blocks: 15,
        slam_dunks: 10,
      },
      "DeSagna Diop"=>{
        number: 2,
        shoe: 14,
        points: 24,
        rebounds: 12,
        assists: 12,
        steals: 4,
        blocks: 5,
        slam_dunks: 5,
      },
      "Ben Gordon"=>{
        number: 8,
        shoe: 15,
        points: 33,
        rebounds: 3,
        assists: 2,
        steals: 1,
        blocks: 1,
        slam_dunks: 0,
      },
      "Brendan Haywood"=>{
        number: 33,
        shoe: 15,
        points: 6,
        rebounds: 12,
        assists: 12,
        steals: 22,
        blocks: 5,
        slam_dunks: 12,
      },
    },
  },
}
end

# def num_points_scored(name)
#   game_hash.each do |location, attribute|
#     attribute.each do |attribute, info|
#       if attribute == :players
#         info.collect do |info, stat|
#           if info == name
#             return game_hash[location][attribute][info][:points]
#           end
#         end
#       end
#     end
#   end
# end

# num_points_scored("Jeff Adrien")

# def team_colors(team)
#   game_hash.each do |location, attribute|
#     attribute.each do |attribute, info|
#       if attribute == :team_name
#         if info==team
#           return game_hash[location][:colors]
#         end
#       end
#     end
#   end
# end

# team_colors("Brooklyn Nets")

# def team_names
#   teams=[]
#   game_hash.each do |location, attribute|
#     attribute.each do |attribute, info|
#       if attribute==:team_name
#         teams<<info
#       end
#     end
#   end
#   puts teams
# end

# team_names

# def player_numbers(team)
#   numbers=[]
#   game_hash.each do |location, attribute|
#     attribute.each do |attribute, info|
#       if attribute == :team_name
#         if info==team
#           game_hash[location][:players].each do |player,stat|
#             # binding.pry
#             numbers<<game_hash[location][:players][player][:number]
#           end
#         end
#       end
#     end
#   end
#   puts numbers.sort
# end

# player_numbers("Brooklyn Nets")

# def player_stats(player)
#   game_hash.each do |location, attribute|
#     attribute.each do |attribute, info|
#       if attribute == :players
#         info.each do |info, stat|
#           if info == player
#             return game_hash[location][attribute][info]
#           end
#         end
#       end
#     end
#   end
# end


# player_stats("Jeff Adrien")

#if x player has largest shoe size, return their rebounds

def big_shoe_rebounds
  shoe_sizes=[]
  player_names=[]
  game_hash.each do |location, attribute|
    attribute.each do |attribute, info|
      if attribute == :players
        info.each do |info, stats|
          stats.each do |stats, category|
            if stats == :shoe
              shoe_sizes<<category
              player_names<<info
            end
          end
        end
      end
    end
  end
  #player_names[shoe_sizes.index(shoe_sizes.max)]
  game_hash.each do |location, attribute|
    attribute.each do |attribute, info|
      if attribute == :players
        info.each do |info, stats|
          if info == player_names[shoe_sizes.index(shoe_sizes.max)]
            return game_hash[location][attribute][info][:rebounds]
          end
        end
      end
    end
  end
end

big_shoe_rebounds
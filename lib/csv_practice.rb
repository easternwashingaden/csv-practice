require 'csv'
require 'awesome_print'
def get_all_olympic_athletes(filename)
  all_athletes = []
  # [ID Name Height Team Year City Sport Event Medal]
  CSV.read(filename, headers: true).each do |athlete|
    all_athletes << {
      "ID" => athlete["ID"],
      "Name" => athlete["Name"],
      "Height" => athlete["Height"],
      "Team" => athlete["Team"],
      "City"  => athlete["City"],
      "Sport" => athlete["Sport"],
      "Event" => athlete["Event"],
      "Medal" => athlete["Medal"],
      "Year" => athlete["Year"]
    }
  end
  return all_athletes
end
# get_all_olympic_athletes('../data/athlete_events.csv')
def total_medals_per_team(olympic_data)
  winners = olympic_data.reject do |athlete|
    athlete["Medal"] == "NA"
  end
  team_medals = { }
  winners.each do |winner|
    current_team = winner["Team"]
    if team_medals[current_team]
      team_medals[current_team] += 1
    else
      team_medals[current_team] = 1
    end
  end
  return team_medals
end
def get_all_gold_medalists(olympic_data)
 gold_medalist = olympic_data.select do |athlete|
   athlete["Medal"] == "Gold"
 end
  return gold_medalist
end
 value = O
 country = ""
def get_all_gold_medalists(model_totals)
  highest_value = 0
  model_totals.max_by do |country, value|
    if value > highest_value
      highest_value = value
    end
    return {country: highest_value}
  end
end

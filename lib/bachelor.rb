def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant_data|
    contestant_data.each do |key, value|
      if contestant_data["status"] == "Winner"
      winner_name_array = contestant_data["name"].split(" ")
      winner_first = winner_name_array[0]
      return winner_first
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season_name, season_data|
    season_data.each do |contestant_data|
        if contestant_data["occupation"] == occupation
          return contestant_data["name"]
        end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season_name, season_data|
    season_data.each do |contestant_data|
        if contestant_data["hometown"] == hometown
          count = count += 1
        end
    end
  end
  return count
end

def get_occupation(data, hometown)
  data.each do |season_name, season_data|
    season_data.each do |contestant_data|
        if contestant_data["hometown"] == hometown
          return contestant_data["occupation"]
        end
    end
  end
end

def get_average_age_for_season(data, season)
  season_contestant_ages = []
  data[season].each do |contestant_data|
    season_contestant_ages << contestant_data["age"].to_i
  end

  (season_contestant_ages.inject{ |sum, el| sum + el }.to_f / season_contestant_ages.size).round

end

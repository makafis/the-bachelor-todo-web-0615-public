require 'pry'
def get_season_data(data, season)
  data[season]
end

def get_first_name_of_season_winner(data, season)
  season_data = get_season_data(data,season)
  winner = ""
  season_data.each do |array|
    
    if array["status"] == "Winner"
        winner = array["name"]
    end
  end
  winner = winner.split(" ")
  winner.first
end

def get_contestant_name(data, occupation)
  # code here
  return_data = ""
  season_data = data
  season_data.each do |key, value|
    value.each do |array|
    #go through array of each season and search "occupation" == occupation
        if array["occupation"] == occupation
          return_data = array["name"]
        end
    end
  end
  return_data
end

def count_contestants_by_hometown(data, hometown)
  # code here
  return_data = 0
  season_data = data
  season_data.each do |key, value|
    value.each do |array|
    #go through array of each season and search "occupation" == occupation
        if array["hometown"] == hometown
          return_data +=1
        end
    end
  end
  return_data
end

def get_occupation(data, hometown)
  # code here
    return_data = ""
  season_data = data
  season_data.each do |key, value|
    value.each do |array|
    #go through array of each season and search "occupation" == occupation
        if array["hometown"] == hometown
          return_data = array["occupation"]
        end
    end
  end
  return_data
end

def get_average_age_for_season(data, season)
  age_array = []
  season_data = get_season_data(data,season)
    season_data.each do |array|
      age_array << array["age"]
    end
  
  # code here
  age_array

  sum = 0
  age_array.each do |number|
    sum += number.to_f
  end
  x = sum / age_array.length
  x = x.round(0)
   x
end

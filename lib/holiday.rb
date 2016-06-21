require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
   
  # return the second element in the 4th of July array
  return holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above 
  # add the second argument, which is a supply, to BOTH the 
  # Christmas AND the New Year's arrays
  holiday_hash[:winter][:christmas]<<supply
  holiday_hash[:winter][:new_years]<<supply
  return holiday_hash
end
 

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day]<<supply
  return holiday_hash
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season]={holiday_name=>supply_array}
  return holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  return holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  puts"#{holiday_hash.keys[0].capitalize}:"
  puts"  #{holiday_hash[:winter].keys[0].capitalize}: #{holiday_hash[:winter].values[0].join(", ")}"
  puts"  #{holiday_hash[:winter].keys[1].to_s.split("_").map(&:capitalize).join(' ')}: #{holiday_hash[:winter].values[1].join(", ")}"
  puts"#{holiday_hash.keys[1].capitalize}:"
  puts"  #{holiday_hash[:summer].keys[0].to_s.split("_").map(&:capitalize).join(' ')}: #{holiday_hash[:summer].values[0].join(", ")}"
  puts"#{holiday_hash.keys[2].capitalize}:"
  puts"  #{holiday_hash[:fall].keys[0].to_s.split("_").map(&:capitalize).join(' ')}: #{holiday_hash[:fall].values[0].join(", ")}"
  puts"#{holiday_hash.keys[3].capitalize}:"
  puts"  #{holiday_hash[:spring].keys[0].to_s.split("_").map(&:capitalize).join(' ')}: #{holiday_hash[:spring].values[0].join(", ")}"
  
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
   bbq_events=[]
   holiday_hash.each do | keys, values|
    values.collect do | event, supplies|
      if supplies.include?("BBQ")
        bbq_events<<event
      end
    end
  end
  return bbq_events

end






:new_years.to_s.split("_").map(&:capitalize).join(' ')



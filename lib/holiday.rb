require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] << "Balloons"
  holiday_hash[:winter][:new_years] << "Balloons"
end


def add_supply_to_memorial_day(holiday_hash, supply)
  memorial_day_supplies = holiday_hash[:spring][:memorial_day] 
  memorial_day_supplies << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
holiday_hash.each do |season, data|
  season.to_s  
  puts "#{season.capitalize}:"
  data.each do |holiday, value|
    string_holiday = holiday.to_s
      string_holiday = string_holiday.gsub("_"," ").capitalize
      puts "  #{string_holiday.split.map(&:capitalize).join(' ')}: #{value.join(", ")}"
      
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
<<<<<<< HEAD
  bbq_holidays = []
  holiday_hash.each do |season, holiday_and_supplies|
    holiday_and_supplies.each do |holiday, supply|
      if supply.include? "BBQ"
        bbq_holidays << holiday
      end
    end
  end 
  return bbq_holidays
=======
  holiday_hash.each do |season, holiday_and_supplies|
    holiday_and_supplies.each do |holiday, supply|
      binding.pry
      if supply.include? "BBQ"
        puts "#{holiday}"
      end
    end
  end 
>>>>>>> 09f357dccf03ee6337cc60d3bb53f5a22527c89d
end

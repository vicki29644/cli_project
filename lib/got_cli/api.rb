require 'pry'
class Api
  BASE_URL = 'http://anapioficeandfire.com/api/houses/?limit=40'
  
  def self.get_got
    res = RestClient.get(BASE_URL) 
    data = JSON.parse(res.body)
    data.each do |got|        #http://anapioficeandfire.com/api/houses/1   "House Algood"  
 houses = got["houses"]  
 region = region
 coat_of_arms = coat_of_arms   #crearing intstances and saving it to the got class 
   
    Got.new(houses,)
    end
    end
  end
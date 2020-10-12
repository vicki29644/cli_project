require 'pry'
class Api
  BASE_URL = 'http://anapioficeandfire.com/api/houses/?limit=40'     #making the http call
  
  def self.get_got
    res = RestClient.get(BASE_URL) 
    data = JSON.parse(res.body)
    data.each do |got|       'http://anapioficeandfire.com/api/houses/1'   
    houses = got["name"]  
    region = got["region"]
    coat_of_arms = got["coatOfArms"]                        #creating instances and saving it to the got class 

    Got.new(houses,region,coat_of_arms)
    end
    #binding.pry
    end
  end
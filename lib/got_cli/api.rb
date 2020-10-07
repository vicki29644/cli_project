require 'pry'
class Api
  BASE_URL = 'http://anapioficeandfire.com/api/houses/?limit=40'
  
  def self.get_got
    res = RestClient.get(BASE_URL) 
    data = JSON.parse(res.body)

    #data['results'].each do |got|        http://anapioficeandfire.com/api/houses/1   "House Algood"  

    #houses = got['houses']
    #number = got['url'].split('/')[-1]

   # Got.new(houses, number)
   binding.pry 
    end
  end
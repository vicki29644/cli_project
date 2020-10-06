require 'pry'
class Api
    BASE_URL = 'https://anapioficeandfire.com/api/houses'
   # binding.pry

    def self.get_houses
      res = RestClient.get(BASE_URL)
      binding.pry
      
      data = JSON.parse(res.body)
      binding.pry
    end

end

class Got
   attr_accessor :houses, :region, :coat_of_arms
   @@all = []
   def initialize (houses, region, coat_of_arms)
      @houses = houses
      @region = region
      @coat of arms = coat_of_arms 
      @@all << self 
   end  
      
   def self.all
      @@all  
   end 
end
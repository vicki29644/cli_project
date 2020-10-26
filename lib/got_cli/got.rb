class Got
   
   attr_accessor :houses, :region, :coat_of_arms
   @@all = []
   
   def initialize (houses, region, coat_of_arms)
      @houses = houses
      @region = region
      @coat_of_arms = coat_of_arms 
      @@all << self
   
   end 
   
   def self.all
      @@all.sort_by do |got|  
   got.region
   end 


      
   end 
   


end



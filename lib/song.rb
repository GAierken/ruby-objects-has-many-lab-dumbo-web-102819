class Song 
   attr_accessor :name, :artist

   @@all = []

    def initialize (name)
       @name = name
    
      
       @@all << self
    end ### initialize


    def self.all
    @@all
    end ## all

    def artist_name
      if @artist
      
         @artist.name 
      else
          nil
      end ## if

    end ## aritist name


end ## Song class
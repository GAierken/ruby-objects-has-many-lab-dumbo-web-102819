require "pry"
class Post
attr_accessor :title, :author


@@all = []

def initialize (title)
    @title = title
   
    @@all << self
    
end # initialize


def self.all
    @@all
end ### all

def author_name
   if @author
      
      @author.name 
   else
       nil
   end ## if
   
end ## author name

end  ### Post class
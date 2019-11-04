class Author
    attr_accessor :name 



    def initialize (name)
        @name = name 
    end ## initialize


    def add_post (new_post)
    end ### add post
     
    def add_post_by_title (post_title)
    end ## post title

    def self.post_count
    end ### psot count


    def posts
        Post.all.select do |post_instance|
        post_instance.author == self
        end ## posts
    end ### posts

    def add_post (new_post)
        new_post.author = self
    end ## add post



    def add_post_by_title(new_title)
        new_post = Post.new(new_title)
        new_post.author = self


    end ## add post by title

    def self.post_count
        Post.all.count
    end ### post count
end  ### Author class
